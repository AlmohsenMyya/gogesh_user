// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferPaginated _$OfferPaginatedFromJson(Map<String, dynamic> json) {
  return _OfferPaginated.fromJson(json);
}

/// @nodoc
mixin _$OfferPaginated {
  List<Offer> get data => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferPaginatedCopyWith<OfferPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferPaginatedCopyWith<$Res> {
  factory $OfferPaginatedCopyWith(
          OfferPaginated value, $Res Function(OfferPaginated) then) =
      _$OfferPaginatedCopyWithImpl<$Res, OfferPaginated>;
  @useResult
  $Res call({List<Offer> data, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$OfferPaginatedCopyWithImpl<$Res, $Val extends OfferPaginated>
    implements $OfferPaginatedCopyWith<$Res> {
  _$OfferPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OfferPaginatedCopyWith<$Res>
    implements $OfferPaginatedCopyWith<$Res> {
  factory _$$_OfferPaginatedCopyWith(
          _$_OfferPaginated value, $Res Function(_$_OfferPaginated) then) =
      __$$_OfferPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> data, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_OfferPaginatedCopyWithImpl<$Res>
    extends _$OfferPaginatedCopyWithImpl<$Res, _$_OfferPaginated>
    implements _$$_OfferPaginatedCopyWith<$Res> {
  __$$_OfferPaginatedCopyWithImpl(
      _$_OfferPaginated _value, $Res Function(_$_OfferPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_OfferPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPaginated implements _OfferPaginated {
  const _$_OfferPaginated({required final List<Offer> data, required this.meta})
      : _data = data;

  factory _$_OfferPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPaginatedFromJson(json);

  final List<Offer> _data;
  @override
  List<Offer> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'OfferPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPaginated &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferPaginatedCopyWith<_$_OfferPaginated> get copyWith =>
      __$$_OfferPaginatedCopyWithImpl<_$_OfferPaginated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferPaginatedToJson(
      this,
    );
  }
}

abstract class _OfferPaginated implements OfferPaginated {
  const factory _OfferPaginated(
      {required final List<Offer> data,
      required final Meta meta}) = _$_OfferPaginated;

  factory _OfferPaginated.fromJson(Map<String, dynamic> json) =
      _$_OfferPaginated.fromJson;

  @override
  List<Offer> get data;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPaginatedCopyWith<_$_OfferPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
