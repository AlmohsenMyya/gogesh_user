import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_entity.freezed.dart';
part 'city_entity.g.dart';

@freezed
class CityEntity with _$CityEntity {
  factory CityEntity({required List<Datacity>? data}) = _CityEntity;

  factory CityEntity.fromJson(Map<String, dynamic> json) =>
      _$CityEntityFromJson(json);
}

@JsonSerializable()
class Datacity {
  const Datacity({
    required this.id,
    required this.name,
    required this.countryId,
  });

  final int? id;
  @JsonKey(name: "country_id")
  final int? countryId;
  final String? name;

  factory Datacity.fromJson(Map<String, dynamic> json) =>
      _$DatacityFromJson(json);
  Map<String, dynamic> toJson() => _$DatacityToJson(this);
}
