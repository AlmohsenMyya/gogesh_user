// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagePusherResponse _$MessagePusherResponseFromJson(
    Map<String, dynamic> json) {
  return _MessagePusherResponse.fromJson(json);
}

/// @nodoc
mixin _$MessagePusherResponse {
  MessagePusherEntity? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagePusherResponseCopyWith<MessagePusherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePusherResponseCopyWith<$Res> {
  factory $MessagePusherResponseCopyWith(MessagePusherResponse value,
          $Res Function(MessagePusherResponse) then) =
      _$MessagePusherResponseCopyWithImpl<$Res, MessagePusherResponse>;
  @useResult
  $Res call({MessagePusherEntity? message});
}

/// @nodoc
class _$MessagePusherResponseCopyWithImpl<$Res,
        $Val extends MessagePusherResponse>
    implements $MessagePusherResponseCopyWith<$Res> {
  _$MessagePusherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessagePusherEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessagePusherResponseCopyWith<$Res>
    implements $MessagePusherResponseCopyWith<$Res> {
  factory _$$_MessagePusherResponseCopyWith(_$_MessagePusherResponse value,
          $Res Function(_$_MessagePusherResponse) then) =
      __$$_MessagePusherResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessagePusherEntity? message});
}

/// @nodoc
class __$$_MessagePusherResponseCopyWithImpl<$Res>
    extends _$MessagePusherResponseCopyWithImpl<$Res, _$_MessagePusherResponse>
    implements _$$_MessagePusherResponseCopyWith<$Res> {
  __$$_MessagePusherResponseCopyWithImpl(_$_MessagePusherResponse _value,
      $Res Function(_$_MessagePusherResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_MessagePusherResponse(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessagePusherEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagePusherResponse implements _MessagePusherResponse {
  _$_MessagePusherResponse(this.message);

  factory _$_MessagePusherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MessagePusherResponseFromJson(json);

  @override
  final MessagePusherEntity? message;

  @override
  String toString() {
    return 'MessagePusherResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagePusherResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagePusherResponseCopyWith<_$_MessagePusherResponse> get copyWith =>
      __$$_MessagePusherResponseCopyWithImpl<_$_MessagePusherResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagePusherResponseToJson(
      this,
    );
  }
}

abstract class _MessagePusherResponse implements MessagePusherResponse {
  factory _MessagePusherResponse(final MessagePusherEntity? message) =
      _$_MessagePusherResponse;

  factory _MessagePusherResponse.fromJson(Map<String, dynamic> json) =
      _$_MessagePusherResponse.fromJson;

  @override
  MessagePusherEntity? get message;
  @override
  @JsonKey(ignore: true)
  _$$_MessagePusherResponseCopyWith<_$_MessagePusherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
