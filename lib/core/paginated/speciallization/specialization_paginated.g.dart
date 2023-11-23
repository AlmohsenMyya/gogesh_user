// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecializationPaginated _$$_SpecializationPaginatedFromJson(
        Map<String, dynamic> json) =>
    _$_SpecializationPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => Specialization.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpecializationPaginatedToJson(
        _$_SpecializationPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
