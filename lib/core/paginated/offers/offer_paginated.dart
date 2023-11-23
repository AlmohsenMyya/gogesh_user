import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/offer/offer_entity.dart';
import '../meta.dart';

part 'offer_paginated.freezed.dart';
part 'offer_paginated.g.dart';

FutureOr<OfferPaginated> deserializeOfferPaginated(Map<String, dynamic> json) =>
    OfferPaginated.fromJson(json);

@freezed
class OfferPaginated with _$OfferPaginated {
  const factory OfferPaginated(
      {required List<Offer> data, required Meta meta}) = _OfferPaginated;
  factory OfferPaginated.fromJson(Map<String, dynamic> json) =>
      _$OfferPaginatedFromJson(json);
}
