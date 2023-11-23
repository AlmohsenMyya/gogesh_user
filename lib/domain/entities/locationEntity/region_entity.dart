import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_entity.freezed.dart';
part 'region_entity.g.dart';

@freezed
class RegionEntity with _$RegionEntity {
  factory RegionEntity({required List<DataRegion>? data}) = _RegionEntity;

  factory RegionEntity.fromJson(Map<String, dynamic> json) =>
      _$RegionEntityFromJson(json);
}

@JsonSerializable()
class DataRegion {
  const DataRegion(
      {required this.id, required this.name, required this.cityId});

  final int? id;
  final String? name;
  @JsonKey(name: "city_id")
  final int? cityId;

  factory DataRegion.fromJson(Map<String, dynamic> json) =>
      _$DataRegionFromJson(json);
  Map<String, dynamic> toJson() => _$DataRegionToJson(this);
}
