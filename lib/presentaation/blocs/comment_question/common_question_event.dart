part of 'common_question_bloc.dart';

@freezed
class CommonQuestionEvent with _$CommonQuestionEvent {
  const factory CommonQuestionEvent.load({required int page}) = _Loaded;
}
