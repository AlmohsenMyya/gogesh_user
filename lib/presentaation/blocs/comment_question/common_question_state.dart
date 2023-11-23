part of 'common_question_bloc.dart';

@freezed
class CommonQuestionState with _$CommonQuestionState {
  const factory CommonQuestionState.loading() = _Loading;
  const factory CommonQuestionState.error({required ErrorState error}) = _Error;
  const factory CommonQuestionState.dataLoaded(
      {required List<CommonQuestion> data, required int page}) = _DataLoaded;
  const factory CommonQuestionState.lastPageLoaded(
      {required List<CommonQuestion> data}) = _LastPageLoaded;
}
