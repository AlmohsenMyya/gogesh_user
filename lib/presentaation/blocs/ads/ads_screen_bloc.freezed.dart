// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdsScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(int id) offerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_AdDetails value) offerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AdDetails value)? offerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AdDetails value)? offerDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsScreenEventCopyWith<$Res> {
  factory $AdsScreenEventCopyWith(
          AdsScreenEvent value, $Res Function(AdsScreenEvent) then) =
      _$AdsScreenEventCopyWithImpl<$Res, AdsScreenEvent>;
}

/// @nodoc
class _$AdsScreenEventCopyWithImpl<$Res, $Val extends AdsScreenEvent>
    implements $AdsScreenEventCopyWith<$Res> {
  _$AdsScreenEventCopyWithImpl(this._value, this._then);

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
    extends _$AdsScreenEventCopyWithImpl<$Res, _$_Load>
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
    return 'AdsScreenEvent.load(filter: $filter)';
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
    required TResult Function(int id) offerDetails,
  }) {
    return load(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
  }) {
    return load?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
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
    required TResult Function(_AdDetails value) offerDetails,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AdDetails value)? offerDetails,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AdDetails value)? offerDetails,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements AdsScreenEvent {
  const factory _Load({required final Filter filter}) = _$_Load;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdDetailsCopyWith<$Res> {
  factory _$$_AdDetailsCopyWith(
          _$_AdDetails value, $Res Function(_$_AdDetails) then) =
      __$$_AdDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_AdDetailsCopyWithImpl<$Res>
    extends _$AdsScreenEventCopyWithImpl<$Res, _$_AdDetails>
    implements _$$_AdDetailsCopyWith<$Res> {
  __$$_AdDetailsCopyWithImpl(
      _$_AdDetails _value, $Res Function(_$_AdDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_AdDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AdDetails implements _AdDetails {
  const _$_AdDetails({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'AdsScreenEvent.offerDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdDetails &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdDetailsCopyWith<_$_AdDetails> get copyWith =>
      __$$_AdDetailsCopyWithImpl<_$_AdDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(int id) offerDetails,
  }) {
    return offerDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
  }) {
    return offerDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    required TResult orElse(),
  }) {
    if (offerDetails != null) {
      return offerDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_AdDetails value) offerDetails,
  }) {
    return offerDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_AdDetails value)? offerDetails,
  }) {
    return offerDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_AdDetails value)? offerDetails,
    required TResult orElse(),
  }) {
    if (offerDetails != null) {
      return offerDetails(this);
    }
    return orElse();
  }
}

abstract class _AdDetails implements AdsScreenEvent {
  const factory _AdDetails({required final int id}) = _$_AdDetails;

  int get id;
  @JsonKey(ignore: true)
  _$$_AdDetailsCopyWith<_$_AdDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsScreenStateCopyWith<$Res> {
  factory $AdsScreenStateCopyWith(
          AdsScreenState value, $Res Function(AdsScreenState) then) =
      _$AdsScreenStateCopyWithImpl<$Res, AdsScreenState>;
}

/// @nodoc
class _$AdsScreenStateCopyWithImpl<$Res, $Val extends AdsScreenState>
    implements $AdsScreenStateCopyWith<$Res> {
  _$AdsScreenStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<Ad> data, int pageKey});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$AdsScreenStateCopyWithImpl<$Res, _$_DataLoaded>
    implements _$$_DataLoadedCopyWith<$Res> {
  __$$_DataLoadedCopyWithImpl(
      _$_DataLoaded _value, $Res Function(_$_DataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageKey = null,
  }) {
    return _then(_$_DataLoaded(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded({required final List<Ad> data, required this.pageKey})
      : _data = data;

  final List<Ad> _data;
  @override
  List<Ad> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int pageKey;

  @override
  String toString() {
    return 'AdsScreenState.dataLoaded(data: $data, pageKey: $pageKey)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) {
    return dataLoaded(data, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) {
    return dataLoaded?.call(data, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements AdsScreenState {
  const factory _DataLoaded(
      {required final List<Ad> data,
      required final int pageKey}) = _$_DataLoaded;

  List<Ad> get data;
  int get pageKey;
  @JsonKey(ignore: true)
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastPageLoadedCopyWith<$Res> {
  factory _$$_LastPageLoadedCopyWith(
          _$_LastPageLoaded value, $Res Function(_$_LastPageLoaded) then) =
      __$$_LastPageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ad> data});
}

/// @nodoc
class __$$_LastPageLoadedCopyWithImpl<$Res>
    extends _$AdsScreenStateCopyWithImpl<$Res, _$_LastPageLoaded>
    implements _$$_LastPageLoadedCopyWith<$Res> {
  __$$_LastPageLoadedCopyWithImpl(
      _$_LastPageLoaded _value, $Res Function(_$_LastPageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LastPageLoaded(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$_LastPageLoaded implements _LastPageLoaded {
  const _$_LastPageLoaded({required final List<Ad> data}) : _data = data;

  final List<Ad> _data;
  @override
  List<Ad> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AdsScreenState.lastPageLoaded(data: $data)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      __$$_LastPageLoadedCopyWithImpl<_$_LastPageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) {
    return lastPageLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) {
    return lastPageLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _LastPageLoaded implements AdsScreenState {
  const factory _LastPageLoaded({required final List<Ad> data}) =
      _$_LastPageLoaded;

  List<Ad> get data;
  @JsonKey(ignore: true)
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AdsScreenStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AdsScreenState.loading()';
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
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdsScreenState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AdsScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AdsScreenState.initial()';
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
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdsScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorState error});

  $ErrorStateCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AdsScreenStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<$Res> get error {
    return $ErrorStateCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final ErrorState error;

  @override
  String toString() {
    return 'AdsScreenState.error(error: $error)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AdsScreenState {
  const factory _Error({required final ErrorState error}) = _$_Error;

  ErrorState get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$AdsScreenStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'AdsScreenState.empty()';
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
    required TResult Function(List<Ad> data, int pageKey) dataLoaded,
    required TResult Function(List<Ad> data) lastPageLoaded,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult? Function(List<Ad> data)? lastPageLoaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data, int pageKey)? dataLoaded,
    TResult Function(List<Ad> data)? lastPageLoaded,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
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
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements AdsScreenState {
  const factory _Empty() = _$_Empty;
}
