// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversationPaginated _$$_ConversationPaginatedFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => ConversationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConversationPaginatedToJson(
        _$_ConversationPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
