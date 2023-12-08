import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/paginated/offers/offer_paginated.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../response/offer_details_response.dart';

part 'offers_remote_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class OffersRemoteDataSource {
  factory OffersRemoteDataSource(Dio dio, {String baseUrl}) =
      _OffersRemoteDataSource;

  @GET("/customer/offers")
  Future<HttpResponse<OfferPaginated>> getOffers(
      {@Queries() required Map<String, dynamic> queries});

  @GET("/offers/requested")
  Future<HttpResponse<OfferPaginated>> fetchRequestedOffers(
      {@Queries() required Map<String, dynamic> queries});

  @GET("/favorites/offer")
  Future<HttpResponse<OfferPaginated>> fetchFavorites(
      {@Query("page") required int page});

  @GET("/customer/offers/{id}")
  Future<HttpResponse<OfferDetailsResponse>> getOfferDetails(@Path() int id,
      {@Query("gust_id") String? gustId});

  @POST("/favorites/offer")
  Future<HttpResponse> addOfferToFav(@Body() Map<String, dynamic> body);

  @DELETE("/favorites/offer/{id}")
  Future<HttpResponse> removeOfferFromFav(@Path() int id);
}
