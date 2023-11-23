// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionsCopyWith<$Res> {
  factory $ExceptionsCopyWith(
          Exceptions value, $Res Function(Exceptions) then) =
      _$ExceptionsCopyWithImpl<$Res, Exceptions>;
}

/// @nodoc
class _$ExceptionsCopyWithImpl<$Res, $Val extends Exceptions>
    implements $ExceptionsCopyWith<$Res> {
  _$ExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkExceptionCopyWith<$Res> {
  factory _$$NetworkExceptionCopyWith(
          _$NetworkException value, $Res Function(_$NetworkException) then) =
      __$$NetworkExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkExceptionCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$NetworkException>
    implements _$$NetworkExceptionCopyWith<$Res> {
  __$$NetworkExceptionCopyWithImpl(
      _$NetworkException _value, $Res Function(_$NetworkException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkException extends NetworkException {
  const _$NetworkException(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Exceptions.network(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkExceptionCopyWith<_$NetworkException> get copyWith =>
      __$$NetworkExceptionCopyWithImpl<_$NetworkException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkException extends Exceptions {
  const factory NetworkException(final String message) = _$NetworkException;
  const NetworkException._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$NetworkExceptionCopyWith<_$NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherExceptionCopyWith<$Res> {
  factory _$$OtherExceptionCopyWith(
          _$OtherException value, $Res Function(_$OtherException) then) =
      __$$OtherExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$OtherExceptionCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$OtherException>
    implements _$$OtherExceptionCopyWith<$Res> {
  __$$OtherExceptionCopyWithImpl(
      _$OtherException _value, $Res Function(_$OtherException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$OtherException(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OtherException extends OtherException {
  const _$OtherException(this.data) : super._();

  @override
  final dynamic data;

  @override
  String toString() {
    return 'Exceptions.other(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherException &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherExceptionCopyWith<_$OtherException> get copyWith =>
      __$$OtherExceptionCopyWithImpl<_$OtherException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return other(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return other?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherException extends Exceptions {
  const factory OtherException(final dynamic data) = _$OtherException;
  const OtherException._() : super._();

  dynamic get data;
  @JsonKey(ignore: true)
  _$$OtherExceptionCopyWith<_$OtherException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationServiceNotEnabledCopyWith<$Res> {
  factory _$$LocationServiceNotEnabledCopyWith(
          _$LocationServiceNotEnabled value,
          $Res Function(_$LocationServiceNotEnabled) then) =
      __$$LocationServiceNotEnabledCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$LocationServiceNotEnabledCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$LocationServiceNotEnabled>
    implements _$$LocationServiceNotEnabledCopyWith<$Res> {
  __$$LocationServiceNotEnabledCopyWithImpl(_$LocationServiceNotEnabled _value,
      $Res Function(_$LocationServiceNotEnabled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LocationServiceNotEnabled(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$LocationServiceNotEnabled extends LocationServiceNotEnabled {
  const _$LocationServiceNotEnabled(this.data) : super._();

  @override
  final dynamic data;

  @override
  String toString() {
    return 'Exceptions.locationServiceNotEnabled(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationServiceNotEnabled &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationServiceNotEnabledCopyWith<_$LocationServiceNotEnabled>
      get copyWith => __$$LocationServiceNotEnabledCopyWithImpl<
          _$LocationServiceNotEnabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return locationServiceNotEnabled(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return locationServiceNotEnabled?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (locationServiceNotEnabled != null) {
      return locationServiceNotEnabled(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return locationServiceNotEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return locationServiceNotEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (locationServiceNotEnabled != null) {
      return locationServiceNotEnabled(this);
    }
    return orElse();
  }
}

abstract class LocationServiceNotEnabled extends Exceptions {
  const factory LocationServiceNotEnabled(final dynamic data) =
      _$LocationServiceNotEnabled;
  const LocationServiceNotEnabled._() : super._();

  dynamic get data;
  @JsonKey(ignore: true)
  _$$LocationServiceNotEnabledCopyWith<_$LocationServiceNotEnabled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailInvaludeCopyWith<$Res> {
  factory _$$EmailInvaludeCopyWith(
          _$EmailInvalude value, $Res Function(_$EmailInvalude) then) =
      __$$EmailInvaludeCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$EmailInvaludeCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$EmailInvalude>
    implements _$$EmailInvaludeCopyWith<$Res> {
  __$$EmailInvaludeCopyWithImpl(
      _$EmailInvalude _value, $Res Function(_$EmailInvalude) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$EmailInvalude(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$EmailInvalude extends EmailInvalude {
  const _$EmailInvalude(this.data) : super._();

  @override
  final dynamic data;

  @override
  String toString() {
    return 'Exceptions.emailInvalude(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailInvalude &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailInvaludeCopyWith<_$EmailInvalude> get copyWith =>
      __$$EmailInvaludeCopyWithImpl<_$EmailInvalude>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return emailInvalude(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return emailInvalude?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (emailInvalude != null) {
      return emailInvalude(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return emailInvalude(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return emailInvalude?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (emailInvalude != null) {
      return emailInvalude(this);
    }
    return orElse();
  }
}

abstract class EmailInvalude extends Exceptions {
  const factory EmailInvalude(final dynamic data) = _$EmailInvalude;
  const EmailInvalude._() : super._();

  dynamic get data;
  @JsonKey(ignore: true)
  _$$EmailInvaludeCopyWith<_$EmailInvalude> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidConfirmationCodeCopyWith<$Res> {
  factory _$$InvalidConfirmationCodeCopyWith(_$InvalidConfirmationCode value,
          $Res Function(_$InvalidConfirmationCode) then) =
      __$$InvalidConfirmationCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$InvalidConfirmationCodeCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$InvalidConfirmationCode>
    implements _$$InvalidConfirmationCodeCopyWith<$Res> {
  __$$InvalidConfirmationCodeCopyWithImpl(_$InvalidConfirmationCode _value,
      $Res Function(_$InvalidConfirmationCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InvalidConfirmationCode(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidConfirmationCode extends InvalidConfirmationCode {
  const _$InvalidConfirmationCode(this.data) : super._();

  @override
  final String data;

  @override
  String toString() {
    return 'Exceptions.invalidConfirmationCode(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidConfirmationCode &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidConfirmationCodeCopyWith<_$InvalidConfirmationCode> get copyWith =>
      __$$InvalidConfirmationCodeCopyWithImpl<_$InvalidConfirmationCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return invalidConfirmationCode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return invalidConfirmationCode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (invalidConfirmationCode != null) {
      return invalidConfirmationCode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return invalidConfirmationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return invalidConfirmationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (invalidConfirmationCode != null) {
      return invalidConfirmationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidConfirmationCode extends Exceptions {
  const factory InvalidConfirmationCode(final String data) =
      _$InvalidConfirmationCode;
  const InvalidConfirmationCode._() : super._();

  String get data;
  @JsonKey(ignore: true)
  _$$InvalidConfirmationCodeCopyWith<_$InvalidConfirmationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordInvaludeCopyWith<$Res> {
  factory _$$PasswordInvaludeCopyWith(
          _$PasswordInvalude value, $Res Function(_$PasswordInvalude) then) =
      __$$PasswordInvaludeCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$PasswordInvaludeCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$PasswordInvalude>
    implements _$$PasswordInvaludeCopyWith<$Res> {
  __$$PasswordInvaludeCopyWithImpl(
      _$PasswordInvalude _value, $Res Function(_$PasswordInvalude) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PasswordInvalude(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PasswordInvalude extends PasswordInvalude {
  const _$PasswordInvalude(this.data) : super._();

  @override
  final dynamic data;

  @override
  String toString() {
    return 'Exceptions.passwordInvalude(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordInvalude &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordInvaludeCopyWith<_$PasswordInvalude> get copyWith =>
      __$$PasswordInvaludeCopyWithImpl<_$PasswordInvalude>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return passwordInvalude(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return passwordInvalude?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (passwordInvalude != null) {
      return passwordInvalude(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return passwordInvalude(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return passwordInvalude?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (passwordInvalude != null) {
      return passwordInvalude(this);
    }
    return orElse();
  }
}

abstract class PasswordInvalude extends Exceptions {
  const factory PasswordInvalude(final dynamic data) = _$PasswordInvalude;
  const PasswordInvalude._() : super._();

  dynamic get data;
  @JsonKey(ignore: true)
  _$$PasswordInvaludeCopyWith<_$PasswordInvalude> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WrongCredentialsExceptionCopyWith<$Res> {
  factory _$$WrongCredentialsExceptionCopyWith(
          _$WrongCredentialsException value,
          $Res Function(_$WrongCredentialsException) then) =
      __$$WrongCredentialsExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$WrongCredentialsExceptionCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res, _$WrongCredentialsException>
    implements _$$WrongCredentialsExceptionCopyWith<$Res> {
  __$$WrongCredentialsExceptionCopyWithImpl(_$WrongCredentialsException _value,
      $Res Function(_$WrongCredentialsException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$WrongCredentialsException(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$WrongCredentialsException extends WrongCredentialsException {
  const _$WrongCredentialsException(this.data) : super._();

  @override
  final dynamic data;

  @override
  String toString() {
    return 'Exceptions.wrongCredentials(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongCredentialsException &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WrongCredentialsExceptionCopyWith<_$WrongCredentialsException>
      get copyWith => __$$WrongCredentialsExceptionCopyWithImpl<
          _$WrongCredentialsException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(dynamic data) other,
    required TResult Function(dynamic data) locationServiceNotEnabled,
    required TResult Function(dynamic data) emailInvalude,
    required TResult Function(String data) invalidConfirmationCode,
    required TResult Function(dynamic data) passwordInvalude,
    required TResult Function(dynamic data) wrongCredentials,
  }) {
    return wrongCredentials(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(dynamic data)? other,
    TResult? Function(dynamic data)? locationServiceNotEnabled,
    TResult? Function(dynamic data)? emailInvalude,
    TResult? Function(String data)? invalidConfirmationCode,
    TResult? Function(dynamic data)? passwordInvalude,
    TResult? Function(dynamic data)? wrongCredentials,
  }) {
    return wrongCredentials?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(dynamic data)? other,
    TResult Function(dynamic data)? locationServiceNotEnabled,
    TResult Function(dynamic data)? emailInvalude,
    TResult Function(String data)? invalidConfirmationCode,
    TResult Function(dynamic data)? passwordInvalude,
    TResult Function(dynamic data)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(OtherException value) other,
    required TResult Function(LocationServiceNotEnabled value)
        locationServiceNotEnabled,
    required TResult Function(EmailInvalude value) emailInvalude,
    required TResult Function(InvalidConfirmationCode value)
        invalidConfirmationCode,
    required TResult Function(PasswordInvalude value) passwordInvalude,
    required TResult Function(WrongCredentialsException value) wrongCredentials,
  }) {
    return wrongCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(OtherException value)? other,
    TResult? Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult? Function(EmailInvalude value)? emailInvalude,
    TResult? Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult? Function(PasswordInvalude value)? passwordInvalude,
    TResult? Function(WrongCredentialsException value)? wrongCredentials,
  }) {
    return wrongCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(OtherException value)? other,
    TResult Function(LocationServiceNotEnabled value)?
        locationServiceNotEnabled,
    TResult Function(EmailInvalude value)? emailInvalude,
    TResult Function(InvalidConfirmationCode value)? invalidConfirmationCode,
    TResult Function(PasswordInvalude value)? passwordInvalude,
    TResult Function(WrongCredentialsException value)? wrongCredentials,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials(this);
    }
    return orElse();
  }
}

abstract class WrongCredentialsException extends Exceptions {
  const factory WrongCredentialsException(final dynamic data) =
      _$WrongCredentialsException;
  const WrongCredentialsException._() : super._();

  dynamic get data;
  @JsonKey(ignore: true)
  _$$WrongCredentialsExceptionCopyWith<_$WrongCredentialsException>
      get copyWith => throw _privateConstructorUsedError;
}
