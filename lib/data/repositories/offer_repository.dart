import 'dart:io';

import 'package:commercial_directory_users/app/locator.dart';
import 'package:commercial_directory_users/core/paginated/offers/offer_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/offers_data_source/offers_remote_data_source.dart';
import 'package:commercial_directory_users/data/response/offer_details_response.dart';
import 'package:commercial_directory_users/domain/entities/offer/offer_entity.dart';
import 'package:commercial_directory_users/domain/repositories/offer_repository.dart';
import 'package:device_imei/device_imei.dart';
import 'package:dio/dio.dart';

import '../../core/excptions/exceptions.dart';

class OfferRepositoryImpl implements OfferRepository {
  final OffersRemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  OfferRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Result<void, Exceptions>> addToFavorite(int id) async {
    try {
      final res = await _remoteDataSource.addOfferToFav({"offer_id": id});
      if (res.response.statusCode!.isOk) {
        return const Result.success();
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }

  @override
  Future<Result<OfferPaginated, Exceptions>> fetchOffers(
      Map<String, dynamic> filter) async {
    try {
      final res = await _remoteDataSource.getOffers(queries: filter);
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
  Future<Result<OfferDetailsResponse, Exceptions>> offerDetails(int id) async {
    try {
      final isGust = sl<LocalDataSource>().getValue(LocalDataKeys.userType) ==
          UserType.gust;
      // String? gustId = await DeviceImei().getDeviceImei();
      final res = await _remoteDataSource.getOfferDetails(id, gustId: null);
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
  Future<Result<void, Exceptions>> getOffersBySector(int id) {
    // TODO: implement getOffersBySector
    throw UnimplementedError();
  }

  @override
  Future<Result<OfferPaginated, Exceptions>> fetchFavoriteOffers(
      int page) async {
    try {
      final res = await _remoteDataSource.fetchFavorites(page: page);
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
  Future<Result<OfferDetailsResponse, Exceptions>> removeOfferFromFavorite(
      int id) async {
    try {
      final res = await _remoteDataSource.removeOfferFromFav(id);
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
  Future<Result<OfferPaginated, Exceptions>> getRequestedOffers(
      Map<String, dynamic> filter) async {
    try {
      final res = await _remoteDataSource.fetchRequestedOffers(queries: filter);
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

extension HTTPRESPONSE on int {
  bool get isOk => this == 200;
}
