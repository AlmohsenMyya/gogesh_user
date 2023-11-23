import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../entities/profile_entity/profile_response.dart';
import '../../request/auth/register/register_social_request.dart';

class SignInGoogleUseCase extends UseCase<UserCredential, NoParams> {
  SignInGoogleUseCase(
      {required this.dataSource, required this.localDataSource});
  final AuthRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  @override
  Future<Result<UserCredential, Exceptions>> call(
    NoParams params,
  ) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // final response =
      //     await FirebaseAuth.instance.signInWithCredential(credential);
      final result = await dataSource.registerLoginCallback(
          registerGoogleRequest: RegisterSocialRequest(
              fcmToken: await FirebaseMessaging.instance.getToken() ?? "",
              accessToken: credential.accessToken!,
              provider: "google"));

      final profile = result.data["customer"];
      await localDataSource.setValue<ProfileEntity>(
          LocalDataKeys.profile,
          ProfileEntity(
              id: profile["id"],
              firstName: profile["first_name"],
              createdAt: profile["created_at"],
              lastName: profile["last_name"],
              email: profile["email"],
              phone: profile["phone"],
              active: profile["active"],
              status: profile["status"],
              pic: profile["pic"],
              country: profile['country'],
              city: profile['city'],
              region: profile['region'],
              completed: profile['completed']));
      sl<Dio>().options.headers.addEntries([
        MapEntry("Authorization", "Bearer ${result.response.data['token']}")
      ]);
      await localDataSource.setValue(
          LocalDataKeys.accessToken, result.response.data['token']);
      await localDataSource.setValue(LocalDataKeys.loggedIn, true);
      await localDataSource.setValue(
          LocalDataKeys.userType, UserType.authenticated);

      return Result.success();
    } on DioException catch (ex) {
      switch (ex.response?.statusCode ?? 0) {
        case 401:
          {
            return Result.failure(
                error:
                    Exceptions.passwordInvalude(ex.response!.data["message"]));
          }
        case 422:
          {
            return Result.failure(
                error: Exceptions.emailInvalude(ex.response!.data["message"]));
          }
      }
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }
      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (ex) {
      return Result.failure(error: Exceptions.other(ex.message));
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_with_wrong"));
    }
    return const Result.failure(error: Exceptions.other("something_with_tron"));
  }
}
