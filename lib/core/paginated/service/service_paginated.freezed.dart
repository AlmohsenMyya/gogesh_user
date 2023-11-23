// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicePaginated _$ServicePaginatedFromJson(Map<String, dynamic> json) {
  return _ServicePaginated.fromJson(json);
}

/// @nodoc
mixin _$ServicePaginated {
  List<ServiceEntity> get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicePaginatedCopyWith<ServicePaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicePaginatedCopyWith<$Res> {
  factory $ServicePaginatedCopyWith(
          ServicePaginated value, $Res Function(ServicePaginated) then) =
      _$ServicePaginatedCopyWithImpl<$Res, ServicePaginated>;
  @useResult
  $Res call({List<ServiceEntity> data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ServicePaginatedCopyWithImpl<$Res, $Val extends ServicePaginated>
    implements $ServicePaginatedCopyWith<$Res> {
  _$ServicePaginatedCopyWithImpl(this._value, this._then);

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
              as List<ServiceEntity>,
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
abstract class _$$_ServicePaginatedCopyWith<$Res>
    implements $ServicePaginatedCopyWith<$Res> {
  factory _$$_ServicePaginatedCopyWith(
          _$_ServicePaginated value, $Res Function(_$_ServicePaginated) then) =
      __$$_ServicePaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceEntity> data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ServicePaginatedCopyWithImpl<$Res>
    extends _$ServicePaginatedCopyWithImpl<$Res, _$_ServicePaginated>
    implements _$$_ServicePaginatedCopyWith<$Res> {
  __$$_ServicePaginatedCopyWithImpl(
      _$_ServicePaginated _value, $Res Function(_$_ServicePaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_ServicePaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServicePaginated implements _ServicePaginated {
  const _$_ServicePaginated(
      {required final List<ServiceEntity> data, required this.meta})
      : _data = data;

  factory _$_ServicePaginated.fromJson(Map<String, dynamic> json) =>
      _$$_ServicePaginatedFromJson(json);

  final List<ServiceEntity> _data;
  @override
  List<ServiceEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'ServicePaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicePaginated &&
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
  _$$_ServicePaginatedCopyWith<_$_ServicePaginated> get copyWith =>
      __$$_ServicePaginatedCopyWithImpl<_$_ServicePaginated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicePaginatedToJson(
      this,
    );
  }
}

abstract class _ServicePaginated implements ServicePaginated {
  const factory _ServicePaginated(
      {required final List<ServiceEntity> data,
      required final Meta? meta}) = _$_ServicePaginated;

  factory _ServicePaginated.fromJson(Map<String, dynamic> json) =
      _$_ServicePaginated.fromJson;

  @override
  List<ServiceEntity> get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ServicePaginatedCopyWith<_$_ServicePaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
