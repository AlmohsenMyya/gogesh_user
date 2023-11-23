import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/paginated/common_question/common_question_paginated.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../repositories/common_question_repository.dart';

class GetCommonQuestionUseCase
    implements UseCase<CommonQuestionPaginated, Filter> {
  final CommonQuestionRepository _repository;
  GetCommonQuestionUseCase(this._repository);

  @override
  Future<Result<CommonQuestionPaginated, Exceptions>> call(Filter params) {
    return _repository.getCommonQuestion(params.type ?? "All");
  }
}
