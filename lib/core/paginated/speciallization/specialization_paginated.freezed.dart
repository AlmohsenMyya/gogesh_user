// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecializationPaginated _$SpecializationPaginatedFromJson(
    Map<String, dynamic> json) {
  return _SpecializationPaginated.fromJson(json);
}

/// @nodoc
mixin _$SpecializationPaginated {
  List<Specialization> get data => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationPaginatedCopyWith<SpecializationPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationPaginatedCopyWith<$Res> {
  factory $SpecializationPaginatedCopyWith(SpecializationPaginated value,
          $Res Function(SpecializationPaginated) then) =
      _$SpecializationPaginatedCopyWithImpl<$Res, SpecializationPaginated>;
  @useResult
  $Res call({List<Specialization> data, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$SpecializationPaginatedCopyWithImpl<$Res,
        $Val extends SpecializationPaginated>
    implements $SpecializationPaginatedCopyWith<$Res> {
  _$SpecializationPaginatedCopyWithImpl(this._value, this._then);

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
              as List<Specialization>,
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
abstract class _$$_SpecializationPaginatedCopyWith<$Res>
    implements $SpecializationPaginatedCopyWith<$Res> {
  factory _$$_SpecializationPaginatedCopyWith(_$_SpecializationPaginated value,
          $Res Function(_$_SpecializationPaginated) then) =
      __$$_SpecializationPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Specialization> data, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_SpecializationPaginatedCopyWithImpl<$Res>
    extends _$SpecializationPaginatedCopyWithImpl<$Res,
        _$_SpecializationPaginated>
    implements _$$_SpecializationPaginatedCopyWith<$Res> {
  __$$_SpecializationPaginatedCopyWithImpl(_$_SpecializationPaginated _value,
      $Res Function(_$_SpecializationPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_SpecializationPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Specialization>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecializationPaginated implements _SpecializationPaginated {
  const _$_SpecializationPaginated(
      {required final List<Specialization> data, required this.meta})
      : _data = data;

  factory _$_SpecializationPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_SpecializationPaginatedFromJson(json);

  final List<Specialization> _data;
  @override
  List<Specialization> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'SpecializationPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecializationPaginated &&
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
  _$$_SpecializationPaginatedCopyWith<_$_SpecializationPaginated>
      get copyWith =>
          __$$_SpecializationPaginatedCopyWithImpl<_$_SpecializationPaginated>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecializationPaginatedToJson(
      this,
    );
  }
}

abstract class _SpecializationPaginated implements SpecializationPaginated {
  const factory _SpecializationPaginated(
      {required final List<Specialization> data,
      required final Meta meta}) = _$_SpecializationPaginated;

  factory _SpecializationPaginated.fromJson(Map<String, dynamic> json) =
      _$_SpecializationPaginated.fromJson;

  @override
  List<Specialization> get data;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SpecializationPaginatedCopyWith<_$_SpecializationPaginated>
      get copyWith => throw _privateConstructorUsedError;
}
