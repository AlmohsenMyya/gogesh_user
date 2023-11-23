import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_entity.freezed.dart';
part 'season_entity.g.dart';

@freezed
class SeasonAndOccasion with _$SeasonAndOccasion {
  const factory SeasonAndOccasion({required String name, required int id}) =
      _SeasonAndOccasion;
  factory SeasonAndOccasion.fromJson(Map<String, dynamic> json) =>
      _$SeasonAndOccasionFromJson(json);
}
