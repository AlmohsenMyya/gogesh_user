// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactPusherResponse _$ContactPusherResponseFromJson(
    Map<String, dynamic> json) {
  return _ContactResponse.fromJson(json);
}

/// @nodoc
mixin _$ContactPusherResponse {
  ContactPusherEntity? get contact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPusherResponseCopyWith<ContactPusherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPusherResponseCopyWith<$Res> {
  factory $ContactPusherResponseCopyWith(ContactPusherResponse value,
          $Res Function(ContactPusherResponse) then) =
      _$ContactPusherResponseCopyWithImpl<$Res, ContactPusherResponse>;
  @useResult
  $Res call({ContactPusherEntity? contact});
}

/// @nodoc
class _$ContactPusherResponseCopyWithImpl<$Res,
        $Val extends ContactPusherResponse>
    implements $ContactPusherResponseCopyWith<$Res> {
  _$ContactPusherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactPusherEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactResponseCopyWith<$Res>
    implements $ContactPusherResponseCopyWith<$Res> {
  factory _$$_ContactResponseCopyWith(
          _$_ContactResponse value, $Res Function(_$_ContactResponse) then) =
      __$$_ContactResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContactPusherEntity? contact});
}

/// @nodoc
class __$$_ContactResponseCopyWithImpl<$Res>
    extends _$ContactPusherResponseCopyWithImpl<$Res, _$_ContactResponse>
    implements _$$_ContactResponseCopyWith<$Res> {
  __$$_ContactResponseCopyWithImpl(
      _$_ContactResponse _value, $Res Function(_$_ContactResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$_ContactResponse(
      freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactPusherEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactResponse implements _ContactResponse {
  _$_ContactResponse(this.contact);

  factory _$_ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContactResponseFromJson(json);

  @override
  final ContactPusherEntity? contact;

  @override
  String toString() {
    return 'ContactPusherResponse(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactResponse &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactResponseCopyWith<_$_ContactResponse> get copyWith =>
      __$$_ContactResponseCopyWithImpl<_$_ContactResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactResponseToJson(
      this,
    );
  }
}

abstract class _ContactResponse implements ContactPusherResponse {
  factory _ContactResponse(final ContactPusherEntity? contact) =
      _$_ContactResponse;

  factory _ContactResponse.fromJson(Map<String, dynamic> json) =
      _$_ContactResponse.fromJson;

  @override
  ContactPusherEntity? get contact;
  @override
  @JsonKey(ignore: true)
  _$$_ContactResponseCopyWith<_$_ContactResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
