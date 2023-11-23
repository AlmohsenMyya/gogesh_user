part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial() = _Initial;
  const factory ConversationState.loading() = _loading;


  const factory ConversationState.error(ErrorState error) = _Error;
  const factory ConversationState.networkError() = _NetworkError;
  const factory ConversationState.lastPageLoaded({required List<ConversationEntity> conversation}) =
      _LastPageLoaded;
  const factory ConversationState.loaded({required List<ConversationEntity> conversation, pageKey}) =
      _Loaded;
 const factory ConversationState.addedNewConversationOurUPdate(
      {required List<ConversationEntity> conversation,
      pageKey}) = _AddedNewConversationOurUPdate;
}
