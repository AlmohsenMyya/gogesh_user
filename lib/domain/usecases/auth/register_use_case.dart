import 'dart:io';

import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import 'package:retrofit/dio.dart';

import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../request/auth/register/register_customer.dart';

class RegisterUseCase extends UseCase<String, RegisterCustomer> {
  final AuthRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  RegisterUseCase({
    required this.dataSource,
    required this.localDataSource,
  });

  @override
  Future<Result<String, Exceptions>> call(RegisterCustomer params) async {
    try {
      final data = FormData.fromMap(params.toJson());
      data.fields.removeWhere((element) => element.key == "image");
      data.fields.add(MapEntry(
          "fcm_token", await FirebaseMessaging.instance.getToken() ?? ""));
      if (params.image != null) {
        data.files.add(
            MapEntry("image", await MultipartFile.fromFile(params.image!)));
      }

      final result = await dataSource.register(
        registerPrimaryRequest: data,
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
              completed: profile['completed']));
      await localDataSource.setValue(
          LocalDataKeys.accessToken, result.response.data['token']);
      sl<Dio>().options.headers.addEntries([
        MapEntry("Authorization", "Bearer ${result.response.data['token']}")
      ]);

      await localDataSource.setValue(LocalDataKeys.loggedIn, true);
      await localDataSource.setValue(
          LocalDataKeys.userType, UserType.authenticated);

      return const Result.success();
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
    }
  // catch (e) {
    //   return const Result.failure(
    //       error: Exceptions.other("something_went_wrong"));
    // }
  }
}
