// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) =>
    NotificationEntity(
      title: json['title'] as String?,
      content: json['content'] as String?,
      date: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      offerId: json['offer_id'] as int?,
      adId: json['ads_id'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NotificationEntityToJson(NotificationEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'created_at': instance.date?.toIso8601String(),
      'offer_id': instance.offerId,
      'ads_id': instance.adId,
    };
