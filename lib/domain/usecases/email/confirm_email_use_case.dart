import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/auth_data_source/auth_data_source.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../request/email/confirm_email_request.dart';

class ConfirmEmailUseCase implements UseCase<void, ConfirmEmailRequest> {
  ConfirmEmailUseCase(this._remoteDataSource, this._localDataSource);
  final LocalDataSource _localDataSource;
  final AuthRemoteDataSource _remoteDataSource;
  @override
  Future<Result<void, Exceptions>> call(ConfirmEmailRequest params) async {
    try {
      await _remoteDataSource.confirmEmail(confirmEmailRequest: params);
      return const Result.success();
    } on DioException catch (e) {
      if (e.response?.statusCode! == 422) {
        return Result.failure(
            error: Exceptions.invalidConfirmationCode(
                "invalid_confirmation_code".tr()));
      }
      if (e.response?.statusCode! == 400) {
        return Result.failure(
            error: Exceptions.invalidConfirmationCode("code_expired".tr()));
      }
    } catch (e) {
      return const Result.failure();
    }
    return const Result.failure();
  }
}
