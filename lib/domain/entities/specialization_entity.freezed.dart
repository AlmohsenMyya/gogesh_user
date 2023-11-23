// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Specialization _$SpecializationFromJson(Map<String, dynamic> json) {
  return _Specialization.fromJson(json);
}

/// @nodoc
mixin _$Specialization {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_id")
  int get activityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationCopyWith<Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationCopyWith<$Res> {
  factory $SpecializationCopyWith(
          Specialization value, $Res Function(Specialization) then) =
      _$SpecializationCopyWithImpl<$Res, Specialization>;
  @useResult
  $Res call(
      {String name, int id, @JsonKey(name: "activity_id") int activityId});
}

/// @nodoc
class _$SpecializationCopyWithImpl<$Res, $Val extends Specialization>
    implements $SpecializationCopyWith<$Res> {
  _$SpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? activityId = null,
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
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpecializationCopyWith<$Res>
    implements $SpecializationCopyWith<$Res> {
  factory _$$_SpecializationCopyWith(
          _$_Specialization value, $Res Function(_$_Specialization) then) =
      __$$_SpecializationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, int id, @JsonKey(name: "activity_id") int activityId});
}

/// @nodoc
class __$$_SpecializationCopyWithImpl<$Res>
    extends _$SpecializationCopyWithImpl<$Res, _$_Specialization>
    implements _$$_SpecializationCopyWith<$Res> {
  __$$_SpecializationCopyWithImpl(
      _$_Specialization _value, $Res Function(_$_Specialization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? activityId = null,
  }) {
    return _then(_$_Specialization(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Specialization implements _Specialization {
  const _$_Specialization(
      {required this.name,
      required this.id,
      @JsonKey(name: "activity_id") required this.activityId});

  factory _$_Specialization.fromJson(Map<String, dynamic> json) =>
      _$$_SpecializationFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  @JsonKey(name: "activity_id")
  final int activityId;

  @override
  String toString() {
    return 'Specialization(name: $name, id: $id, activityId: $activityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Specialization &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, activityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpecializationCopyWith<_$_Specialization> get copyWith =>
      __$$_SpecializationCopyWithImpl<_$_Specialization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecializationToJson(
      this,
    );
  }
}

abstract class _Specialization implements Specialization {
  const factory _Specialization(
          {required final String name,
          required final int id,
          @JsonKey(name: "activity_id") required final int activityId}) =
      _$_Specialization;

  factory _Specialization.fromJson(Map<String, dynamic> json) =
      _$_Specialization.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(name: "activity_id")
  int get activityId;
  @override
  @JsonKey(ignore: true)
  _$$_SpecializationCopyWith<_$_Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}
