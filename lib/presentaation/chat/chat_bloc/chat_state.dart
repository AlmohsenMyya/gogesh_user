part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _loading;
  const factory ChatState.loadingMoreFailed() = _LoadingMoreFailed;

  const factory ChatState.succes() = _succes;
  const factory ChatState.canNotSendMessage({required int id}) =
      _CanNotSendMessage;
  const factory ChatState.sendingMessage({required int id}) = _SendingMessage;
  const factory ChatState.loadingMore() = _LoadingMore;
  const factory ChatState.empty() = _Empty;

  const factory ChatState.messageSent() = _MessageSent;
  const factory ChatState.errorSend({String? error}) = _ErrorSend;

  const factory ChatState.imageLoaded({
    required XFile? image,
  }) = _ImageLoaded;
  const factory ChatState.error(ErrorState error) = _Error;
  const factory ChatState.networkError() = _NetworkError;
  const factory ChatState.lastPageLoaded({required List<ChatEntity> chat}) =
      _LastPageLoaded;
  const factory ChatState.loaded(
      {required List<ChatEntity> chat,
      pageKey,
      required bool lastPage}) = _Loaded;

  const factory ChatState.loadedPageOne(
      {required List<ChatEntity> chat, pageKey}) = _LoadedPageOne;
}
