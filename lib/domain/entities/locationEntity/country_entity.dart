import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity.freezed.dart';
part 'country_entity.g.dart';

@freezed
class CountryEntity with _$CountryEntity {
  factory CountryEntity({  required List<Datacountry> data }) = _CountryEntity;

  factory CountryEntity.fromJson(Map<String, dynamic> json) =>
      _$CountryEntityFromJson(json);
}

@JsonSerializable()
class Datacountry {
  const Datacountry({
    required this.id,
    required this.name,
  });

  final int? id;
  final String? name;

  factory Datacountry.fromJson(Map<String, dynamic> json) => _$DatacountryFromJson(json);
  Map<String, dynamic> toJson() => _$DatacountryToJson(this);
}
