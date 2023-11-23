import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_entity.freezed.dart';
part 'service_entity.g.dart';

@freezed
class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    required int id,
    required String name,
    @JsonKey(name: "has_sections") required bool hasSections,
  }) = _ServiceEntity;

  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);
}
