

import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/service/section.dart';
import '../../../domain/entities/service/service_entity.dart';
import '../meta.dart';

part 'section_paginated.freezed.dart';
part 'section_paginated.g.dart';

FutureOr<SectionPaginated> deserializeSectionPaginated(
    Map<String, dynamic> json) =>
    SectionPaginated.fromJson(json);

@freezed
class SectionPaginated with _$SectionPaginated {
  const factory SectionPaginated(
      {required List<SectionEntity> data,
        required Meta? meta}) = _SectionPaginated;
  factory SectionPaginated.fromJson(Map<String, dynamic> json) =>
      _$SectionPaginatedFromJson(json);
}