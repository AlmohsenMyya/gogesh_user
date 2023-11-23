// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionPaginated _$SectionPaginatedFromJson(Map<String, dynamic> json) {
  return _SectionPaginated.fromJson(json);
}

/// @nodoc
mixin _$SectionPaginated {
  List<SectionEntity> get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionPaginatedCopyWith<SectionPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionPaginatedCopyWith<$Res> {
  factory $SectionPaginatedCopyWith(
          SectionPaginated value, $Res Function(SectionPaginated) then) =
      _$SectionPaginatedCopyWithImpl<$Res, SectionPaginated>;
  @useResult
  $Res call({List<SectionEntity> data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SectionPaginatedCopyWithImpl<$Res, $Val extends SectionPaginated>
    implements $SectionPaginatedCopyWith<$Res> {
  _$SectionPaginatedCopyWithImpl(this._value, this._then);

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
              as List<SectionEntity>,
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
abstract class _$$_SectionPaginatedCopyWith<$Res>
    implements $SectionPaginatedCopyWith<$Res> {
  factory _$$_SectionPaginatedCopyWith(
          _$_SectionPaginated value, $Res Function(_$_SectionPaginated) then) =
      __$$_SectionPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SectionEntity> data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_SectionPaginatedCopyWithImpl<$Res>
    extends _$SectionPaginatedCopyWithImpl<$Res, _$_SectionPaginated>
    implements _$$_SectionPaginatedCopyWith<$Res> {
  __$$_SectionPaginatedCopyWithImpl(
      _$_SectionPaginated _value, $Res Function(_$_SectionPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_SectionPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SectionEntity>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectionPaginated implements _SectionPaginated {
  const _$_SectionPaginated(
      {required final List<SectionEntity> data, required this.meta})
      : _data = data;

  factory _$_SectionPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_SectionPaginatedFromJson(json);

  final List<SectionEntity> _data;
  @override
  List<SectionEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'SectionPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionPaginated &&
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
  _$$_SectionPaginatedCopyWith<_$_SectionPaginated> get copyWith =>
      __$$_SectionPaginatedCopyWithImpl<_$_SectionPaginated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionPaginatedToJson(
      this,
    );
  }
}

abstract class _SectionPaginated implements SectionPaginated {
  const factory _SectionPaginated(
      {required final List<SectionEntity> data,
      required final Meta? meta}) = _$_SectionPaginated;

  factory _SectionPaginated.fromJson(Map<String, dynamic> json) =
      _$_SectionPaginated.fromJson;

  @override
  List<SectionEntity> get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SectionPaginatedCopyWith<_$_SectionPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
