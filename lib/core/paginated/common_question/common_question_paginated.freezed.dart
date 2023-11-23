// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_question_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonQuestionPaginated _$CommonQuestionPaginatedFromJson(
    Map<String, dynamic> json) {
  return _CommonQuestionPaginated.fromJson(json);
}

/// @nodoc
mixin _$CommonQuestionPaginated {
  List<CommonQuestion> get data => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonQuestionPaginatedCopyWith<CommonQuestionPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonQuestionPaginatedCopyWith<$Res> {
  factory $CommonQuestionPaginatedCopyWith(CommonQuestionPaginated value,
          $Res Function(CommonQuestionPaginated) then) =
      _$CommonQuestionPaginatedCopyWithImpl<$Res, CommonQuestionPaginated>;
  @useResult
  $Res call({List<CommonQuestion> data, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$CommonQuestionPaginatedCopyWithImpl<$Res,
        $Val extends CommonQuestionPaginated>
    implements $CommonQuestionPaginatedCopyWith<$Res> {
  _$CommonQuestionPaginatedCopyWithImpl(this._value, this._then);

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
              as List<CommonQuestion>,
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
abstract class _$$_CommonQuestionPaginatedCopyWith<$Res>
    implements $CommonQuestionPaginatedCopyWith<$Res> {
  factory _$$_CommonQuestionPaginatedCopyWith(_$_CommonQuestionPaginated value,
          $Res Function(_$_CommonQuestionPaginated) then) =
      __$$_CommonQuestionPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommonQuestion> data, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_CommonQuestionPaginatedCopyWithImpl<$Res>
    extends _$CommonQuestionPaginatedCopyWithImpl<$Res,
        _$_CommonQuestionPaginated>
    implements _$$_CommonQuestionPaginatedCopyWith<$Res> {
  __$$_CommonQuestionPaginatedCopyWithImpl(_$_CommonQuestionPaginated _value,
      $Res Function(_$_CommonQuestionPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_CommonQuestionPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CommonQuestion>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonQuestionPaginated
    with DiagnosticableTreeMixin
    implements _CommonQuestionPaginated {
  const _$_CommonQuestionPaginated(
      {required final List<CommonQuestion> data, required this.meta})
      : _data = data;

  factory _$_CommonQuestionPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_CommonQuestionPaginatedFromJson(json);

  final List<CommonQuestion> _data;
  @override
  List<CommonQuestion> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta meta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonQuestionPaginated(data: $data, meta: $meta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonQuestionPaginated'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonQuestionPaginated &&
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
  _$$_CommonQuestionPaginatedCopyWith<_$_CommonQuestionPaginated>
      get copyWith =>
          __$$_CommonQuestionPaginatedCopyWithImpl<_$_CommonQuestionPaginated>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonQuestionPaginatedToJson(
      this,
    );
  }
}

abstract class _CommonQuestionPaginated implements CommonQuestionPaginated {
  const factory _CommonQuestionPaginated(
      {required final List<CommonQuestion> data,
      required final Meta meta}) = _$_CommonQuestionPaginated;

  factory _CommonQuestionPaginated.fromJson(Map<String, dynamic> json) =
      _$_CommonQuestionPaginated.fromJson;

  @override
  List<CommonQuestion> get data;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_CommonQuestionPaginatedCopyWith<_$_CommonQuestionPaginated>
      get copyWith => throw _privateConstructorUsedError;
}
