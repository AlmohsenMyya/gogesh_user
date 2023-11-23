import 'dart:io';

import 'package:commercial_directory_users/core/paginated/ads/ads_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';
import 'package:commercial_directory_users/domain/entities/ad/ad_entity.dart';

import 'package:commercial_directory_users/domain/repositories/ads_repository.dart';
import 'package:dio/dio.dart';

import '../../core/excptions/exceptions.dart';
import '../remote_data_source/ads_data_source/ads_remote_data_source.dart';

class AdRepositoryImpl implements AdRepository {
  final AdsRemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  AdRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Result<AdsPaginated, Exceptions>> fetchAds(
      Map<String, dynamic> filter) async {
    try {
      final res = await _remoteDataSource.getAds(queries: filter);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<AdsPaginated, Exceptions>> fetchHomeBannerAds(
      Map<String, dynamic> queries) async {
    try {
      final res = await _remoteDataSource.getHomeBannerAds(queries: queries);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<Ad, Exceptions>> fetchHomeFlachAds() async {
    try {
      final res = await _remoteDataSource.getHomeFlashAd();
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<AdsPaginated, Exceptions>> fetchSearchBannerAds(
      Map<String, dynamic> queries) async {
    try {
      final res = await _remoteDataSource.getSearchBannerAds(queries: queries);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<AdsPaginated, Exceptions>> fetchSectorBannerAds(
      Map<String, dynamic> queries) async {
    try {
      final res = await _remoteDataSource.getSectorBannerAds(queries: queries);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<Ad, Exceptions>> fetchSectorFlachAds(int id) async {
    try {
      final res = await _remoteDataSource.getSectorFlashAd(sectorID: id);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<AdsPaginated, Exceptions>> fetchSectorsBannerAds(
      Map<String, dynamic> queries) async {
    try {
      final res = await _remoteDataSource.getSectorsBannerAds(queries: queries);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<Ad, Exceptions>> adDetails(int id) async {
    try {
      final res = await _remoteDataSource.getAdDetails(id);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }
}
