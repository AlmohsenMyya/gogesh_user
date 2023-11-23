import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/notification_entity/notification_entity.dart';
import '../meta.dart';

part 'notification_paginated.g.dart';

@JsonSerializable()
class NotificationPaginated {
  NotificationPaginated({
    required this.data,
    required this.meta,
  });
  final List<NotificationEntity> data;
  Meta meta;
  factory NotificationPaginated.fromJson(Map<String, dynamic> json) =>
      _$NotificationPaginatedFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationPaginatedToJson(this);
}
