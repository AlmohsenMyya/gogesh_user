// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) {
  return _ServiceEntity.fromJson(json);
}

/// @nodoc
mixin _$ServiceEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "has_sections")
  bool get hasSections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceEntityCopyWith<ServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceEntityCopyWith<$Res> {
  factory $ServiceEntityCopyWith(
          ServiceEntity value, $Res Function(ServiceEntity) then) =
      _$ServiceEntityCopyWithImpl<$Res, ServiceEntity>;
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: "has_sections") bool hasSections});
}

/// @nodoc
class _$ServiceEntityCopyWithImpl<$Res, $Val extends ServiceEntity>
    implements $ServiceEntityCopyWith<$Res> {
  _$ServiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasSections = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasSections: null == hasSections
          ? _value.hasSections
          : hasSections // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceEntityCopyWith<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  factory _$$_ServiceEntityCopyWith(
          _$_ServiceEntity value, $Res Function(_$_ServiceEntity) then) =
      __$$_ServiceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: "has_sections") bool hasSections});
}

/// @nodoc
class __$$_ServiceEntityCopyWithImpl<$Res>
    extends _$ServiceEntityCopyWithImpl<$Res, _$_ServiceEntity>
    implements _$$_ServiceEntityCopyWith<$Res> {
  __$$_ServiceEntityCopyWithImpl(
      _$_ServiceEntity _value, $Res Function(_$_ServiceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasSections = null,
  }) {
    return _then(_$_ServiceEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasSections: null == hasSections
          ? _value.hasSections
          : hasSections // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceEntity with DiagnosticableTreeMixin implements _ServiceEntity {
  const _$_ServiceEntity(
      {required this.id,
      required this.name,
      @JsonKey(name: "has_sections") required this.hasSections});

  factory _$_ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "has_sections")
  final bool hasSections;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceEntity(id: $id, name: $name, hasSections: $hasSections)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('hasSections', hasSections));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasSections, hasSections) ||
                other.hasSections == hasSections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, hasSections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceEntityCopyWith<_$_ServiceEntity> get copyWith =>
      __$$_ServiceEntityCopyWithImpl<_$_ServiceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceEntityToJson(
      this,
    );
  }
}

abstract class _ServiceEntity implements ServiceEntity {
  const factory _ServiceEntity(
          {required final int id,
          required final String name,
          @JsonKey(name: "has_sections") required final bool hasSections}) =
      _$_ServiceEntity;

  factory _ServiceEntity.fromJson(Map<String, dynamic> json) =
      _$_ServiceEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "has_sections")
  bool get hasSections;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceEntityCopyWith<_$_ServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
