import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/service/service_entity.dart';
import '../meta.dart';
part 'service_paginated.freezed.dart';
part 'service_paginated.g.dart';

FutureOr<ServicePaginated> deserializeServicePaginated(
        Map<String, dynamic> json) =>
    ServicePaginated.fromJson(json);

@freezed
class ServicePaginated with _$ServicePaginated {
  const factory ServicePaginated(
      {required List<ServiceEntity> data,
      required Meta? meta}) = _ServicePaginated;
  factory ServicePaginated.fromJson(Map<String, dynamic> json) =>
      _$ServicePaginatedFromJson(json);
}
