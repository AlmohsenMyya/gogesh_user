// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occasion_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OccasionPaginated _$$_OccasionPaginatedFromJson(Map<String, dynamic> json) =>
    _$_OccasionPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => SeasonAndOccasion.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OccasionPaginatedToJson(
        _$_OccasionPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
