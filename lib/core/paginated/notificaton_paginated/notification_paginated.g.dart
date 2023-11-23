// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPaginated _$NotificationPaginatedFromJson(
        Map<String, dynamic> json) =>
    NotificationPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => NotificationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationPaginatedToJson(
        NotificationPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
