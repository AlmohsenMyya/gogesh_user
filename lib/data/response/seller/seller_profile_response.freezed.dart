// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellerProfileResponse _$SellerProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _SellerProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$SellerProfileResponse {
  SellerProfile get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerProfileResponseCopyWith<SellerProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerProfileResponseCopyWith<$Res> {
  factory $SellerProfileResponseCopyWith(SellerProfileResponse value,
          $Res Function(SellerProfileResponse) then) =
      _$SellerProfileResponseCopyWithImpl<$Res, SellerProfileResponse>;
  @useResult
  $Res call({SellerProfile data});

  $SellerProfileCopyWith<$Res> get data;
}

/// @nodoc
class _$SellerProfileResponseCopyWithImpl<$Res,
        $Val extends SellerProfileResponse>
    implements $SellerProfileResponseCopyWith<$Res> {
  _$SellerProfileResponseCopyWithImpl(this._value, this._then);

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
              as SellerProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SellerProfileCopyWith<$Res> get data {
    return $SellerProfileCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SellerProfileResponseCopyWith<$Res>
    implements $SellerProfileResponseCopyWith<$Res> {
  factory _$$_SellerProfileResponseCopyWith(_$_SellerProfileResponse value,
          $Res Function(_$_SellerProfileResponse) then) =
      __$$_SellerProfileResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellerProfile data});

  @override
  $SellerProfileCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SellerProfileResponseCopyWithImpl<$Res>
    extends _$SellerProfileResponseCopyWithImpl<$Res, _$_SellerProfileResponse>
    implements _$$_SellerProfileResponseCopyWith<$Res> {
  __$$_SellerProfileResponseCopyWithImpl(_$_SellerProfileResponse _value,
      $Res Function(_$_SellerProfileResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SellerProfileResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SellerProfile,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SellerProfileResponse
    with DiagnosticableTreeMixin
    implements _SellerProfileResponse {
  const _$_SellerProfileResponse({required this.data});

  factory _$_SellerProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SellerProfileResponseFromJson(json);

  @override
  final SellerProfile data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SellerProfileResponse(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SellerProfileResponse'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellerProfileResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellerProfileResponseCopyWith<_$_SellerProfileResponse> get copyWith =>
      __$$_SellerProfileResponseCopyWithImpl<_$_SellerProfileResponse>(
          this, _$identity);
}

abstract class _SellerProfileResponse implements SellerProfileResponse {
  const factory _SellerProfileResponse({required final SellerProfile data}) =
      _$_SellerProfileResponse;

  factory _SellerProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_SellerProfileResponse.fromJson;

  @override
  SellerProfile get data;
  @override
  @JsonKey(ignore: true)
  _$$_SellerProfileResponseCopyWith<_$_SellerProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
