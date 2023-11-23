import 'package:commercial_directory_users/core/extensions/string_extensions.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../entities/profile_entity/profile_response.dart';
import '../../request/auth/register/register_social_request.dart';

class SignInWithAppleUseCase implements UseCase<void, NoParams> {
  final AuthRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  SignInWithAppleUseCase(
      {required this.dataSource, required this.localDataSource});

  @override
  Future<Result<void, Exceptions>> call(params) async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      credential.log();
      final result = await dataSource.registerLoginCallback(
          registerGoogleRequest: RegisterSocialRequest(
              fcmToken: await FirebaseMessaging.instance.getToken() ?? "",
              accessToken: credential.identityToken!,
              provider: "apple"));
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
      return const Result.success();
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
