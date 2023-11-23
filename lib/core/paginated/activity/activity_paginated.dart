import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/activity_entity.dart';
import '../meta.dart';

part 'activity_paginated.freezed.dart';
part 'activity_paginated.g.dart';

FutureOr<ActivityPaginated> deserializeActivityPaginated(
        Map<String, dynamic> json) =>
    ActivityPaginated.fromJson(json);

@freezed
class ActivityPaginated with _$ActivityPaginated {
  const factory ActivityPaginated(
      {required List<Activity> data, required Meta? meta}) = _ActivityPaginated;
  factory ActivityPaginated.fromJson(Map<String, dynamic> json) =>
      _$ActivityPaginatedFromJson(json);
}
