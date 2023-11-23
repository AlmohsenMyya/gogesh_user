// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityPaginated _$ActivityPaginatedFromJson(Map<String, dynamic> json) {
  return _ActivityPaginated.fromJson(json);
}

/// @nodoc
mixin _$ActivityPaginated {
  List<Activity> get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityPaginatedCopyWith<ActivityPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityPaginatedCopyWith<$Res> {
  factory $ActivityPaginatedCopyWith(
          ActivityPaginated value, $Res Function(ActivityPaginated) then) =
      _$ActivityPaginatedCopyWithImpl<$Res, ActivityPaginated>;
  @useResult
  $Res call({List<Activity> data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ActivityPaginatedCopyWithImpl<$Res, $Val extends ActivityPaginated>
    implements $ActivityPaginatedCopyWith<$Res> {
  _$ActivityPaginatedCopyWithImpl(this._value, this._then);

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
              as List<Activity>,
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
abstract class _$$_ActivityPaginatedCopyWith<$Res>
    implements $ActivityPaginatedCopyWith<$Res> {
  factory _$$_ActivityPaginatedCopyWith(_$_ActivityPaginated value,
          $Res Function(_$_ActivityPaginated) then) =
      __$$_ActivityPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Activity> data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ActivityPaginatedCopyWithImpl<$Res>
    extends _$ActivityPaginatedCopyWithImpl<$Res, _$_ActivityPaginated>
    implements _$$_ActivityPaginatedCopyWith<$Res> {
  __$$_ActivityPaginatedCopyWithImpl(
      _$_ActivityPaginated _value, $Res Function(_$_ActivityPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_ActivityPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityPaginated implements _ActivityPaginated {
  const _$_ActivityPaginated(
      {required final List<Activity> data, required this.meta})
      : _data = data;

  factory _$_ActivityPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityPaginatedFromJson(json);

  final List<Activity> _data;
  @override
  List<Activity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'ActivityPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityPaginated &&
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
  _$$_ActivityPaginatedCopyWith<_$_ActivityPaginated> get copyWith =>
      __$$_ActivityPaginatedCopyWithImpl<_$_ActivityPaginated>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityPaginatedToJson(
      this,
    );
  }
}

abstract class _ActivityPaginated implements ActivityPaginated {
  const factory _ActivityPaginated(
      {required final List<Activity> data,
      required final Meta? meta}) = _$_ActivityPaginated;

  factory _ActivityPaginated.fromJson(Map<String, dynamic> json) =
      _$_ActivityPaginated.fromJson;

  @override
  List<Activity> get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityPaginatedCopyWith<_$_ActivityPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
