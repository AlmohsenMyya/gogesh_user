import 'dart:async';

import 'package:commercial_directory_users/core/paginated/ads/ads_paginated.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/paginated/offers/offer_paginated.dart';
import '../../../domain/entities/ad/ad_entity.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../response/ad_response.dart';
import '../../response/offer_details_response.dart';

part 'ads_remote_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class AdsRemoteDataSource {
  factory AdsRemoteDataSource(Dio dio, {String baseUrl}) = _AdsRemoteDataSource;

  @GET("/customer/ads")
  Future<HttpResponse<AdsPaginated>> getAds(
      {@Queries() required Map<String, dynamic> queries});

  @GET("/customer/ads/{id}")
  Future<HttpResponse<AdResponse>> getAdDetails(@Path() int id);

  @GET("/ads/home-banner")
  Future<HttpResponse<AdsPaginated>> getHomeBannerAds(
      {@Queries() required Map<String, dynamic> queries});
  @GET("/ads/sectors-banner")
  Future<HttpResponse<AdsPaginated>> getSectorsBannerAds(
      {@Queries() required Map<String, dynamic> queries});
  @GET("/ads/sector-banner")
  Future<HttpResponse<AdsPaginated>> getSectorBannerAds(
      {@Queries() required Map<String, dynamic> queries});
  @GET("/ads/search-banner")
  Future<HttpResponse<AdsPaginated>> getSearchBannerAds(
      {@Queries() required Map<String, dynamic> queries});
  @GET("/ads/home-flash")
  Future<HttpResponse<AdResponse>> getHomeFlashAd();
  @GET("/ads/sector-flash")
  Future<HttpResponse<AdResponse>> getSectorFlashAd(
      {@Query("sector") required int sectorID});
}
