// import 'dart:io';

import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/dio.dart';

import '../../../domain/entities/locationEntity/city_entity.dart';
import '../../../domain/entities/locationEntity/country_entity.dart';
import '../../../domain/entities/locationEntity/region_entity.dart';
import '../../../domain/request/auth/forget_password_request.dart';
import '../../../domain/request/auth/login/login_request.dart';
import '../../../domain/request/auth/password_check_request.dart';
import '../../../domain/request/auth/register/register_customer.dart';
import '../../../domain/request/auth/register/register_social_request.dart';
import '../../../domain/request/auth/reset_password_request.dart';
import '../../../domain/request/email/confirm_email_request.dart';
import '../../../domain/request/email/resend_email_confirmation_code.dart';
import '../profile_data_source/profile_remote_data_source.dart';

part 'auth_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;

  @GET("/countries")
  Future<HttpResponse<CountryEntity>> getCountry();

  @GET("/cities")
  Future<HttpResponse<CityEntity>> getCity();

  @GET("/regions")
  Future<HttpResponse<RegionEntity>> getRegion();

  @POST('/auth/customer/register')
  Future<HttpResponse> register({
    @Body() required FormData registerPrimaryRequest,
  });
  @POST('/auth/customer/complete-profile')
  Future<HttpResponse> completeProfile({
    @Body() required FormData completeProfile,
  });
  @POST('/auth/customer/login')
  Future<HttpResponse> login({
    @Body() required LoginRequest loginRequest,
  });
  @POST('/auth/customer/forgot-password')
  Future<HttpResponse> forgetpassword({
    @Header("Accept-Language") required String language,
    @Body() required ForgetPasswordRequest forgetPasswordRequest,
  });

  @POST('/auth/password/check')
  Future<HttpResponse> passwordcheck({
    @Header("Accept-Language") required String language,
    @Body() required PasswordCheckRequest code,
  });

  @POST('/auth/password/customer/reset')
  Future<HttpResponse> resetpassword({
    @Header("Accept-Language") required String language,
    @Body() required ResetPasswordRequest resetPasswordRequest,
  });

  @POST('/auth/customer/callback')
  Future<HttpResponse> registerLoginCallback({
    @Body() required RegisterSocialRequest registerGoogleRequest,
  });

  @POST('/email/verify')
  Future<HttpResponse> confirmEmail({
    @Body() required ConfirmEmailRequest confirmEmailRequest,
  });

  @POST('/email/resend')
  Future<HttpResponse> resendEmailConfirmationCode({
    @Body() required ResendEmailConfirmationCode resendEmailConfirmationCode,
  });
}

CountryEntity deserializeCountryEntity(Map<String, dynamic> json) =>
    CountryEntity.fromJson(json);
CityEntity deserializeCityEntity(Map<String, dynamic> json) =>
    CityEntity.fromJson(json);

RegionEntity deserializeRegionEntity(Map<String, dynamic> json) =>
    RegionEntity.fromJson(json);
