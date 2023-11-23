// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferResponse _$OfferResponseFromJson(Map<String, dynamic> json) {
  return _OfferResponse.fromJson(json);
}

/// @nodoc
mixin _$OfferResponse {
  List<OfferEntity> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferResponseCopyWith<OfferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferResponseCopyWith<$Res> {
  factory $OfferResponseCopyWith(
          OfferResponse value, $Res Function(OfferResponse) then) =
      _$OfferResponseCopyWithImpl<$Res, OfferResponse>;
  @useResult
  $Res call({List<OfferEntity> data});
}

/// @nodoc
class _$OfferResponseCopyWithImpl<$Res, $Val extends OfferResponse>
    implements $OfferResponseCopyWith<$Res> {
  _$OfferResponseCopyWithImpl(this._value, this._then);

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
              as List<OfferEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferResponseCopyWith<$Res>
    implements $OfferResponseCopyWith<$Res> {
  factory _$$_OfferResponseCopyWith(
          _$_OfferResponse value, $Res Function(_$_OfferResponse) then) =
      __$$_OfferResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OfferEntity> data});
}

/// @nodoc
class __$$_OfferResponseCopyWithImpl<$Res>
    extends _$OfferResponseCopyWithImpl<$Res, _$_OfferResponse>
    implements _$$_OfferResponseCopyWith<$Res> {
  __$$_OfferResponseCopyWithImpl(
      _$_OfferResponse _value, $Res Function(_$_OfferResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_OfferResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferResponse implements _OfferResponse {
  _$_OfferResponse({required final List<OfferEntity> data}) : _data = data;

  factory _$_OfferResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OfferResponseFromJson(json);

  final List<OfferEntity> _data;
  @override
  List<OfferEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OfferResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferResponseCopyWith<_$_OfferResponse> get copyWith =>
      __$$_OfferResponseCopyWithImpl<_$_OfferResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferResponseToJson(
      this,
    );
  }
}

abstract class _OfferResponse implements OfferResponse {
  factory _OfferResponse({required final List<OfferEntity> data}) =
      _$_OfferResponse;

  factory _OfferResponse.fromJson(Map<String, dynamic> json) =
      _$_OfferResponse.fromJson;

  @override
  List<OfferEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$_OfferResponseCopyWith<_$_OfferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
