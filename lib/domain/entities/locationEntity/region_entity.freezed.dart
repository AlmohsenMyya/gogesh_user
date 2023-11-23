// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegionEntity _$RegionEntityFromJson(Map<String, dynamic> json) {
  return _RegionEntity.fromJson(json);
}

/// @nodoc
mixin _$RegionEntity {
  List<DataRegion>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionEntityCopyWith<RegionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionEntityCopyWith<$Res> {
  factory $RegionEntityCopyWith(
          RegionEntity value, $Res Function(RegionEntity) then) =
      _$RegionEntityCopyWithImpl<$Res, RegionEntity>;
  @useResult
  $Res call({List<DataRegion>? data});
}

/// @nodoc
class _$RegionEntityCopyWithImpl<$Res, $Val extends RegionEntity>
    implements $RegionEntityCopyWith<$Res> {
  _$RegionEntityCopyWithImpl(this._value, this._then);

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
              as List<DataRegion>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegionEntityCopyWith<$Res>
    implements $RegionEntityCopyWith<$Res> {
  factory _$$_RegionEntityCopyWith(
          _$_RegionEntity value, $Res Function(_$_RegionEntity) then) =
      __$$_RegionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataRegion>? data});
}

/// @nodoc
class __$$_RegionEntityCopyWithImpl<$Res>
    extends _$RegionEntityCopyWithImpl<$Res, _$_RegionEntity>
    implements _$$_RegionEntityCopyWith<$Res> {
  __$$_RegionEntityCopyWithImpl(
      _$_RegionEntity _value, $Res Function(_$_RegionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_RegionEntity(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataRegion>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegionEntity implements _RegionEntity {
  _$_RegionEntity({required final List<DataRegion>? data}) : _data = data;

  factory _$_RegionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RegionEntityFromJson(json);

  final List<DataRegion>? _data;
  @override
  List<DataRegion>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegionEntity(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegionEntity &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegionEntityCopyWith<_$_RegionEntity> get copyWith =>
      __$$_RegionEntityCopyWithImpl<_$_RegionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionEntityToJson(
      this,
    );
  }
}

abstract class _RegionEntity implements RegionEntity {
  factory _RegionEntity({required final List<DataRegion>? data}) =
      _$_RegionEntity;

  factory _RegionEntity.fromJson(Map<String, dynamic> json) =
      _$_RegionEntity.fromJson;

  @override
  List<DataRegion>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RegionEntityCopyWith<_$_RegionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
