import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../domain/entities/profile_entity/profile_response.dart';
import '../../../domain/request/profile/edit_password_request.dart';
import '../../../domain/request/profile/edit_profile_request.dart';

part 'profile_remote_data_source.g.dart';

@RestApi(
  baseUrl: "https://api.gogesh.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class ProfileRemoteDataSource {
  factory ProfileRemoteDataSource(Dio dio, {String baseUrl}) =
      _ProfileRemoteDataSource;

  @GET("/customer/account")
  Future<HttpResponse<ProfileResponse>> getProfile();

  @POST('/customer/editAccount')
  Future<HttpResponse> editProfile({
    @Body() required EditProfileRequest body,
  });

  @POST("auth/customer/updatePassword")
  Future<HttpResponse> changePassword({
    @Body() required EditPasswordRequest body,
  });
}

ProfileResponse deserializeProfileResponse(Map<String, dynamic> json) =>
    ProfileResponse.fromJson(json);
