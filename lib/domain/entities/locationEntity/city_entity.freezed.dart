// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityEntity _$CityEntityFromJson(Map<String, dynamic> json) {
  return _CityEntity.fromJson(json);
}

/// @nodoc
mixin _$CityEntity {
  List<Datacity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityEntityCopyWith<CityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEntityCopyWith<$Res> {
  factory $CityEntityCopyWith(
          CityEntity value, $Res Function(CityEntity) then) =
      _$CityEntityCopyWithImpl<$Res, CityEntity>;
  @useResult
  $Res call({List<Datacity>? data});
}

/// @nodoc
class _$CityEntityCopyWithImpl<$Res, $Val extends CityEntity>
    implements $CityEntityCopyWith<$Res> {
  _$CityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datacity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CityEntityCopyWith<$Res>
    implements $CityEntityCopyWith<$Res> {
  factory _$$_CityEntityCopyWith(
          _$_CityEntity value, $Res Function(_$_CityEntity) then) =
      __$$_CityEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datacity>? data});
}

/// @nodoc
class __$$_CityEntityCopyWithImpl<$Res>
    extends _$CityEntityCopyWithImpl<$Res, _$_CityEntity>
    implements _$$_CityEntityCopyWith<$Res> {
  __$$_CityEntityCopyWithImpl(
      _$_CityEntity _value, $Res Function(_$_CityEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CityEntity(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datacity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityEntity implements _CityEntity {
  _$_CityEntity({required final List<Datacity>? data}) : _data = data;

  factory _$_CityEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CityEntityFromJson(json);

  final List<Datacity>? _data;
  @override
  List<Datacity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CityEntity(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityEntity &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityEntityCopyWith<_$_CityEntity> get copyWith =>
      __$$_CityEntityCopyWithImpl<_$_CityEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityEntityToJson(
      this,
    );
  }
}

abstract class _CityEntity implements CityEntity {
  factory _CityEntity({required final List<Datacity>? data}) = _$_CityEntity;

  factory _CityEntity.fromJson(Map<String, dynamic> json) =
      _$_CityEntity.fromJson;

  @override
  List<Datacity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CityEntityCopyWith<_$_CityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
