// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdsPaginated _$$_AdsPaginatedFromJson(Map<String, dynamic> json) =>
    _$_AdsPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => Ad.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AdsPaginatedToJson(_$_AdsPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
