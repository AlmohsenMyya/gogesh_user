import 'dart:async';

import 'package:commercial_directory_users/core/paginated/activity/activity_paginated.dart';
import 'package:commercial_directory_users/core/paginated/occasion/occasion_paginated.dart';
import 'package:commercial_directory_users/core/paginated/sectors/section_paginated.dart';
import 'package:commercial_directory_users/core/paginated/service/service_paginated.dart';
import 'package:commercial_directory_users/core/paginated/speciallization/specialization_paginated.dart';
import 'package:commercial_directory_users/domain/entities/activity_entity.dart';
import 'package:commercial_directory_users/domain/entities/season_entity.dart';
import 'package:commercial_directory_users/domain/entities/specialization_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../core/paginated/sectors/sector_paginated.dart';
import '../../../domain/entities/sector_entity.dart';

part 'categories_data_source.g.dart';

@RestApi(
  baseUrl: "https://api.gogesh.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class CategoriesRemoteDataSource {
  factory CategoriesRemoteDataSource(Dio dio, {String baseUrl}) =
      _CategoriesRemoteDataSource;

  @GET("/sectors")
  Future<HttpResponse<SectorPaginated>> getSectors(
      {@Queries() required Map<String, dynamic> queries});

  @GET("/activities")
  Future<HttpResponse<ActivityPaginated>> getActivities();

  @GET("/specializations")
  Future<HttpResponse<SpecializationPaginated>> getSpecialities();

  @GET("/seasons")
  Future<HttpResponse<OccasionPaginated>> getSeasons();

  @GET("/services")
  Future<HttpResponse<ServicePaginated>> getServices();
  @GET("/sections")
  Future<HttpResponse<SectionPaginated>> getSectionByService();
}

FutureOr<List<Sector>> deserializeSectorList(List<Map<String, dynamic>> list) =>
    list.map((e) => Sector.fromJson(e)).toList();
FutureOr<List<Activity>> deserializeActivityList(
        List<Map<String, dynamic>> list) =>
    list.map((e) => Activity.fromJson(e)).toList();
FutureOr<List<Specialization>> deserializeSpecializationList(
        List<Map<String, dynamic>> list) =>
    list.map((e) => Specialization.fromJson(e)).toList();
FutureOr<List<SeasonAndOccasion>> deserializeSeasonAndOccasionList(
        List<Map<String, dynamic>> list) =>
    list.map((e) => SeasonAndOccasion.fromJson(e)).toList();
