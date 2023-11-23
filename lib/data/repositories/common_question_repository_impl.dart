import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/paginated/common_question/common_question_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';
import 'package:dio/dio.dart';

import '../../domain/repositories/common_question_repository.dart';
import '../remote_data_source/common_question_data_source/common_question_data_source.dart';

class CommonQuestionRepositoryImpl implements CommonQuestionRepository {
  final CommonQuestionRemoteDataSource _remoteDataSource;

  CommonQuestionRepositoryImpl(this._remoteDataSource);
  @override
  Future<Result<CommonQuestionPaginated, Exceptions>> getCommonQuestion(
      String type) async {
    try {
      final res = await _remoteDataSource.getCommonQuestion(type: type);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }
}
