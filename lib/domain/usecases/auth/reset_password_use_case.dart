import 'dart:io';

import 'package:dio/dio.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../request/auth/forget_password_request.dart';
import '../../request/auth/login/login_request.dart';
import '../../request/auth/reset_password_request.dart';

class ResetPasswordUseCase extends UseCase<String, ResetPasswordRequest> {
  final AuthRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  ResetPasswordUseCase(
      {required this.dataSource, required this.localDataSource});
  @override
  Future<Result<String, Exceptions>> call(ResetPasswordRequest params) async {
    try {
      final keyLanguage = localDataSource.getValue(LocalDataKeys.languageKey);

      final result = await dataSource.resetpassword(
          resetPasswordRequest: params, language: keyLanguage);

      return Result.success(data: result.response.data["message"]);
    } on DioException catch (ex) {
      return Result.failure(
          error: Exceptions.other(ex.response!.data["message"]));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
