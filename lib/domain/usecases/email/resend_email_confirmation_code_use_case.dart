import 'package:commercial_directory_users/data/remote_data_source/auth_data_source/auth_data_source.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../request/email/resend_email_confirmation_code.dart';

class ResendEmailConfirmationCodeUseCase
    implements UseCase<void, ResendEmailConfirmationCode> {
  ResendEmailConfirmationCodeUseCase(this._remoteDataSource);
  final AuthRemoteDataSource _remoteDataSource;
  @override
  Future<Result<void, Exceptions>> call(params) async {
    try {
      await _remoteDataSource.resendEmailConfirmationCode(
          resendEmailConfirmationCode: params);
      return const Result.success();
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
