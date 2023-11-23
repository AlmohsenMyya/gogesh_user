import 'dart:async';

import 'package:commercial_directory_users/domain/entities/season_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';

part 'occasion_paginated.freezed.dart';
part 'occasion_paginated.g.dart';

FutureOr<OccasionPaginated> deserializeOccasionPaginated(
        Map<String, dynamic> json) =>
    OccasionPaginated.fromJson(json);

@freezed
class OccasionPaginated with _$OccasionPaginated {
  const factory OccasionPaginated(
      {required List<SeasonAndOccasion> data,
      required Meta? meta}) = _OccasionPaginated;
  factory OccasionPaginated.fromJson(Map<String, dynamic> json) =>
      _$OccasionPaginatedFromJson(json);
}
