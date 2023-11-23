// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadChatCopyWith<$Res> {
  factory _$$_LoadChatCopyWith(
          _$_LoadChat value, $Res Function(_$_LoadChat) then) =
      __$$_LoadChatCopyWithImpl<$Res>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_LoadChatCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_LoadChat>
    implements _$$_LoadChatCopyWith<$Res> {
  __$$_LoadChatCopyWithImpl(
      _$_LoadChat _value, $Res Function(_$_LoadChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_LoadChat(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_LoadChat with DiagnosticableTreeMixin implements _LoadChat {
  const _$_LoadChat({required this.filter});

  @override
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.loadChat(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.loadChat'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadChat &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadChatCopyWith<_$_LoadChat> get copyWith =>
      __$$_LoadChatCopyWithImpl<_$_LoadChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return loadChat(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return loadChat?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (loadChat != null) {
      return loadChat(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadChat != null) {
      return loadChat(this);
    }
    return orElse();
  }
}

abstract class _LoadChat implements ChatEvent {
  const factory _LoadChat({required final Filter filter}) = _$_LoadChat;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadChatCopyWith<_$_LoadChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_sendMessageCopyWith<$Res> {
  factory _$$_sendMessageCopyWith(
          _$_sendMessage value, $Res Function(_$_sendMessage) then) =
      __$$_sendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({SendMessageRequest request});
}

/// @nodoc
class __$$_sendMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_sendMessage>
    implements _$$_sendMessageCopyWith<$Res> {
  __$$_sendMessageCopyWithImpl(
      _$_sendMessage _value, $Res Function(_$_sendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_sendMessage(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SendMessageRequest,
    ));
  }
}

/// @nodoc

class _$_sendMessage with DiagnosticableTreeMixin implements _sendMessage {
  const _$_sendMessage({required this.request});

  @override
  final SendMessageRequest request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.sendMessage(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.sendMessage'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_sendMessage &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_sendMessageCopyWith<_$_sendMessage> get copyWith =>
      __$$_sendMessageCopyWithImpl<_$_sendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return sendMessage(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return sendMessage?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _sendMessage implements ChatEvent {
  const factory _sendMessage({required final SendMessageRequest request}) =
      _$_sendMessage;

  SendMessageRequest get request;
  @JsonKey(ignore: true)
  _$$_sendMessageCopyWith<_$_sendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReendMessageCopyWith<$Res> {
  factory _$$_ReendMessageCopyWith(
          _$_ReendMessage value, $Res Function(_$_ReendMessage) then) =
      __$$_ReendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({int messageId});
}

/// @nodoc
class __$$_ReendMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_ReendMessage>
    implements _$$_ReendMessageCopyWith<$Res> {
  __$$_ReendMessageCopyWithImpl(
      _$_ReendMessage _value, $Res Function(_$_ReendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$_ReendMessage(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReendMessage with DiagnosticableTreeMixin implements _ReendMessage {
  const _$_ReendMessage({required this.messageId});

  @override
  final int messageId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.resendMessage(messageId: $messageId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.resendMessage'))
      ..add(DiagnosticsProperty('messageId', messageId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReendMessage &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReendMessageCopyWith<_$_ReendMessage> get copyWith =>
      __$$_ReendMessageCopyWithImpl<_$_ReendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return resendMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return resendMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (resendMessage != null) {
      return resendMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return resendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return resendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (resendMessage != null) {
      return resendMessage(this);
    }
    return orElse();
  }
}

abstract class _ReendMessage implements ChatEvent {
  const factory _ReendMessage({required final int messageId}) = _$_ReendMessage;

  int get messageId;
  @JsonKey(ignore: true)
  _$$_ReendMessageCopyWith<_$_ReendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadImageCopyWith<$Res> {
  factory _$$_UploadImageCopyWith(
          _$_UploadImage value, $Res Function(_$_UploadImage) then) =
      __$$_UploadImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$_UploadImageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_UploadImage>
    implements _$$_UploadImageCopyWith<$Res> {
  __$$_UploadImageCopyWithImpl(
      _$_UploadImage _value, $Res Function(_$_UploadImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$_UploadImage(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_UploadImage with DiagnosticableTreeMixin implements _UploadImage {
  const _$_UploadImage({required this.source});

  @override
  final ImageSource source;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.uploadImage(source: $source)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.uploadImage'))
      ..add(DiagnosticsProperty('source', source));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadImage &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      __$$_UploadImageCopyWithImpl<_$_UploadImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return uploadImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return uploadImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ChatEvent {
  const factory _UploadImage({required final ImageSource source}) =
      _$_UploadImage;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_backCopyWith<$Res> {
  factory _$$_backCopyWith(_$_back value, $Res Function(_$_back) then) =
      __$$_backCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_backCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res, _$_back>
    implements _$$_backCopyWith<$Res> {
  __$$_backCopyWithImpl(_$_back _value, $Res Function(_$_back) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_back with DiagnosticableTreeMixin implements _back {
  const _$_back();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.back()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatEvent.back'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_back);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _back implements ChatEvent {
  const factory _back() = _$_back;
}

/// @nodoc
abstract class _$$_AddNewMessageCopyWith<$Res> {
  factory _$$_AddNewMessageCopyWith(
          _$_AddNewMessage value, $Res Function(_$_AddNewMessage) then) =
      __$$_AddNewMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatEntity message});
}

/// @nodoc
class __$$_AddNewMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_AddNewMessage>
    implements _$$_AddNewMessageCopyWith<$Res> {
  __$$_AddNewMessageCopyWithImpl(
      _$_AddNewMessage _value, $Res Function(_$_AddNewMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_AddNewMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatEntity,
    ));
  }
}

/// @nodoc

class _$_AddNewMessage with DiagnosticableTreeMixin implements _AddNewMessage {
  const _$_AddNewMessage({required this.message});

  @override
  final ChatEntity message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.addNewMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.addNewMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewMessageCopyWith<_$_AddNewMessage> get copyWith =>
      __$$_AddNewMessageCopyWithImpl<_$_AddNewMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return addNewMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return addNewMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (addNewMessage != null) {
      return addNewMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return addNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return addNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (addNewMessage != null) {
      return addNewMessage(this);
    }
    return orElse();
  }
}

abstract class _AddNewMessage implements ChatEvent {
  const factory _AddNewMessage({required final ChatEntity message}) =
      _$_AddNewMessage;

  ChatEntity get message;
  @JsonKey(ignore: true)
  _$$_AddNewMessageCopyWith<_$_AddNewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_LoadMore(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_LoadMore with DiagnosticableTreeMixin implements _LoadMore {
  const _$_LoadMore({required this.filter});

  @override
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.loadMore(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.loadMore'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMore &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      __$$_LoadMoreCopyWithImpl<_$_LoadMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadChat,
    required TResult Function(SendMessageRequest request) sendMessage,
    required TResult Function(int messageId) resendMessage,
    required TResult Function(ImageSource source) uploadImage,
    required TResult Function() back,
    required TResult Function(ChatEntity message) addNewMessage,
    required TResult Function(Filter filter) loadMore,
  }) {
    return loadMore(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadChat,
    TResult? Function(SendMessageRequest request)? sendMessage,
    TResult? Function(int messageId)? resendMessage,
    TResult? Function(ImageSource source)? uploadImage,
    TResult? Function()? back,
    TResult? Function(ChatEntity message)? addNewMessage,
    TResult? Function(Filter filter)? loadMore,
  }) {
    return loadMore?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadChat,
    TResult Function(SendMessageRequest request)? sendMessage,
    TResult Function(int messageId)? resendMessage,
    TResult Function(ImageSource source)? uploadImage,
    TResult Function()? back,
    TResult Function(ChatEntity message)? addNewMessage,
    TResult Function(Filter filter)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadChat value) loadChat,
    required TResult Function(_sendMessage value) sendMessage,
    required TResult Function(_ReendMessage value) resendMessage,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_back value) back,
    required TResult Function(_AddNewMessage value) addNewMessage,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadChat value)? loadChat,
    TResult? Function(_sendMessage value)? sendMessage,
    TResult? Function(_ReendMessage value)? resendMessage,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_back value)? back,
    TResult? Function(_AddNewMessage value)? addNewMessage,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadChat value)? loadChat,
    TResult Function(_sendMessage value)? sendMessage,
    TResult Function(_ReendMessage value)? resendMessage,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_back value)? back,
    TResult Function(_AddNewMessage value)? addNewMessage,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements ChatEvent {
  const factory _LoadMore({required final Filter filter}) = _$_LoadMore;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading with DiagnosticableTreeMixin implements _loading {
  const _$_loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements ChatState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_LoadingMoreFailedCopyWith<$Res> {
  factory _$$_LoadingMoreFailedCopyWith(_$_LoadingMoreFailed value,
          $Res Function(_$_LoadingMoreFailed) then) =
      __$$_LoadingMoreFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingMoreFailedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_LoadingMoreFailed>
    implements _$$_LoadingMoreFailedCopyWith<$Res> {
  __$$_LoadingMoreFailedCopyWithImpl(
      _$_LoadingMoreFailed _value, $Res Function(_$_LoadingMoreFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingMoreFailed
    with DiagnosticableTreeMixin
    implements _LoadingMoreFailed {
  const _$_LoadingMoreFailed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.loadingMoreFailed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.loadingMoreFailed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingMoreFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return loadingMoreFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return loadingMoreFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loadingMoreFailed != null) {
      return loadingMoreFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return loadingMoreFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return loadingMoreFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loadingMoreFailed != null) {
      return loadingMoreFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadingMoreFailed implements ChatState {
  const factory _LoadingMoreFailed() = _$_LoadingMoreFailed;
}

/// @nodoc
abstract class _$$_succesCopyWith<$Res> {
  factory _$$_succesCopyWith(_$_succes value, $Res Function(_$_succes) then) =
      __$$_succesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_succesCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_succes>
    implements _$$_succesCopyWith<$Res> {
  __$$_succesCopyWithImpl(_$_succes _value, $Res Function(_$_succes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_succes with DiagnosticableTreeMixin implements _succes {
  const _$_succes();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.succes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.succes'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_succes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return succes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return succes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _succes implements ChatState {
  const factory _succes() = _$_succes;
}

/// @nodoc
abstract class _$$_CanNotSendMessageCopyWith<$Res> {
  factory _$$_CanNotSendMessageCopyWith(_$_CanNotSendMessage value,
          $Res Function(_$_CanNotSendMessage) then) =
      __$$_CanNotSendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_CanNotSendMessageCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_CanNotSendMessage>
    implements _$$_CanNotSendMessageCopyWith<$Res> {
  __$$_CanNotSendMessageCopyWithImpl(
      _$_CanNotSendMessage _value, $Res Function(_$_CanNotSendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CanNotSendMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CanNotSendMessage
    with DiagnosticableTreeMixin
    implements _CanNotSendMessage {
  const _$_CanNotSendMessage({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.canNotSendMessage(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.canNotSendMessage'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CanNotSendMessage &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CanNotSendMessageCopyWith<_$_CanNotSendMessage> get copyWith =>
      __$$_CanNotSendMessageCopyWithImpl<_$_CanNotSendMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return canNotSendMessage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return canNotSendMessage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (canNotSendMessage != null) {
      return canNotSendMessage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return canNotSendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return canNotSendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (canNotSendMessage != null) {
      return canNotSendMessage(this);
    }
    return orElse();
  }
}

abstract class _CanNotSendMessage implements ChatState {
  const factory _CanNotSendMessage({required final int id}) =
      _$_CanNotSendMessage;

  int get id;
  @JsonKey(ignore: true)
  _$$_CanNotSendMessageCopyWith<_$_CanNotSendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendingMessageCopyWith<$Res> {
  factory _$$_SendingMessageCopyWith(
          _$_SendingMessage value, $Res Function(_$_SendingMessage) then) =
      __$$_SendingMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_SendingMessageCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_SendingMessage>
    implements _$$_SendingMessageCopyWith<$Res> {
  __$$_SendingMessageCopyWithImpl(
      _$_SendingMessage _value, $Res Function(_$_SendingMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_SendingMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SendingMessage
    with DiagnosticableTreeMixin
    implements _SendingMessage {
  const _$_SendingMessage({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.sendingMessage(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.sendingMessage'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendingMessage &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendingMessageCopyWith<_$_SendingMessage> get copyWith =>
      __$$_SendingMessageCopyWithImpl<_$_SendingMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return sendingMessage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return sendingMessage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (sendingMessage != null) {
      return sendingMessage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return sendingMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return sendingMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (sendingMessage != null) {
      return sendingMessage(this);
    }
    return orElse();
  }
}

abstract class _SendingMessage implements ChatState {
  const factory _SendingMessage({required final int id}) = _$_SendingMessage;

  int get id;
  @JsonKey(ignore: true)
  _$$_SendingMessageCopyWith<_$_SendingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingMoreCopyWith<$Res> {
  factory _$$_LoadingMoreCopyWith(
          _$_LoadingMore value, $Res Function(_$_LoadingMore) then) =
      __$$_LoadingMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingMoreCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_LoadingMore>
    implements _$$_LoadingMoreCopyWith<$Res> {
  __$$_LoadingMoreCopyWithImpl(
      _$_LoadingMore _value, $Res Function(_$_LoadingMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingMore with DiagnosticableTreeMixin implements _LoadingMore {
  const _$_LoadingMore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.loadingMore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.loadingMore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return loadingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements ChatState {
  const factory _LoadingMore() = _$_LoadingMore;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty with DiagnosticableTreeMixin implements _Empty {
  const _$_Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ChatState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_MessageSentCopyWith<$Res> {
  factory _$$_MessageSentCopyWith(
          _$_MessageSent value, $Res Function(_$_MessageSent) then) =
      __$$_MessageSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MessageSentCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_MessageSent>
    implements _$$_MessageSentCopyWith<$Res> {
  __$$_MessageSentCopyWithImpl(
      _$_MessageSent _value, $Res Function(_$_MessageSent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MessageSent with DiagnosticableTreeMixin implements _MessageSent {
  const _$_MessageSent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.messageSent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.messageSent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MessageSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return messageSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements ChatState {
  const factory _MessageSent() = _$_MessageSent;
}

/// @nodoc
abstract class _$$_ErrorSendCopyWith<$Res> {
  factory _$$_ErrorSendCopyWith(
          _$_ErrorSend value, $Res Function(_$_ErrorSend) then) =
      __$$_ErrorSendCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_ErrorSendCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ErrorSend>
    implements _$$_ErrorSendCopyWith<$Res> {
  __$$_ErrorSendCopyWithImpl(
      _$_ErrorSend _value, $Res Function(_$_ErrorSend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ErrorSend(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorSend with DiagnosticableTreeMixin implements _ErrorSend {
  const _$_ErrorSend({this.error});

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.errorSend(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.errorSend'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSend &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSendCopyWith<_$_ErrorSend> get copyWith =>
      __$$_ErrorSendCopyWithImpl<_$_ErrorSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return errorSend(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return errorSend?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (errorSend != null) {
      return errorSend(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return errorSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return errorSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (errorSend != null) {
      return errorSend(this);
    }
    return orElse();
  }
}

abstract class _ErrorSend implements ChatState {
  const factory _ErrorSend({final String? error}) = _$_ErrorSend;

  String? get error;
  @JsonKey(ignore: true)
  _$$_ErrorSendCopyWith<_$_ErrorSend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageLoadedCopyWith<$Res> {
  factory _$$_ImageLoadedCopyWith(
          _$_ImageLoaded value, $Res Function(_$_ImageLoaded) then) =
      __$$_ImageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$_ImageLoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ImageLoaded>
    implements _$$_ImageLoadedCopyWith<$Res> {
  __$$_ImageLoadedCopyWithImpl(
      _$_ImageLoaded _value, $Res Function(_$_ImageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_ImageLoaded(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_ImageLoaded with DiagnosticableTreeMixin implements _ImageLoaded {
  const _$_ImageLoaded({required this.image});

  @override
  final XFile? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.imageLoaded(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.imageLoaded'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageLoaded &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageLoadedCopyWith<_$_ImageLoaded> get copyWith =>
      __$$_ImageLoadedCopyWithImpl<_$_ImageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return imageLoaded(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return imageLoaded?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return imageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return imageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(this);
    }
    return orElse();
  }
}

abstract class _ImageLoaded implements ChatState {
  const factory _ImageLoaded({required final XFile? image}) = _$_ImageLoaded;

  XFile? get image;
  @JsonKey(ignore: true)
  _$$_ImageLoadedCopyWith<_$_ImageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorState error});

  $ErrorStateCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<$Res> get error {
    return $ErrorStateCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(this.error);

  @override
  final ErrorState error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error(final ErrorState error) = _$_Error;

  ErrorState get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_NetworkError>
    implements _$$_NetworkErrorCopyWith<$Res> {
  __$$_NetworkErrorCopyWithImpl(
      _$_NetworkError _value, $Res Function(_$_NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkError with DiagnosticableTreeMixin implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.networkError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatState.networkError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements ChatState {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_LastPageLoadedCopyWith<$Res> {
  factory _$$_LastPageLoadedCopyWith(
          _$_LastPageLoaded value, $Res Function(_$_LastPageLoaded) then) =
      __$$_LastPageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatEntity> chat});
}

/// @nodoc
class __$$_LastPageLoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_LastPageLoaded>
    implements _$$_LastPageLoadedCopyWith<$Res> {
  __$$_LastPageLoadedCopyWithImpl(
      _$_LastPageLoaded _value, $Res Function(_$_LastPageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$_LastPageLoaded(
      chat: null == chat
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
    ));
  }
}

/// @nodoc

class _$_LastPageLoaded
    with DiagnosticableTreeMixin
    implements _LastPageLoaded {
  const _$_LastPageLoaded({required final List<ChatEntity> chat})
      : _chat = chat;

  final List<ChatEntity> _chat;
  @override
  List<ChatEntity> get chat {
    if (_chat is EqualUnmodifiableListView) return _chat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.lastPageLoaded(chat: $chat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.lastPageLoaded'))
      ..add(DiagnosticsProperty('chat', chat));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastPageLoaded &&
            const DeepCollectionEquality().equals(other._chat, _chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      __$$_LastPageLoadedCopyWithImpl<_$_LastPageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return lastPageLoaded(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return lastPageLoaded?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return lastPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return lastPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _LastPageLoaded implements ChatState {
  const factory _LastPageLoaded({required final List<ChatEntity> chat}) =
      _$_LastPageLoaded;

  List<ChatEntity> get chat;
  @JsonKey(ignore: true)
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatEntity> chat, dynamic pageKey, bool lastPage});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? pageKey = freezed,
    Object? lastPage = null,
  }) {
    return _then(_$_Loaded(
      chat: null == chat
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
      pageKey: freezed == pageKey ? _value.pageKey! : pageKey,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(
      {required final List<ChatEntity> chat,
      this.pageKey,
      required this.lastPage})
      : _chat = chat;

  final List<ChatEntity> _chat;
  @override
  List<ChatEntity> get chat {
    if (_chat is EqualUnmodifiableListView) return _chat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  final dynamic pageKey;
  @override
  final bool lastPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.loaded(chat: $chat, pageKey: $pageKey, lastPage: $lastPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.loaded'))
      ..add(DiagnosticsProperty('chat', chat))
      ..add(DiagnosticsProperty('pageKey', pageKey))
      ..add(DiagnosticsProperty('lastPage', lastPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._chat, _chat) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chat),
      const DeepCollectionEquality().hash(pageKey),
      lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return loaded(chat, pageKey, lastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return loaded?.call(chat, pageKey, lastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chat, pageKey, lastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ChatState {
  const factory _Loaded(
      {required final List<ChatEntity> chat,
      final dynamic pageKey,
      required final bool lastPage}) = _$_Loaded;

  List<ChatEntity> get chat;
  dynamic get pageKey;
  bool get lastPage;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedPageOneCopyWith<$Res> {
  factory _$$_LoadedPageOneCopyWith(
          _$_LoadedPageOne value, $Res Function(_$_LoadedPageOne) then) =
      __$$_LoadedPageOneCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatEntity> chat, dynamic pageKey});
}

/// @nodoc
class __$$_LoadedPageOneCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_LoadedPageOne>
    implements _$$_LoadedPageOneCopyWith<$Res> {
  __$$_LoadedPageOneCopyWithImpl(
      _$_LoadedPageOne _value, $Res Function(_$_LoadedPageOne) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? pageKey = freezed,
  }) {
    return _then(_$_LoadedPageOne(
      chat: null == chat
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
      pageKey: freezed == pageKey ? _value.pageKey! : pageKey,
    ));
  }
}

/// @nodoc

class _$_LoadedPageOne with DiagnosticableTreeMixin implements _LoadedPageOne {
  const _$_LoadedPageOne({required final List<ChatEntity> chat, this.pageKey})
      : _chat = chat;

  final List<ChatEntity> _chat;
  @override
  List<ChatEntity> get chat {
    if (_chat is EqualUnmodifiableListView) return _chat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  final dynamic pageKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState.loadedPageOne(chat: $chat, pageKey: $pageKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState.loadedPageOne'))
      ..add(DiagnosticsProperty('chat', chat))
      ..add(DiagnosticsProperty('pageKey', pageKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedPageOne &&
            const DeepCollectionEquality().equals(other._chat, _chat) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chat),
      const DeepCollectionEquality().hash(pageKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedPageOneCopyWith<_$_LoadedPageOne> get copyWith =>
      __$$_LoadedPageOneCopyWithImpl<_$_LoadedPageOne>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreFailed,
    required TResult Function() succes,
    required TResult Function(int id) canNotSendMessage,
    required TResult Function(int id) sendingMessage,
    required TResult Function() loadingMore,
    required TResult Function() empty,
    required TResult Function() messageSent,
    required TResult Function(String? error) errorSend,
    required TResult Function(XFile? image) imageLoaded,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ChatEntity> chat) lastPageLoaded,
    required TResult Function(
            List<ChatEntity> chat, dynamic pageKey, bool lastPage)
        loaded,
    required TResult Function(List<ChatEntity> chat, dynamic pageKey)
        loadedPageOne,
  }) {
    return loadedPageOne(chat, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreFailed,
    TResult? Function()? succes,
    TResult? Function(int id)? canNotSendMessage,
    TResult? Function(int id)? sendingMessage,
    TResult? Function()? loadingMore,
    TResult? Function()? empty,
    TResult? Function()? messageSent,
    TResult? Function(String? error)? errorSend,
    TResult? Function(XFile? image)? imageLoaded,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult? Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
  }) {
    return loadedPageOne?.call(chat, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreFailed,
    TResult Function()? succes,
    TResult Function(int id)? canNotSendMessage,
    TResult Function(int id)? sendingMessage,
    TResult Function()? loadingMore,
    TResult Function()? empty,
    TResult Function()? messageSent,
    TResult Function(String? error)? errorSend,
    TResult Function(XFile? image)? imageLoaded,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ChatEntity> chat)? lastPageLoaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey, bool lastPage)?
        loaded,
    TResult Function(List<ChatEntity> chat, dynamic pageKey)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loadedPageOne != null) {
      return loadedPageOne(chat, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_LoadingMoreFailed value) loadingMoreFailed,
    required TResult Function(_succes value) succes,
    required TResult Function(_CanNotSendMessage value) canNotSendMessage,
    required TResult Function(_SendingMessage value) sendingMessage,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Empty value) empty,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_ErrorSend value) errorSend,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedPageOne value) loadedPageOne,
  }) {
    return loadedPageOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult? Function(_succes value)? succes,
    TResult? Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult? Function(_SendingMessage value)? sendingMessage,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_ErrorSend value)? errorSend,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedPageOne value)? loadedPageOne,
  }) {
    return loadedPageOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_LoadingMoreFailed value)? loadingMoreFailed,
    TResult Function(_succes value)? succes,
    TResult Function(_CanNotSendMessage value)? canNotSendMessage,
    TResult Function(_SendingMessage value)? sendingMessage,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Empty value)? empty,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_ErrorSend value)? errorSend,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedPageOne value)? loadedPageOne,
    required TResult orElse(),
  }) {
    if (loadedPageOne != null) {
      return loadedPageOne(this);
    }
    return orElse();
  }
}

abstract class _LoadedPageOne implements ChatState {
  const factory _LoadedPageOne(
      {required final List<ChatEntity> chat,
      final dynamic pageKey}) = _$_LoadedPageOne;

  List<ChatEntity> get chat;
  dynamic get pageKey;
  @JsonKey(ignore: true)
  _$$_LoadedPageOneCopyWith<_$_LoadedPageOne> get copyWith =>
      throw _privateConstructorUsedError;
}
