import 'package:commercial_directory_users/core/paginated/offers/offer_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';

import '../../core/excptions/exceptions.dart';
import '../../data/response/offer_details_response.dart';
import '../entities/offer/offer_entity.dart';

abstract class OfferRepository {
  Future<Result<OfferPaginated, Exceptions>> fetchOffers(
      Map<String, dynamic> filter);
  Future<Result<OfferPaginated, Exceptions>> fetchFavoriteOffers(int page);
  Future<Result<OfferDetailsResponse, Exceptions>> offerDetails(int id);
  Future<Result<OfferDetailsResponse, Exceptions>> removeOfferFromFavorite(
      int id);
  Future<Result<void, Exceptions>> addToFavorite(int id);
  Future<Result<void, Exceptions>> getOffersBySector(int id);
  Future<Result<OfferPaginated, Exceptions>> getRequestedOffers(
      Map<String, dynamic> filter);
}
