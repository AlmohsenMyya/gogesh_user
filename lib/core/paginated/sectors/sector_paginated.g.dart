// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sector_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectorPaginated _$$_SectorPaginatedFromJson(Map<String, dynamic> json) =>
    _$_SectorPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => Sector.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SectorPaginatedToJson(_$_SectorPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
