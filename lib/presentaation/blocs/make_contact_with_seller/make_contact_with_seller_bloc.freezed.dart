// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_contact_with_seller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MakeContactWithSellerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offerId) makeOfferContact,
    required TResult Function(int adId) makeAdContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offerId)? makeOfferContact,
    TResult? Function(int adId)? makeAdContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offerId)? makeOfferContact,
    TResult Function(int adId)? makeAdContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeOfferContact value) makeOfferContact,
    required TResult Function(_MakeAdContact value) makeAdContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeOfferContact value)? makeOfferContact,
    TResult? Function(_MakeAdContact value)? makeAdContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeOfferContact value)? makeOfferContact,
    TResult Function(_MakeAdContact value)? makeAdContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeContactWithSellerEventCopyWith<$Res> {
  factory $MakeContactWithSellerEventCopyWith(MakeContactWithSellerEvent value,
          $Res Function(MakeContactWithSellerEvent) then) =
      _$MakeContactWithSellerEventCopyWithImpl<$Res,
          MakeContactWithSellerEvent>;
}

/// @nodoc
class _$MakeContactWithSellerEventCopyWithImpl<$Res,
        $Val extends MakeContactWithSellerEvent>
    implements $MakeContactWithSellerEventCopyWith<$Res> {
  _$MakeContactWithSellerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MakeOfferContactCopyWith<$Res> {
  factory _$$_MakeOfferContactCopyWith(
          _$_MakeOfferContact value, $Res Function(_$_MakeOfferContact) then) =
      __$$_MakeOfferContactCopyWithImpl<$Res>;
  @useResult
  $Res call({int offerId});
}

/// @nodoc
class __$$_MakeOfferContactCopyWithImpl<$Res>
    extends _$MakeContactWithSellerEventCopyWithImpl<$Res, _$_MakeOfferContact>
    implements _$$_MakeOfferContactCopyWith<$Res> {
  __$$_MakeOfferContactCopyWithImpl(
      _$_MakeOfferContact _value, $Res Function(_$_MakeOfferContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
  }) {
    return _then(_$_MakeOfferContact(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MakeOfferContact implements _MakeOfferContact {
  const _$_MakeOfferContact({required this.offerId});

  @override
  final int offerId;

  @override
  String toString() {
    return 'MakeContactWithSellerEvent.makeOfferContact(offerId: $offerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MakeOfferContact &&
            (identical(other.offerId, offerId) || other.offerId == offerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MakeOfferContactCopyWith<_$_MakeOfferContact> get copyWith =>
      __$$_MakeOfferContactCopyWithImpl<_$_MakeOfferContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offerId) makeOfferContact,
    required TResult Function(int adId) makeAdContact,
  }) {
    return makeOfferContact(offerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offerId)? makeOfferContact,
    TResult? Function(int adId)? makeAdContact,
  }) {
    return makeOfferContact?.call(offerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offerId)? makeOfferContact,
    TResult Function(int adId)? makeAdContact,
    required TResult orElse(),
  }) {
    if (makeOfferContact != null) {
      return makeOfferContact(offerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeOfferContact value) makeOfferContact,
    required TResult Function(_MakeAdContact value) makeAdContact,
  }) {
    return makeOfferContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeOfferContact value)? makeOfferContact,
    TResult? Function(_MakeAdContact value)? makeAdContact,
  }) {
    return makeOfferContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeOfferContact value)? makeOfferContact,
    TResult Function(_MakeAdContact value)? makeAdContact,
    required TResult orElse(),
  }) {
    if (makeOfferContact != null) {
      return makeOfferContact(this);
    }
    return orElse();
  }
}

abstract class _MakeOfferContact implements MakeContactWithSellerEvent {
  const factory _MakeOfferContact({required final int offerId}) =
      _$_MakeOfferContact;

  int get offerId;
  @JsonKey(ignore: true)
  _$$_MakeOfferContactCopyWith<_$_MakeOfferContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MakeAdContactCopyWith<$Res> {
  factory _$$_MakeAdContactCopyWith(
          _$_MakeAdContact value, $Res Function(_$_MakeAdContact) then) =
      __$$_MakeAdContactCopyWithImpl<$Res>;
  @useResult
  $Res call({int adId});
}

/// @nodoc
class __$$_MakeAdContactCopyWithImpl<$Res>
    extends _$MakeContactWithSellerEventCopyWithImpl<$Res, _$_MakeAdContact>
    implements _$$_MakeAdContactCopyWith<$Res> {
  __$$_MakeAdContactCopyWithImpl(
      _$_MakeAdContact _value, $Res Function(_$_MakeAdContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = null,
  }) {
    return _then(_$_MakeAdContact(
      adId: null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MakeAdContact implements _MakeAdContact {
  const _$_MakeAdContact({required this.adId});

  @override
  final int adId;

  @override
  String toString() {
    return 'MakeContactWithSellerEvent.makeAdContact(adId: $adId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MakeAdContact &&
            (identical(other.adId, adId) || other.adId == adId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MakeAdContactCopyWith<_$_MakeAdContact> get copyWith =>
      __$$_MakeAdContactCopyWithImpl<_$_MakeAdContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offerId) makeOfferContact,
    required TResult Function(int adId) makeAdContact,
  }) {
    return makeAdContact(adId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offerId)? makeOfferContact,
    TResult? Function(int adId)? makeAdContact,
  }) {
    return makeAdContact?.call(adId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offerId)? makeOfferContact,
    TResult Function(int adId)? makeAdContact,
    required TResult orElse(),
  }) {
    if (makeAdContact != null) {
      return makeAdContact(adId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeOfferContact value) makeOfferContact,
    required TResult Function(_MakeAdContact value) makeAdContact,
  }) {
    return makeAdContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeOfferContact value)? makeOfferContact,
    TResult? Function(_MakeAdContact value)? makeAdContact,
  }) {
    return makeAdContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeOfferContact value)? makeOfferContact,
    TResult Function(_MakeAdContact value)? makeAdContact,
    required TResult orElse(),
  }) {
    if (makeAdContact != null) {
      return makeAdContact(this);
    }
    return orElse();
  }
}

abstract class _MakeAdContact implements MakeContactWithSellerEvent {
  const factory _MakeAdContact({required final int adId}) = _$_MakeAdContact;

  int get adId;
  @JsonKey(ignore: true)
  _$$_MakeAdContactCopyWith<_$_MakeAdContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MakeContactWithSellerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) loading,
    required TResult Function(ConversationEntity conversation) succes,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? loading,
    TResult? Function(ConversationEntity conversation)? succes,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? loading,
    TResult Function(ConversationEntity conversation)? succes,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_succes value) succes,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_succes value)? succes,
    TResult? Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_succes value)? succes,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeContactWithSellerStateCopyWith<$Res> {
  factory $MakeContactWithSellerStateCopyWith(MakeContactWithSellerState value,
          $Res Function(MakeContactWithSellerState) then) =
      _$MakeContactWithSellerStateCopyWithImpl<$Res,
          MakeContactWithSellerState>;
}

/// @nodoc
class _$MakeContactWithSellerStateCopyWithImpl<$Res,
        $Val extends MakeContactWithSellerState>
    implements $MakeContactWithSellerStateCopyWith<$Res> {
  _$MakeContactWithSellerStateCopyWithImpl(this._value, this._then);

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
    extends _$MakeContactWithSellerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MakeContactWithSellerState.initial()';
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
    required TResult Function(int id) loading,
    required TResult Function(ConversationEntity conversation) succes,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? loading,
    TResult? Function(ConversationEntity conversation)? succes,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? loading,
    TResult Function(ConversationEntity conversation)? succes,
    TResult Function(String? error)? error,
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
    required TResult Function(_succes value) succes,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_succes value)? succes,
    TResult? Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_succes value)? succes,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MakeContactWithSellerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$MakeContactWithSellerStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_loading(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'MakeContactWithSellerState.loading(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loading &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      __$$_loadingCopyWithImpl<_$_loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) loading,
    required TResult Function(ConversationEntity conversation) succes,
    required TResult Function(String? error) error,
  }) {
    return loading(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? loading,
    TResult? Function(ConversationEntity conversation)? succes,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? loading,
    TResult Function(ConversationEntity conversation)? succes,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_succes value) succes,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_succes value)? succes,
    TResult? Function(_error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_succes value)? succes,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements MakeContactWithSellerState {
  const factory _loading({required final int id}) = _$_loading;

  int get id;
  @JsonKey(ignore: true)
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_succesCopyWith<$Res> {
  factory _$$_succesCopyWith(_$_succes value, $Res Function(_$_succes) then) =
      __$$_succesCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationEntity conversation});
}

/// @nodoc
class __$$_succesCopyWithImpl<$Res>
    extends _$MakeContactWithSellerStateCopyWithImpl<$Res, _$_succes>
    implements _$$_succesCopyWith<$Res> {
  __$$_succesCopyWithImpl(_$_succes _value, $Res Function(_$_succes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
  }) {
    return _then(_$_succes(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationEntity,
    ));
  }
}

/// @nodoc

class _$_succes implements _succes {
  const _$_succes({required this.conversation});

  @override
  final ConversationEntity conversation;

  @override
  String toString() {
    return 'MakeContactWithSellerState.succes(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_succes &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_succesCopyWith<_$_succes> get copyWith =>
      __$$_succesCopyWithImpl<_$_succes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) loading,
    required TResult Function(ConversationEntity conversation) succes,
    required TResult Function(String? error) error,
  }) {
    return succes(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? loading,
    TResult? Function(ConversationEntity conversation)? succes,
    TResult? Function(String? error)? error,
  }) {
    return succes?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? loading,
    TResult Function(ConversationEntity conversation)? succes,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_succes value) succes,
    required TResult Function(_error value) error,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_succes value)? succes,
    TResult? Function(_error value)? error,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_succes value)? succes,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _succes implements MakeContactWithSellerState {
  const factory _succes({required final ConversationEntity conversation}) =
      _$_succes;

  ConversationEntity get conversation;
  @JsonKey(ignore: true)
  _$$_succesCopyWith<_$_succes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCopyWith<$Res> {
  factory _$$_errorCopyWith(_$_error value, $Res Function(_$_error) then) =
      __$$_errorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_errorCopyWithImpl<$Res>
    extends _$MakeContactWithSellerStateCopyWithImpl<$Res, _$_error>
    implements _$$_errorCopyWith<$Res> {
  __$$_errorCopyWithImpl(_$_error _value, $Res Function(_$_error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_error(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_error implements _error {
  const _$_error(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'MakeContactWithSellerState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorCopyWith<_$_error> get copyWith =>
      __$$_errorCopyWithImpl<_$_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) loading,
    required TResult Function(ConversationEntity conversation) succes,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? loading,
    TResult? Function(ConversationEntity conversation)? succes,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? loading,
    TResult Function(ConversationEntity conversation)? succes,
    TResult Function(String? error)? error,
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
    required TResult Function(_succes value) succes,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_succes value)? succes,
    TResult? Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_succes value)? succes,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements MakeContactWithSellerState {
  const factory _error(final String? error) = _$_error;

  String? get error;
  @JsonKey(ignore: true)
  _$$_errorCopyWith<_$_error> get copyWith =>
      throw _privateConstructorUsedError;
}
