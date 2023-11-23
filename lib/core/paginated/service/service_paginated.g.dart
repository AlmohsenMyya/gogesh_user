// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServicePaginated _$$_ServicePaginatedFromJson(Map<String, dynamic> json) =>
    _$_ServicePaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => ServiceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServicePaginatedToJson(_$_ServicePaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
