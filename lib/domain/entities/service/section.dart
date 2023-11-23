import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class SectionEntity with _$SectionEntity {
  const factory SectionEntity({
    required int id,
    required String name,
    @JsonKey(name: "services_id") required int serviceId,
  }) = _SectionEntity;

  factory SectionEntity.fromJson(Map<String, dynamic> json) =>
      _$SectionEntityFromJson(json);
}
