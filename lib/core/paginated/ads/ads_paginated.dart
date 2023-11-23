import 'dart:async';
import 'dart:async';

import 'package:commercial_directory_users/domain/entities/ad/ad_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/offer/offer_entity.dart';
import '../meta.dart';

part 'ads_paginated.freezed.dart';
part 'ads_paginated.g.dart';

FutureOr<AdsPaginated> deserializeAdsPaginated(Map<String, dynamic> json) =>
    AdsPaginated.fromJson(json);

@freezed
class AdsPaginated with _$AdsPaginated {
  const factory AdsPaginated({required List<Ad> data, required Meta meta}) =
      _AdsPaginated;
  factory AdsPaginated.fromJson(Map<String, dynamic> json) =>
      _$AdsPaginatedFromJson(json);
}
