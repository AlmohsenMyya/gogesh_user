// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdsPaginated _$AdsPaginatedFromJson(Map<String, dynamic> json) {
  return _AdsPaginated.fromJson(json);
}

/// @nodoc
mixin _$AdsPaginated {
  List<Ad> get data => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsPaginatedCopyWith<AdsPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsPaginatedCopyWith<$Res> {
  factory $AdsPaginatedCopyWith(
          AdsPaginated value, $Res Function(AdsPaginated) then) =
      _$AdsPaginatedCopyWithImpl<$Res, AdsPaginated>;
  @useResult
  $Res call({List<Ad> data, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AdsPaginatedCopyWithImpl<$Res, $Val extends AdsPaginated>
    implements $AdsPaginatedCopyWith<$Res> {
  _$AdsPaginatedCopyWithImpl(this._value, this._then);

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
              as List<Ad>,
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
abstract class _$$_AdsPaginatedCopyWith<$Res>
    implements $AdsPaginatedCopyWith<$Res> {
  factory _$$_AdsPaginatedCopyWith(
          _$_AdsPaginated value, $Res Function(_$_AdsPaginated) then) =
      __$$_AdsPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ad> data, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_AdsPaginatedCopyWithImpl<$Res>
    extends _$AdsPaginatedCopyWithImpl<$Res, _$_AdsPaginated>
    implements _$$_AdsPaginatedCopyWith<$Res> {
  __$$_AdsPaginatedCopyWithImpl(
      _$_AdsPaginated _value, $Res Function(_$_AdsPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_AdsPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdsPaginated implements _AdsPaginated {
  const _$_AdsPaginated({required final List<Ad> data, required this.meta})
      : _data = data;

  factory _$_AdsPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_AdsPaginatedFromJson(json);

  final List<Ad> _data;
  @override
  List<Ad> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'AdsPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdsPaginated &&
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
  _$$_AdsPaginatedCopyWith<_$_AdsPaginated> get copyWith =>
      __$$_AdsPaginatedCopyWithImpl<_$_AdsPaginated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdsPaginatedToJson(
      this,
    );
  }
}

abstract class _AdsPaginated implements AdsPaginated {
  const factory _AdsPaginated(
      {required final List<Ad> data,
      required final Meta meta}) = _$_AdsPaginated;

  factory _AdsPaginated.fromJson(Map<String, dynamic> json) =
      _$_AdsPaginated.fromJson;

  @override
  List<Ad> get data;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_AdsPaginatedCopyWith<_$_AdsPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
