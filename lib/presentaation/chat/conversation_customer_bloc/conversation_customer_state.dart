part of 'conversation_customer_bloc.dart';

@freezed
class ConversationCustomerState with _$ConversationCustomerState {
const factory ConversationCustomerState.initial() = _Initial;
  const factory ConversationCustomerState.loading() = _loading;


  const factory ConversationCustomerState.error(ErrorState error) = _Error;
  const factory ConversationCustomerState.networkError() = _NetworkError;
  const factory ConversationCustomerState.lastPageLoaded({required List<ConversationEntity> conversation}) =
      _LastPageLoaded;
  const factory ConversationCustomerState.loaded({required List<ConversationEntity> conversation, pageKey}) =
      _Loaded;
 const factory ConversationCustomerState.addedNewConversationOurUPdate(
      {required List<ConversationEntity> conversation,
      pageKey}) = _AddedNewConversationOurUPdate;
  }
