// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sector _$SectorFromJson(Map<String, dynamic> json) {
  return _Sector.fromJson(json);
}

/// @nodoc
mixin _$Sector {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "commercial_activity_count")
  int? get companyCount => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectorCopyWith<Sector> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorCopyWith<$Res> {
  factory $SectorCopyWith(Sector value, $Res Function(Sector) then) =
      _$SectorCopyWithImpl<$Res, Sector>;
  @useResult
  $Res call(
      {String name,
      int id,
      @JsonKey(name: "commercial_activity_count") int? companyCount,
      String? image});
}

/// @nodoc
class _$SectorCopyWithImpl<$Res, $Val extends Sector>
    implements $SectorCopyWith<$Res> {
  _$SectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? companyCount = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyCount: freezed == companyCount
          ? _value.companyCount
          : companyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectorCopyWith<$Res> implements $SectorCopyWith<$Res> {
  factory _$$_SectorCopyWith(_$_Sector value, $Res Function(_$_Sector) then) =
      __$$_SectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      @JsonKey(name: "commercial_activity_count") int? companyCount,
      String? image});
}

/// @nodoc
class __$$_SectorCopyWithImpl<$Res>
    extends _$SectorCopyWithImpl<$Res, _$_Sector>
    implements _$$_SectorCopyWith<$Res> {
  __$$_SectorCopyWithImpl(_$_Sector _value, $Res Function(_$_Sector) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? companyCount = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Sector(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyCount: freezed == companyCount
          ? _value.companyCount
          : companyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sector implements _Sector {
  const _$_Sector(
      {required this.name,
      required this.id,
      @JsonKey(name: "commercial_activity_count") required this.companyCount,
      required this.image});

  factory _$_Sector.fromJson(Map<String, dynamic> json) =>
      _$$_SectorFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  @JsonKey(name: "commercial_activity_count")
  final int? companyCount;
  @override
  final String? image;

  @override
  String toString() {
    return 'Sector(name: $name, id: $id, companyCount: $companyCount, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sector &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyCount, companyCount) ||
                other.companyCount == companyCount) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, companyCount, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectorCopyWith<_$_Sector> get copyWith =>
      __$$_SectorCopyWithImpl<_$_Sector>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectorToJson(
      this,
    );
  }
}

abstract class _Sector implements Sector {
  const factory _Sector(
      {required final String name,
      required final int id,
      @JsonKey(name: "commercial_activity_count")
      required final int? companyCount,
      required final String? image}) = _$_Sector;

  factory _Sector.fromJson(Map<String, dynamic> json) = _$_Sector.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(name: "commercial_activity_count")
  int? get companyCount;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_SectorCopyWith<_$_Sector> get copyWith =>
      throw _privateConstructorUsedError;
}
