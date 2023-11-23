// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityPaginated _$$_ActivityPaginatedFromJson(Map<String, dynamic> json) =>
    _$_ActivityPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ActivityPaginatedToJson(
        _$_ActivityPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
