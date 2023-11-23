part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.loadChat({required Filter filter}) = _LoadChat;
  const factory ChatEvent.sendMessage({required SendMessageRequest request}) =
      _sendMessage;
  const factory ChatEvent.resendMessage({required int messageId}) =
      _ReendMessage;
  const factory ChatEvent.uploadImage({required ImageSource source}) =
      _UploadImage;
  const factory ChatEvent.back() = _back;
  const factory ChatEvent.addNewMessage({required ChatEntity message}) =
      _AddNewMessage;
  const factory ChatEvent.loadMore({required Filter filter}) = _LoadMore;
}
