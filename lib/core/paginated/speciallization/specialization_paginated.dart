import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/specialization_entity.dart';
import '../meta.dart';

part 'specialization_paginated.freezed.dart';
part 'specialization_paginated.g.dart';

FutureOr<SpecializationPaginated> deserializeSpecializationPaginated(
        Map<String, dynamic> json) =>
    SpecializationPaginated.fromJson(json);

@freezed
class SpecializationPaginated with _$SpecializationPaginated {
  const factory SpecializationPaginated(
      {required List<Specialization> data,
      required Meta meta}) = _SpecializationPaginated;
  factory SpecializationPaginated.fromJson(Map<String, dynamic> json) =>
      _$SpecializationPaginatedFromJson(json);
}
