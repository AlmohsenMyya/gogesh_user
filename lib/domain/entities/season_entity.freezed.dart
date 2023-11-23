// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeasonAndOccasion _$SeasonAndOccasionFromJson(Map<String, dynamic> json) {
  return _SeasonAndOccasion.fromJson(json);
}

/// @nodoc
mixin _$SeasonAndOccasion {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonAndOccasionCopyWith<SeasonAndOccasion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonAndOccasionCopyWith<$Res> {
  factory $SeasonAndOccasionCopyWith(
          SeasonAndOccasion value, $Res Function(SeasonAndOccasion) then) =
      _$SeasonAndOccasionCopyWithImpl<$Res, SeasonAndOccasion>;
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class _$SeasonAndOccasionCopyWithImpl<$Res, $Val extends SeasonAndOccasion>
    implements $SeasonAndOccasionCopyWith<$Res> {
  _$SeasonAndOccasionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeasonAndOccasionCopyWith<$Res>
    implements $SeasonAndOccasionCopyWith<$Res> {
  factory _$$_SeasonAndOccasionCopyWith(_$_SeasonAndOccasion value,
          $Res Function(_$_SeasonAndOccasion) then) =
      __$$_SeasonAndOccasionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class __$$_SeasonAndOccasionCopyWithImpl<$Res>
    extends _$SeasonAndOccasionCopyWithImpl<$Res, _$_SeasonAndOccasion>
    implements _$$_SeasonAndOccasionCopyWith<$Res> {
  __$$_SeasonAndOccasionCopyWithImpl(
      _$_SeasonAndOccasion _value, $Res Function(_$_SeasonAndOccasion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_SeasonAndOccasion(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonAndOccasion implements _SeasonAndOccasion {
  const _$_SeasonAndOccasion({required this.name, required this.id});

  factory _$_SeasonAndOccasion.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonAndOccasionFromJson(json);

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'SeasonAndOccasion(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeasonAndOccasion &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeasonAndOccasionCopyWith<_$_SeasonAndOccasion> get copyWith =>
      __$$_SeasonAndOccasionCopyWithImpl<_$_SeasonAndOccasion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonAndOccasionToJson(
      this,
    );
  }
}

abstract class _SeasonAndOccasion implements SeasonAndOccasion {
  const factory _SeasonAndOccasion(
      {required final String name,
      required final int id}) = _$_SeasonAndOccasion;

  factory _SeasonAndOccasion.fromJson(Map<String, dynamic> json) =
      _$_SeasonAndOccasion.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonAndOccasionCopyWith<_$_SeasonAndOccasion> get copyWith =>
      throw _privateConstructorUsedError;
}
