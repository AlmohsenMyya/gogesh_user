import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_question_entity.freezed.dart';
part 'common_question_entity.g.dart';

@freezed
class CommonQuestion with _$CommonQuestion {
  const factory CommonQuestion(
      {required int id,
      required String question,
      required String answer}) = _CommonQuestion;

  factory CommonQuestion.fromJson(Map<String, dynamic> json) =>
      _$CommonQuestionFromJson(json);
}
