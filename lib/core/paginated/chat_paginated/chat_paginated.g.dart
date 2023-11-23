// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatPaginated _$$_ChatPaginatedFromJson(Map<String, dynamic> json) =>
    _$_ChatPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => ChatEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatPaginatedToJson(_$_ChatPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
