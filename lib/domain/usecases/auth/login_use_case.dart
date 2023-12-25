import 'dart:io';

import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../request/auth/login/login_request.dart';

class LoginUseCase extends UseCase<String, LoginRequest> {
  final AuthRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  LoginUseCase({required this.dataSource, required this.localDataSource});

  @override
  Future<Result<String, Exceptions>> call(LoginRequest params) async {
    try {
      final request = LoginRequest(
          email: params.email,
          password: params.password,
          fcmToken: await FirebaseMessaging.instance.getToken() ?? "");
      final result = await dataSource.login(
        loginRequest: request,
      );
      final profile = result.data["user"];
      await localDataSource.setValue<ProfileEntity>(
          LocalDataKeys.profile,
          ProfileEntity(
            gender: profile['gender'],
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
            completed: profile["completed"],
          ));
      await localDataSource.setValue(
          LocalDataKeys.accessToken, result.response.data['token']);
      sl<Dio>().options.headers.addEntries([
        MapEntry("Authorization", "Bearer ${result.response.data['token']}")
      ]);

      await localDataSource.setValue(LocalDataKeys.loggedIn, true);
      await localDataSource.setValue(
          LocalDataKeys.userType, UserType.authenticated);

      return const Result.success(data: '');
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
        error: Exceptions.other(
          ex.response?.data["message"],
        ),
      );
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      print('object');
      print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
