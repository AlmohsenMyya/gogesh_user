import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/offer/offer_entity.dart';

part 'offer_details_response.freezed.dart';
part 'offer_details_response.g.dart';

FutureOr<OfferDetailsResponse> deserializeOfferDetailsResponse(
        Map<String, dynamic> json) =>
    OfferDetailsResponse.fromJson(json);

@freezed
class OfferDetailsResponse with _$OfferDetailsResponse {
  const factory OfferDetailsResponse(
      {required Offer data,
      @JsonKey(name: "related_results")
      required List<Offer> relatedResults}) = _OfferDetailsResponse;

  factory OfferDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OfferDetailsResponseFromJson(json);
}
