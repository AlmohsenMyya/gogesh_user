import 'package:commercial_directory_users/core/paginated/ads/ads_paginated.dart';
import 'package:commercial_directory_users/core/paginated/offers/offer_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';

import '../../core/excptions/exceptions.dart';
import '../../data/response/offer_details_response.dart';
import '../entities/ad/ad_entity.dart';
import '../entities/offer/offer_entity.dart';

abstract class AdRepository {
  Future<Result<AdsPaginated, Exceptions>> fetchAds(
      Map<String, dynamic> filter);

  Future<Result<AdsPaginated, Exceptions>> fetchHomeBannerAds(
      Map<String, dynamic> queries);
  Future<Result<AdsPaginated, Exceptions>> fetchSectorsBannerAds(
      Map<String, dynamic> queries);
  Future<Result<AdsPaginated, Exceptions>> fetchSectorBannerAds(
      Map<String, dynamic> queries);
  Future<Result<Ad, Exceptions>> fetchSectorFlachAds(int id);
  Future<Result<Ad, Exceptions>> fetchHomeFlachAds();
  Future<Result<AdsPaginated, Exceptions>> fetchSearchBannerAds(
      Map<String, dynamic> queries);
  Future<Result<Ad, Exceptions>> adDetails(int id);
}
