import 'package:commercial_directory_users/core/paginated/common_question/common_question_paginated.dart';

import '../../core/excptions/exceptions.dart';
import '../../core/result/result.dart';

abstract class CommonQuestionRepository {
  Future<Result<CommonQuestionPaginated, Exceptions>> getCommonQuestion(
      String type);
}
