// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(Sector item) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(Sector item)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(Sector item)? changeItem,
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
abstract class $SectorEventCopyWith<$Res> {
  factory $SectorEventCopyWith(
          SectorEvent value, $Res Function(SectorEvent) then) =
      _$SectorEventCopyWithImpl<$Res, SectorEvent>;
}

/// @nodoc
class _$SectorEventCopyWithImpl<$Res, $Val extends SectorEvent>
    implements $SectorEventCopyWith<$Res> {
  _$SectorEventCopyWithImpl(this._value, this._then);

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
  $Res call({Filter filter});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$SectorEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_Load(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.filter});

  @override
  final Filter filter;

  @override
  String toString() {
    return 'SectorEvent.load(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(Sector item) changeItem,
  }) {
    return load(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(Sector item)? changeItem,
  }) {
    return load?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(Sector item)? changeItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(filter);
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

abstract class _Load implements SectorEvent {
  const factory _Load({required final Filter filter}) = _$_Load;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeItemCopyWith<$Res> {
  factory _$$_ChangeItemCopyWith(
          _$_ChangeItem value, $Res Function(_$_ChangeItem) then) =
      __$$_ChangeItemCopyWithImpl<$Res>;
  @useResult
  $Res call({Sector item});

  $SectorCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ChangeItemCopyWithImpl<$Res>
    extends _$SectorEventCopyWithImpl<$Res, _$_ChangeItem>
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
              as Sector,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SectorCopyWith<$Res> get item {
    return $SectorCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_ChangeItem implements _ChangeItem {
  const _$_ChangeItem({required this.item});

  @override
  final Sector item;

  @override
  String toString() {
    return 'SectorEvent.changeItem(item: $item)';
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
    required TResult Function(Filter filter) load,
    required TResult Function(Sector item) changeItem,
  }) {
    return changeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(Sector item)? changeItem,
  }) {
    return changeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(Sector item)? changeItem,
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

abstract class _ChangeItem implements SectorEvent {
  const factory _ChangeItem({required final Sector item}) = _$_ChangeItem;

  Sector get item;
  @JsonKey(ignore: true)
  _$$_ChangeItemCopyWith<_$_ChangeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SectorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded({required final List<Sector> data, required this.pageKey})
      : _data = data;

  final List<Sector> _data;
  @override
  List<Sector> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int pageKey;

  @override
  String toString() {
    return 'SectorState.dataLoaded(data: $data, pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageKey);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return dataLoaded(data, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return dataLoaded?.call(data, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(data, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements SectorState {
  const factory _DataLoaded(
      {required final List<Sector> data,
      required final int pageKey}) = _$_DataLoaded;

  List<Sector> get data;
  int get pageKey;
}

/// @nodoc

class _$_LastPageLoaded implements _LastPageLoaded {
  const _$_LastPageLoaded({required final List<Sector> data}) : _data = data;

  final List<Sector> _data;
  @override
  List<Sector> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SectorState.lastPageLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastPageLoaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return lastPageLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return lastPageLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return lastPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return lastPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _LastPageLoaded implements SectorState {
  const factory _LastPageLoaded({required final List<Sector> data}) =
      _$_LastPageLoaded;

  List<Sector> get data;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SectorState.loading()';
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
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
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
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SectorState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SectorState.initial()';
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
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
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
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SectorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final ErrorState error;

  @override
  String toString() {
    return 'SectorState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SectorState {
  const factory _Error(final ErrorState error) = _$_Error;

  ErrorState get error;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'SectorState.empty()';
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
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
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
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements SectorState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc

class _$_ItemChanged implements _ItemChanged {
  const _$_ItemChanged({required this.item, required final List<Sector> data})
      : _data = data;

  @override
  final Sector item;
  final List<Sector> _data;
  @override
  List<Sector> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SectorState.itemChanged(item: $item, data: $data)';
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Sector> data, int pageKey) dataLoaded,
    required TResult Function(List<Sector> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Sector item, List<Sector> data) itemChanged,
  }) {
    return itemChanged(item, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult? Function(List<Sector> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Sector item, List<Sector> data)? itemChanged,
  }) {
    return itemChanged?.call(item, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Sector> data, int pageKey)? dataLoaded,
    TResult Function(List<Sector> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Sector item, List<Sector> data)? itemChanged,
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
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) {
    return itemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) {
    return itemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) {
    if (itemChanged != null) {
      return itemChanged(this);
    }
    return orElse();
  }
}

abstract class _ItemChanged implements SectorState {
  const factory _ItemChanged(
      {required final Sector item,
      required final List<Sector> data}) = _$_ItemChanged;

  Sector get item;
  List<Sector> get data;
}
