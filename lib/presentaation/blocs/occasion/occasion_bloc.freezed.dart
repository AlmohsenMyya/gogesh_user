// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occasion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OccasionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String? searchKey) load,
    required TResult Function(SeasonAndOccasion item) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String? searchKey)? load,
    TResult? Function(SeasonAndOccasion item)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String? searchKey)? load,
    TResult Function(SeasonAndOccasion item)? changeItem,
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
abstract class $OccasionEventCopyWith<$Res> {
  factory $OccasionEventCopyWith(
          OccasionEvent value, $Res Function(OccasionEvent) then) =
      _$OccasionEventCopyWithImpl<$Res, OccasionEvent>;
}

/// @nodoc
class _$OccasionEventCopyWithImpl<$Res, $Val extends OccasionEvent>
    implements $OccasionEventCopyWith<$Res> {
  _$OccasionEventCopyWithImpl(this._value, this._then);

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
  $Res call({int page, String? searchKey});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$OccasionEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchKey = freezed,
  }) {
    return _then(_$_Load(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.page, this.searchKey});

  @override
  final int page;
  @override
  final String? searchKey;

  @override
  String toString() {
    return 'OccasionEvent.load(page: $page, searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String? searchKey) load,
    required TResult Function(SeasonAndOccasion item) changeItem,
  }) {
    return load(page, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String? searchKey)? load,
    TResult? Function(SeasonAndOccasion item)? changeItem,
  }) {
    return load?.call(page, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String? searchKey)? load,
    TResult Function(SeasonAndOccasion item)? changeItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(page, searchKey);
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

abstract class _Load implements OccasionEvent {
  const factory _Load({required final int page, final String? searchKey}) =
      _$_Load;

  int get page;
  String? get searchKey;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeItemCopyWith<$Res> {
  factory _$$_ChangeItemCopyWith(
          _$_ChangeItem value, $Res Function(_$_ChangeItem) then) =
      __$$_ChangeItemCopyWithImpl<$Res>;
  @useResult
  $Res call({SeasonAndOccasion item});

  $SeasonAndOccasionCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ChangeItemCopyWithImpl<$Res>
    extends _$OccasionEventCopyWithImpl<$Res, _$_ChangeItem>
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
              as SeasonAndOccasion,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SeasonAndOccasionCopyWith<$Res> get item {
    return $SeasonAndOccasionCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_ChangeItem implements _ChangeItem {
  const _$_ChangeItem({required this.item});

  @override
  final SeasonAndOccasion item;

  @override
  String toString() {
    return 'OccasionEvent.changeItem(item: $item)';
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
    required TResult Function(int page, String? searchKey) load,
    required TResult Function(SeasonAndOccasion item) changeItem,
  }) {
    return changeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String? searchKey)? load,
    TResult? Function(SeasonAndOccasion item)? changeItem,
  }) {
    return changeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String? searchKey)? load,
    TResult Function(SeasonAndOccasion item)? changeItem,
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

abstract class _ChangeItem implements OccasionEvent {
  const factory _ChangeItem({required final SeasonAndOccasion item}) =
      _$_ChangeItem;

  SeasonAndOccasion get item;
  @JsonKey(ignore: true)
  _$$_ChangeItemCopyWith<_$_ChangeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OccasionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OccasionsData data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(
            SeasonAndOccasion item, List<SeasonAndOccasion> data)
        itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OccasionsData data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OccasionsData data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ItemChanged value) itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ItemChanged value)? itemChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_ItemChanged value)? itemChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccasionStateCopyWith<$Res> {
  factory $OccasionStateCopyWith(
          OccasionState value, $Res Function(OccasionState) then) =
      _$OccasionStateCopyWithImpl<$Res, OccasionState>;
}

/// @nodoc
class _$OccasionStateCopyWithImpl<$Res, $Val extends OccasionState>
    implements $OccasionStateCopyWith<$Res> {
  _$OccasionStateCopyWithImpl(this._value, this._then);

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
  $Res call({OccasionsData data});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$OccasionStateCopyWithImpl<$Res, _$_DataLoaded>
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
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OccasionsData,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded({required this.data});

  @override
  final OccasionsData data;

  @override
  String toString() {
    return 'OccasionState.dataLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OccasionsData data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(
            SeasonAndOccasion item, List<SeasonAndOccasion> data)
        itemChanged,
  }) {
    return dataLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OccasionsData data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
  }) {
    return dataLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OccasionsData data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
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

abstract class _DataLoaded implements OccasionState {
  const factory _DataLoaded({required final OccasionsData data}) =
      _$_DataLoaded;

  OccasionsData get data;
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
    extends _$OccasionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OccasionState.initial()';
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
    required TResult Function(OccasionsData data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(
            SeasonAndOccasion item, List<SeasonAndOccasion> data)
        itemChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OccasionsData data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OccasionsData data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
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

abstract class _Initial implements OccasionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$OccasionStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'OccasionState.error()';
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
    required TResult Function(OccasionsData data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(
            SeasonAndOccasion item, List<SeasonAndOccasion> data)
        itemChanged,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OccasionsData data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OccasionsData data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
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

abstract class _Error implements OccasionState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$OccasionStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'OccasionState.empty()';
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
    required TResult Function(OccasionsData data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(
            SeasonAndOccasion item, List<SeasonAndOccasion> data)
        itemChanged,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OccasionsData data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OccasionsData data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
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

abstract class _Empty implements OccasionState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_ItemChangedCopyWith<$Res> {
  factory _$$_ItemChangedCopyWith(
          _$_ItemChanged value, $Res Function(_$_ItemChanged) then) =
      __$$_ItemChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({SeasonAndOccasion item, List<SeasonAndOccasion> data});

  $SeasonAndOccasionCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ItemChangedCopyWithImpl<$Res>
    extends _$OccasionStateCopyWithImpl<$Res, _$_ItemChanged>
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
              as SeasonAndOccasion,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SeasonAndOccasion>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SeasonAndOccasionCopyWith<$Res> get item {
    return $SeasonAndOccasionCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_ItemChanged implements _ItemChanged {
  const _$_ItemChanged(
      {required this.item, required final List<SeasonAndOccasion> data})
      : _data = data;

  @override
  final SeasonAndOccasion item;
  final List<SeasonAndOccasion> _data;
  @override
  List<SeasonAndOccasion> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OccasionState.itemChanged(item: $item, data: $data)';
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
    required TResult Function(OccasionsData data) dataLoaded,
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(
            SeasonAndOccasion item, List<SeasonAndOccasion> data)
        itemChanged,
  }) {
    return itemChanged(item, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OccasionsData data)? dataLoaded,
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
  }) {
    return itemChanged?.call(item, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OccasionsData data)? dataLoaded,
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(SeasonAndOccasion item, List<SeasonAndOccasion> data)?
        itemChanged,
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

abstract class _ItemChanged implements OccasionState {
  const factory _ItemChanged(
      {required final SeasonAndOccasion item,
      required final List<SeasonAndOccasion> data}) = _$_ItemChanged;

  SeasonAndOccasion get item;
  List<SeasonAndOccasion> get data;
  @JsonKey(ignore: true)
  _$$_ItemChangedCopyWith<_$_ItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
