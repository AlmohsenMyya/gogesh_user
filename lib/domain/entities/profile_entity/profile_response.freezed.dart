// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  ProfileEntity get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call({ProfileEntity data});
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileResponseCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$_ProfileResponseCopyWith(
          _$_ProfileResponse value, $Res Function(_$_ProfileResponse) then) =
      __$$_ProfileResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileEntity data});
}

/// @nodoc
class __$$_ProfileResponseCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$_ProfileResponse>
    implements _$$_ProfileResponseCopyWith<$Res> {
  __$$_ProfileResponseCopyWithImpl(
      _$_ProfileResponse _value, $Res Function(_$_ProfileResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ProfileResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileResponse implements _ProfileResponse {
  _$_ProfileResponse({required this.data});

  factory _$_ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResponseFromJson(json);

  @override
  final ProfileEntity data;

  @override
  String toString() {
    return 'ProfileResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileResponseCopyWith<_$_ProfileResponse> get copyWith =>
      __$$_ProfileResponseCopyWithImpl<_$_ProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResponseToJson(
      this,
    );
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  factory _ProfileResponse({required final ProfileEntity data}) =
      _$_ProfileResponse;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileResponse.fromJson;

  @override
  ProfileEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileResponseCopyWith<_$_ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
