import 'package:commercial_directory_users/core/paginated/common_question/common_question_paginated.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'common_question_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class CommonQuestionRemoteDataSource {
  factory CommonQuestionRemoteDataSource(Dio dio, {String baseUrl}) =
      _CommonQuestionRemoteDataSource;

  @GET("/common-questions")
  Future<HttpResponse<CommonQuestionPaginated>> getCommonQuestion(
      {@Query("type") required String type});
}
