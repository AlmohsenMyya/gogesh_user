// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversationPaginated _$ConversationPaginatedFromJson(
    Map<String, dynamic> json) {
  return _ConversationPaginated.fromJson(json);
}

/// @nodoc
mixin _$ConversationPaginated {
  List<ConversationEntity> get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationPaginatedCopyWith<ConversationPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationPaginatedCopyWith<$Res> {
  factory $ConversationPaginatedCopyWith(ConversationPaginated value,
          $Res Function(ConversationPaginated) then) =
      _$ConversationPaginatedCopyWithImpl<$Res, ConversationPaginated>;
  @useResult
  $Res call({List<ConversationEntity> data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ConversationPaginatedCopyWithImpl<$Res,
        $Val extends ConversationPaginated>
    implements $ConversationPaginatedCopyWith<$Res> {
  _$ConversationPaginatedCopyWithImpl(this._value, this._then);

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
              as List<ConversationEntity>,
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
abstract class _$$_ConversationPaginatedCopyWith<$Res>
    implements $ConversationPaginatedCopyWith<$Res> {
  factory _$$_ConversationPaginatedCopyWith(_$_ConversationPaginated value,
          $Res Function(_$_ConversationPaginated) then) =
      __$$_ConversationPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConversationEntity> data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ConversationPaginatedCopyWithImpl<$Res>
    extends _$ConversationPaginatedCopyWithImpl<$Res, _$_ConversationPaginated>
    implements _$$_ConversationPaginatedCopyWith<$Res> {
  __$$_ConversationPaginatedCopyWithImpl(_$_ConversationPaginated _value,
      $Res Function(_$_ConversationPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_ConversationPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ConversationEntity>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversationPaginated implements _ConversationPaginated {
  _$_ConversationPaginated(
      {required final List<ConversationEntity> data, this.meta})
      : _data = data;

  factory _$_ConversationPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationPaginatedFromJson(json);

  final List<ConversationEntity> _data;
  @override
  List<ConversationEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'ConversationPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationPaginated &&
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
  _$$_ConversationPaginatedCopyWith<_$_ConversationPaginated> get copyWith =>
      __$$_ConversationPaginatedCopyWithImpl<_$_ConversationPaginated>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationPaginatedToJson(
      this,
    );
  }
}

abstract class _ConversationPaginated implements ConversationPaginated {
  factory _ConversationPaginated(
      {required final List<ConversationEntity> data,
      final Meta? meta}) = _$_ConversationPaginated;

  factory _ConversationPaginated.fromJson(Map<String, dynamic> json) =
      _$_ConversationPaginated.fromJson;

  @override
  List<ConversationEntity> get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationPaginatedCopyWith<_$_ConversationPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
