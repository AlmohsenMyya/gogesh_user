import 'dart:async';

import 'package:commercial_directory_users/core/paginated/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/common_question/common_question_entity.dart';

part 'common_question_paginated.freezed.dart';
part 'common_question_paginated.g.dart';

FutureOr<CommonQuestionPaginated> deserializeCommonQuestionPaginated(
        Map<String, dynamic> json) =>
    CommonQuestionPaginated.fromJson(json);

@freezed
class CommonQuestionPaginated with _$CommonQuestionPaginated {
  const factory CommonQuestionPaginated({
    required List<CommonQuestion> data,
    required Meta meta,
  }) = _CommonQuestionPaginated;

  factory CommonQuestionPaginated.fromJson(Map<String, dynamic> json) =>
      _$CommonQuestionPaginatedFromJson(json);
}
