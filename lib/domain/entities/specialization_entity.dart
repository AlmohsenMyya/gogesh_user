import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_entity.freezed.dart';
part 'specialization_entity.g.dart';

@freezed
class Specialization with _$Specialization {
  const factory Specialization(
      {required String name,
      required int id,
      @JsonKey(name: "activity_id") required int activityId}) = _Specialization;
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
