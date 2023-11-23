// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(Datacity item) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(Datacity item)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(Datacity item)? changeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ChangeItem value) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ChangeItem value)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res, CityEvent>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

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
  $Res call({int id});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res> extends _$CityEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Load(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CityEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(Datacity item) changeItem,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(Datacity item)? changeItem,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(Datacity item)? changeItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements CityEvent {
  const factory _Load({required final int id}) = _$_Load;

  int get id;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString() {
    return 'CityEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(Datacity item) changeItem,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(Datacity item)? changeItem,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(Datacity item)? changeItem,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements CityEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'CityEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(Datacity item) changeItem,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(Datacity item)? changeItem,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(Datacity item)? changeItem,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements CityEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_ChangeItemCopyWith<$Res> {
  factory _$$_ChangeItemCopyWith(
          _$_ChangeItem value, $Res Function(_$_ChangeItem) then) =
      __$$_ChangeItemCopyWithImpl<$Res>;
  @useResult
  $Res call({Datacity item});
}

/// @nodoc
class __$$_ChangeItemCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$_ChangeItem>
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
              as Datacity,
    ));
  }
}

/// @nodoc

class _$_ChangeItem implements _ChangeItem {
  const _$_ChangeItem({required this.item});

  @override
  final Datacity item;

  @override
  String toString() {
    return 'CityEvent.changeItem(item: $item)';
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
    required TResult Function(int id) load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(Datacity item) changeItem,
  }) {
    return changeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(Datacity item)? changeItem,
  }) {
    return changeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(Datacity item)? changeItem,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return changeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return changeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(this);
    }
    return orElse();
  }
}

abstract class _ChangeItem implements CityEvent {
  const factory _ChangeItem({required final Datacity item}) = _$_ChangeItem;

  Datacity get item;
  @JsonKey(ignore: true)
  _$$_ChangeItemCopyWith<_$_ChangeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_ItemChanged value) itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) =
      _$CityStateCopyWithImpl<$Res, CityState>;
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<Datacity> data});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$_DataLoaded>
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
              as List<Datacity>,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded({required final List<Datacity> data}) : _data = data;

  final List<Datacity> _data;
  @override
  List<Datacity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CityState.dataLoaded(data: $data)';
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
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return dataLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return dataLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
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
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements CityState {
  const factory _DataLoaded({required final List<Datacity> data}) =
      _$_DataLoaded;

  List<Datacity> get data;
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
    extends _$CityStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CityState.initial()';
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
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
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
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CityState {
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
    extends _$CityStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CityState.loading()';
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
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
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
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CityState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CityState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
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
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CityState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'CityState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements CityState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$_NetworkError>
    implements _$$_NetworkErrorCopyWith<$Res> {
  __$$_NetworkErrorCopyWithImpl(
      _$_NetworkError _value, $Res Function(_$_NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'CityState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements CityState {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_LoadingMoreCopyWith<$Res> {
  factory _$$_LoadingMoreCopyWith(
          _$_LoadingMore value, $Res Function(_$_LoadingMore) then) =
      __$$_LoadingMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Datacity> data});
}

/// @nodoc
class __$$_LoadingMoreCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$_LoadingMore>
    implements _$$_LoadingMoreCopyWith<$Res> {
  __$$_LoadingMoreCopyWithImpl(
      _$_LoadingMore _value, $Res Function(_$_LoadingMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadingMore(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datacity>,
    ));
  }
}

/// @nodoc

class _$_LoadingMore implements _LoadingMore {
  const _$_LoadingMore({required final List<Datacity> data}) : _data = data;

  final List<Datacity> _data;
  @override
  List<Datacity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CityState.loadingMore(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingMore &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingMoreCopyWith<_$_LoadingMore> get copyWith =>
      __$$_LoadingMoreCopyWithImpl<_$_LoadingMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return loadingMore(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return loadingMore?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(data);
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements CityState {
  const factory _LoadingMore({required final List<Datacity> data}) =
      _$_LoadingMore;

  List<Datacity> get data;
  @JsonKey(ignore: true)
  _$$_LoadingMoreCopyWith<_$_LoadingMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemChangedCopyWith<$Res> {
  factory _$$_ItemChangedCopyWith(
          _$_ItemChanged value, $Res Function(_$_ItemChanged) then) =
      __$$_ItemChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Datacity item, List<Datacity> data});
}

/// @nodoc
class __$$_ItemChangedCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$_ItemChanged>
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
              as Datacity,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datacity>,
    ));
  }
}

/// @nodoc

class _$_ItemChanged implements _ItemChanged {
  const _$_ItemChanged({required this.item, required final List<Datacity> data})
      : _data = data;

  @override
  final Datacity item;
  final List<Datacity> _data;
  @override
  List<Datacity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CityState.itemChanged(item: $item, data: $data)';
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
    required TResult Function(List<Datacity> data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<Datacity> data) loadingMore,
    required TResult Function(Datacity item, List<Datacity> data) itemChanged,
  }) {
    return itemChanged(item, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Datacity> data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<Datacity> data)? loadingMore,
    TResult? Function(Datacity item, List<Datacity> data)? itemChanged,
  }) {
    return itemChanged?.call(item, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datacity> data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<Datacity> data)? loadingMore,
    TResult Function(Datacity item, List<Datacity> data)? itemChanged,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LoadingMore value) loadingMore,
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
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LoadingMore value)? loadingMore,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (itemChanged != null) {
      return itemChanged(this);
    }
    return orElse();
  }
}

abstract class _ItemChanged implements CityState {
  const factory _ItemChanged(
      {required final Datacity item,
      required final List<Datacity> data}) = _$_ItemChanged;

  Datacity get item;
  List<Datacity> get data;
  @JsonKey(ignore: true)
  _$$_ItemChangedCopyWith<_$_ItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
