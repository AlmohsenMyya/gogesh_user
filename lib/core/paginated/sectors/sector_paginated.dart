import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/sector_entity.dart';
import '../meta.dart';

part 'sector_paginated.freezed.dart';
part 'sector_paginated.g.dart';

FutureOr<SectorPaginated> deserializeSectorPaginated(
        Map<String, dynamic> json) =>
    SectorPaginated.fromJson(json);

@freezed
class SectorPaginated with _$SectorPaginated {
  const factory SectorPaginated(
      {required List<Sector> data, required Meta? meta}) = _SectorPaginated;
  factory SectorPaginated.fromJson(Map<String, dynamic> json) =>
      _$SectorPaginatedFromJson(json);
}
