// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectorPaginated _$SectorPaginatedFromJson(Map<String, dynamic> json) {
  return _SectorPaginated.fromJson(json);
}

/// @nodoc
mixin _$SectorPaginated {
  List<Sector> get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectorPaginatedCopyWith<SectorPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorPaginatedCopyWith<$Res> {
  factory $SectorPaginatedCopyWith(
          SectorPaginated value, $Res Function(SectorPaginated) then) =
      _$SectorPaginatedCopyWithImpl<$Res, SectorPaginated>;
  @useResult
  $Res call({List<Sector> data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SectorPaginatedCopyWithImpl<$Res, $Val extends SectorPaginated>
    implements $SectorPaginatedCopyWith<$Res> {
  _$SectorPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Sector>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SectorPaginatedCopyWith<$Res>
    implements $SectorPaginatedCopyWith<$Res> {
  factory _$$_SectorPaginatedCopyWith(
          _$_SectorPaginated value, $Res Function(_$_SectorPaginated) then) =
      __$$_SectorPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Sector> data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_SectorPaginatedCopyWithImpl<$Res>
    extends _$SectorPaginatedCopyWithImpl<$Res, _$_SectorPaginated>
    implements _$$_SectorPaginatedCopyWith<$Res> {
  __$$_SectorPaginatedCopyWithImpl(
      _$_SectorPaginated _value, $Res Function(_$_SectorPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_SectorPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Sector>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectorPaginated implements _SectorPaginated {
  const _$_SectorPaginated(
      {required final List<Sector> data, required this.meta})
      : _data = data;

  factory _$_SectorPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_SectorPaginatedFromJson(json);

  final List<Sector> _data;
  @override
  List<Sector> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'SectorPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectorPaginated &&
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
  _$$_SectorPaginatedCopyWith<_$_SectorPaginated> get copyWith =>
      __$$_SectorPaginatedCopyWithImpl<_$_SectorPaginated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectorPaginatedToJson(
      this,
    );
  }
}

abstract class _SectorPaginated implements SectorPaginated {
  const factory _SectorPaginated(
      {required final List<Sector> data,
      required final Meta? meta}) = _$_SectorPaginated;

  factory _SectorPaginated.fromJson(Map<String, dynamic> json) =
      _$_SectorPaginated.fromJson;

  @override
  List<Sector> get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SectorPaginatedCopyWith<_$_SectorPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
