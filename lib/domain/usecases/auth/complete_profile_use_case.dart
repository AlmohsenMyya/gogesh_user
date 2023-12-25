import 'dart:io';

import 'package:dio/dio.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../entities/profile_entity/profile_response.dart';
import '../../request/auth/register/register_customer.dart';

class CompleteProfileUseCase implements UseCase<String, RegisterCustomer> {
  CompleteProfileUseCase({
    required this.dataSource,
    required this.localDataSource,
  });
  final AuthRemoteDataSource dataSource;
  final LocalDataSource localDataSource;
  @override
  Future<Result<String, Exceptions>> call(RegisterCustomer params) async {
    try {
      final data = FormData.fromMap(params.toJson());
      data.fields.removeWhere((element) => element.key == "image");
      if (params.image != null) {
        data.files.add(
            MapEntry("image", await MultipartFile.fromFile(params.image!)));
      }

      final result = await dataSource.completeProfile(
        completeProfile: data,
      );
      final profile = result.data["customer"];
      await localDataSource.setValue<ProfileEntity>(
          LocalDataKeys.profile,
          ProfileEntity(
            gender:  profile['gender'],
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
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
