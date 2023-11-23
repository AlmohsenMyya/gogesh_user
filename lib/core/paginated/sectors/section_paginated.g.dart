// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionPaginated _$$_SectionPaginatedFromJson(Map<String, dynamic> json) =>
    _$_SectionPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => SectionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SectionPaginatedToJson(_$_SectionPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
