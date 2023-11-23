import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_entity.freezed.dart';
part 'activity_entity.g.dart';

@freezed
class Activity with _$Activity {
  const factory Activity({required String name, required int id}) = _Activity;
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
