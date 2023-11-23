// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_question_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonQuestionPaginated _$$_CommonQuestionPaginatedFromJson(
        Map<String, dynamic> json) =>
    _$_CommonQuestionPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => CommonQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommonQuestionPaginatedToJson(
        _$_CommonQuestionPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
