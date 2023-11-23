// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionEntity _$SectionEntityFromJson(Map<String, dynamic> json) {
  return _SectionEntity.fromJson(json);
}

/// @nodoc
mixin _$SectionEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "services_id")
  int get serviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionEntityCopyWith<SectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionEntityCopyWith<$Res> {
  factory $SectionEntityCopyWith(
          SectionEntity value, $Res Function(SectionEntity) then) =
      _$SectionEntityCopyWithImpl<$Res, SectionEntity>;
  @useResult
  $Res call({int id, String name, @JsonKey(name: "services_id") int serviceId});
}

/// @nodoc
class _$SectionEntityCopyWithImpl<$Res, $Val extends SectionEntity>
    implements $SectionEntityCopyWith<$Res> {
  _$SectionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? serviceId = null,
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
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionEntityCopyWith<$Res>
    implements $SectionEntityCopyWith<$Res> {
  factory _$$_SectionEntityCopyWith(
          _$_SectionEntity value, $Res Function(_$_SectionEntity) then) =
      __$$_SectionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: "services_id") int serviceId});
}

/// @nodoc
class __$$_SectionEntityCopyWithImpl<$Res>
    extends _$SectionEntityCopyWithImpl<$Res, _$_SectionEntity>
    implements _$$_SectionEntityCopyWith<$Res> {
  __$$_SectionEntityCopyWithImpl(
      _$_SectionEntity _value, $Res Function(_$_SectionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? serviceId = null,
  }) {
    return _then(_$_SectionEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectionEntity with DiagnosticableTreeMixin implements _SectionEntity {
  const _$_SectionEntity(
      {required this.id,
      required this.name,
      @JsonKey(name: "services_id") required this.serviceId});

  factory _$_SectionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SectionEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "services_id")
  final int serviceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SectionEntity(id: $id, name: $name, serviceId: $serviceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SectionEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('serviceId', serviceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, serviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionEntityCopyWith<_$_SectionEntity> get copyWith =>
      __$$_SectionEntityCopyWithImpl<_$_SectionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionEntityToJson(
      this,
    );
  }
}

abstract class _SectionEntity implements SectionEntity {
  const factory _SectionEntity(
          {required final int id,
          required final String name,
          @JsonKey(name: "services_id") required final int serviceId}) =
      _$_SectionEntity;

  factory _SectionEntity.fromJson(Map<String, dynamic> json) =
      _$_SectionEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "services_id")
  int get serviceId;
  @override
  @JsonKey(ignore: true)
  _$$_SectionEntityCopyWith<_$_SectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
