import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/profile_data_source/profile_remote_data_source.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/domain/repositories/profile_repository.dart';

import '../../domain/request/profile/edit_password_request.dart';
import '../../domain/request/profile/edit_profile_request.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  ProfileRepositoryImpl(
      {required this.dataSource, required this.localDataSource});

  @override
  Future<Result<ProfileResponse, Exceptions>> fetchProfile() async {
    try {
      final HttpResponse<ProfileResponse> result =
          await dataSource.getProfile();

      await localDataSource.setValue<ProfileEntity>(
          LocalDataKeys.profile, result.data.data);

      return Result.success(data: result.data);
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        ProfileEntity profile = localDataSource.getValue(LocalDataKeys.profile);

        return Result.success(
          data: ProfileResponse(data: profile),
        );
      }
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<String, Exceptions>> editProfile(
      EditProfileRequest params) async {
    try {
      final result = await dataSource.editProfile(
        body: params,
      );
      return const Result.success();
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return Result.failure(error: Exceptions.other(ex.message));
      }
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<String, Exceptions>> changePassword(
      EditPasswordRequest params) async {
    try {
      final result = await dataSource.changePassword(body: params);
      return const Result.success(data: '');
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(
            error: Exceptions.network("connect_to_internet_and_try_again"));
      }
      return const Result.failure(
          error: Exceptions.other("something_went_error"));
    }
  }
}

extension HTTPRESPONSE on int {
  bool get isOk => this == 200;
}
