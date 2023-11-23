// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) load,
    required TResult Function(Datacountry item) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? load,
    TResult? Function(Datacountry item)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? load,
    TResult Function(Datacountry item)? changeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeItem value) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ChangeItem value)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res, CountryEvent>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res, $Val extends CountryEvent>
    implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_Load(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'CountryEvent.load(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) load,
    required TResult Function(Datacountry item) changeItem,
  }) {
    return load(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? load,
    TResult? Function(Datacountry item)? changeItem,
  }) {
    return load?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? load,
    TResult Function(Datacountry item)? changeItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements CountryEvent {
  const factory _Load({final String? query}) = _$_Load;

  String? get query;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeItemCopyWith<$Res> {
  factory _$$_ChangeItemCopyWith(
          _$_ChangeItem value, $Res Function(_$_ChangeItem) then) =
      __$$_ChangeItemCopyWithImpl<$Res>;
  @useResult
  $Res call({Datacountry item});
}

/// @nodoc
class __$$_ChangeItemCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$_ChangeItem>
    implements _$$_ChangeItemCopyWith<$Res> {
  __$$_ChangeItemCopyWithImpl(
      _$_ChangeItem _value, $Res Function(_$_ChangeItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$_ChangeItem(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Datacountry,
    ));
  }
}

/// @nodoc

class _$_ChangeItem implements _ChangeItem {
  const _$_ChangeItem({required this.item});

  @override
  final Datacountry item;

  @override
  String toString() {
    return 'CountryEvent.changeItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeItem &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeItemCopyWith<_$_ChangeItem> get copyWith =>
      __$$_ChangeItemCopyWithImpl<_$_ChangeItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) load,
    required TResult Function(Datacountry item) changeItem,
  }) {
    return changeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? load,
    TResult? Function(Datacountry item)? changeItem,
  }) {
    return changeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? load,
    TResult Function(Datacountry item)? changeItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return changeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return changeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(this);
    }
    return orElse();
  }
}

abstract class _ChangeItem implements CountryEvent {
  const factory _ChangeItem({required final Datacountry item}) = _$_ChangeItem;

  Datacountry get item;
  @JsonKey(ignore: true)
  _$$_ChangeItemCopyWith<_$_ChangeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacountry> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(Datacountry item, List<Datacountry> data)
        itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacountry> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(Datacountry item, List<Datacountry> data)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacountry> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(Datacountry item, List<Datacountry> data)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ItemChanged value) itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataLoadedCopyWith<$Res> {
  factory _$$_DataLoadedCopyWith(
          _$_DataLoaded value, $Res Function(_$_DataLoaded) then) =
      __$$_DataLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Datacountry> data});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_DataLoaded>
    implements _$$_DataLoadedCopyWith<$Res> {
  __$$_DataLoadedCopyWithImpl(
      _$_DataLoaded _value, $Res Function(_$_DataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DataLoaded(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datacountry>,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded({required final List<Datacountry> data}) : _data = data;

  final List<Datacountry> _data;
  @override
  List<Datacountry> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CountryState.dataLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacountry> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(Datacountry item, List<Datacountry> data)
        itemChanged,
  }) {
    return dataLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacountry> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(Datacountry item, List<Datacountry> data)? itemChanged,
  }) {
    return dataLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacountry> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(Datacountry item, List<Datacountry> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements CountryState {
  const factory _DataLoaded({required final List<Datacountry> data}) =
      _$_DataLoaded;

  List<Datacountry> get data;
  @JsonKey(ignore: true)
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CountryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacountry> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(Datacountry item, List<Datacountry> data)
        itemChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacountry> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(Datacountry item, List<Datacountry> data)? itemChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacountry> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(Datacountry item, List<Datacountry> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CountryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CountryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacountry> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(Datacountry item, List<Datacountry> data)
        itemChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacountry> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(Datacountry item, List<Datacountry> data)? itemChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacountry> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(Datacountry item, List<Datacountry> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CountryState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_Error(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'CountryState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacountry> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(Datacountry item, List<Datacountry> data)
        itemChanged,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacountry> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(Datacountry item, List<Datacountry> data)? itemChanged,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacountry> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(Datacountry item, List<Datacountry> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CountryState {
  const factory _Error({required final String msg}) = _$_Error;

  String get msg;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemChangedCopyWith<$Res> {
  factory _$$_ItemChangedCopyWith(
          _$_ItemChanged value, $Res Function(_$_ItemChanged) then) =
      __$$_ItemChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Datacountry item, List<Datacountry> data});
}

/// @nodoc
class __$$_ItemChangedCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_ItemChanged>
    implements _$$_ItemChangedCopyWith<$Res> {
  __$$_ItemChangedCopyWithImpl(
      _$_ItemChanged _value, $Res Function(_$_ItemChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? data = null,
  }) {
    return _then(_$_ItemChanged(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Datacountry,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datacountry>,
    ));
  }
}

/// @nodoc

class _$_ItemChanged implements _ItemChanged {
  const _$_ItemChanged(
      {required this.item, required final List<Datacountry> data})
      : _data = data;

  @override
  final Datacountry item;
  final List<Datacountry> _data;
  @override
  List<Datacountry> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CountryState.itemChanged(item: $item, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemChanged &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, item, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemChangedCopyWith<_$_ItemChanged> get copyWith =>
      __$$_ItemChangedCopyWithImpl<_$_ItemChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacountry> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(Datacountry item, List<Datacountry> data)
        itemChanged,
  }) {
    return itemChanged(item, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacountry> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(Datacountry item, List<Datacountry> data)? itemChanged,
  }) {
    return itemChanged?.call(item, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacountry> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(Datacountry item, List<Datacountry> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (itemChanged != null) {
      return itemChanged(item, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return itemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return itemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (itemChanged != null) {
      return itemChanged(this);
    }
    return orElse();
  }
}

abstract class _ItemChanged implements CountryState {
  const factory _ItemChanged(
      {required final Datacountry item,
      required final List<Datacountry> data}) = _$_ItemChanged;

  Datacountry get item;
  List<Datacountry> get data;
  @JsonKey(ignore: true)
  _$$_ItemChangedCopyWith<_$_ItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
