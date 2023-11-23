import 'dart:io';

import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/privacy_policy_data_source/privacy_policy_data_source.dart';
import 'package:commercial_directory_users/domain/repositories/privacy_policy_repository.dart';
import 'package:dio/dio.dart';

import '../../core/excptions/exceptions.dart';

class PrivacyRepositoryImpl implements PrivacyRepository {
  final PrivacyPolicyRemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  PrivacyRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Result<String, Exceptions>> fetchPrivacy() async {
    try {
 
      final res = await _remoteDataSource.getPrivacyPolicy(
      );
      if (res.response.statusCode!.isOk) {
        return Result.success(data: "");
      }
    } on DioException catch (ex) {
      _localDataSource.setValue(
          LocalDataKeys.privacyPolicy, " السلام عليكم ورحمة الله تعالى وبركاته أخ ماجد كيف الامور تمام");
      var read = _localDataSource.getValue(LocalDataKeys.privacyPolicy);
      return Result.success(data: read);

      // if (ex.error is SocketException) {
      //   return Result.success(data: read);
      // }
    }
    // TODO: implement fetchOffers
    throw UnimplementedError();
  }
  // TODO: implement fetchPrivcy
}

extension HTTPRESPONSE on int {
  bool get isOk => this == 200;
}
