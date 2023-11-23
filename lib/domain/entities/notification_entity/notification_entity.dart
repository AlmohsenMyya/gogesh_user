import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notification_entity.g.dart';

@JsonSerializable()
class NotificationEntity {
  NotificationEntity({
    required this.title,
    required this.content,
    required this.date,
    required this.offerId,
    required this.adId,
    required this.type,
  });

  final String? title;
  final String? content;
  final String? type;
  @JsonKey(name: "created_at")
  final DateTime? date;
  @JsonKey(name: "offer_id")
  final int? offerId;
  @JsonKey(name: "ads_id")
  final int? adId;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationEntityToJson(this);
}
