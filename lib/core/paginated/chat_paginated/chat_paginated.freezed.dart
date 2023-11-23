// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatPaginated _$ChatPaginatedFromJson(Map<String, dynamic> json) {
  return _ChatPaginated.fromJson(json);
}

/// @nodoc
mixin _$ChatPaginated {
  List<ChatEntity> get data => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatPaginatedCopyWith<ChatPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPaginatedCopyWith<$Res> {
  factory $ChatPaginatedCopyWith(
          ChatPaginated value, $Res Function(ChatPaginated) then) =
      _$ChatPaginatedCopyWithImpl<$Res, ChatPaginated>;
  @useResult
  $Res call({List<ChatEntity> data, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ChatPaginatedCopyWithImpl<$Res, $Val extends ChatPaginated>
    implements $ChatPaginatedCopyWith<$Res> {
  _$ChatPaginatedCopyWithImpl(this._value, this._then);

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
              as List<ChatEntity>,
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
abstract class _$$_ChatPaginatedCopyWith<$Res>
    implements $ChatPaginatedCopyWith<$Res> {
  factory _$$_ChatPaginatedCopyWith(
          _$_ChatPaginated value, $Res Function(_$_ChatPaginated) then) =
      __$$_ChatPaginatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatEntity> data, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ChatPaginatedCopyWithImpl<$Res>
    extends _$ChatPaginatedCopyWithImpl<$Res, _$_ChatPaginated>
    implements _$$_ChatPaginatedCopyWith<$Res> {
  __$$_ChatPaginatedCopyWithImpl(
      _$_ChatPaginated _value, $Res Function(_$_ChatPaginated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_ChatPaginated(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatPaginated implements _ChatPaginated {
  _$_ChatPaginated({required final List<ChatEntity> data, required this.meta})
      : _data = data;

  factory _$_ChatPaginated.fromJson(Map<String, dynamic> json) =>
      _$$_ChatPaginatedFromJson(json);

  final List<ChatEntity> _data;
  @override
  List<ChatEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'ChatPaginated(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatPaginated &&
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
  _$$_ChatPaginatedCopyWith<_$_ChatPaginated> get copyWith =>
      __$$_ChatPaginatedCopyWithImpl<_$_ChatPaginated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatPaginatedToJson(
      this,
    );
  }
}

abstract class _ChatPaginated implements ChatPaginated {
  factory _ChatPaginated(
      {required final List<ChatEntity> data,
      required final Meta meta}) = _$_ChatPaginated;

  factory _ChatPaginated.fromJson(Map<String, dynamic> json) =
      _$_ChatPaginated.fromJson;

  @override
  List<ChatEntity> get data;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ChatPaginatedCopyWith<_$_ChatPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}
