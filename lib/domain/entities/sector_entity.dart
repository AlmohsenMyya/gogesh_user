import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_entity.freezed.dart';
part 'sector_entity.g.dart';

@freezed
class Sector with _$Sector {
  const factory Sector(
      {required String name,
      required int id,
      @JsonKey(name: "commercial_activity_count") required int? companyCount,
      required String? image}) = _Sector;
  factory Sector.fromJson(Map<String, dynamic> json) => _$SectorFromJson(json);
}
