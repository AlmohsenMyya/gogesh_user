// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlidAdsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) loadAds,
    required TResult Function(int page) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? loadAds,
    TResult? Function(int page)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? loadAds,
    TResult Function(int page)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAds value) loadAds,
    required TResult Function(_LoadMoreAds value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAds value)? loadAds,
    TResult? Function(_LoadMoreAds value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAds value)? loadAds,
    TResult Function(_LoadMoreAds value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidAdsEventCopyWith<$Res> {
  factory $SlidAdsEventCopyWith(
          SlidAdsEvent value, $Res Function(SlidAdsEvent) then) =
      _$SlidAdsEventCopyWithImpl<$Res, SlidAdsEvent>;
}

/// @nodoc
class _$SlidAdsEventCopyWithImpl<$Res, $Val extends SlidAdsEvent>
    implements $SlidAdsEventCopyWith<$Res> {
  _$SlidAdsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadAdsCopyWith<$Res> {
  factory _$$_LoadAdsCopyWith(
          _$_LoadAds value, $Res Function(_$_LoadAds) then) =
      __$$_LoadAdsCopyWithImpl<$Res>;
  @useResult
  $Res call({Filter? filter});
}

/// @nodoc
class __$$_LoadAdsCopyWithImpl<$Res>
    extends _$SlidAdsEventCopyWithImpl<$Res, _$_LoadAds>
    implements _$$_LoadAdsCopyWith<$Res> {
  __$$_LoadAdsCopyWithImpl(_$_LoadAds _value, $Res Function(_$_LoadAds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_LoadAds(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
    ));
  }
}

/// @nodoc

class _$_LoadAds implements _LoadAds {
  const _$_LoadAds({this.filter});

  @override
  final Filter? filter;

  @override
  String toString() {
    return 'SlidAdsEvent.loadAds(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAds &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAdsCopyWith<_$_LoadAds> get copyWith =>
      __$$_LoadAdsCopyWithImpl<_$_LoadAds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) loadAds,
    required TResult Function(int page) loadMore,
  }) {
    return loadAds(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? loadAds,
    TResult? Function(int page)? loadMore,
  }) {
    return loadAds?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? loadAds,
    TResult Function(int page)? loadMore,
    required TResult orElse(),
  }) {
    if (loadAds != null) {
      return loadAds(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAds value) loadAds,
    required TResult Function(_LoadMoreAds value) loadMore,
  }) {
    return loadAds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAds value)? loadAds,
    TResult? Function(_LoadMoreAds value)? loadMore,
  }) {
    return loadAds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAds value)? loadAds,
    TResult Function(_LoadMoreAds value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadAds != null) {
      return loadAds(this);
    }
    return orElse();
  }
}

abstract class _LoadAds implements SlidAdsEvent {
  const factory _LoadAds({final Filter? filter}) = _$_LoadAds;

  Filter? get filter;
  @JsonKey(ignore: true)
  _$$_LoadAdsCopyWith<_$_LoadAds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreAdsCopyWith<$Res> {
  factory _$$_LoadMoreAdsCopyWith(
          _$_LoadMoreAds value, $Res Function(_$_LoadMoreAds) then) =
      __$$_LoadMoreAdsCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_LoadMoreAdsCopyWithImpl<$Res>
    extends _$SlidAdsEventCopyWithImpl<$Res, _$_LoadMoreAds>
    implements _$$_LoadMoreAdsCopyWith<$Res> {
  __$$_LoadMoreAdsCopyWithImpl(
      _$_LoadMoreAds _value, $Res Function(_$_LoadMoreAds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_LoadMoreAds(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadMoreAds implements _LoadMoreAds {
  const _$_LoadMoreAds({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'SlidAdsEvent.loadMore(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreAds &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreAdsCopyWith<_$_LoadMoreAds> get copyWith =>
      __$$_LoadMoreAdsCopyWithImpl<_$_LoadMoreAds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) loadAds,
    required TResult Function(int page) loadMore,
  }) {
    return loadMore(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? loadAds,
    TResult? Function(int page)? loadMore,
  }) {
    return loadMore?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? loadAds,
    TResult Function(int page)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAds value) loadAds,
    required TResult Function(_LoadMoreAds value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAds value)? loadAds,
    TResult? Function(_LoadMoreAds value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAds value)? loadAds,
    TResult Function(_LoadMoreAds value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreAds implements SlidAdsEvent {
  const factory _LoadMoreAds({required final int page}) = _$_LoadMoreAds;

  int get page;
  @JsonKey(ignore: true)
  _$$_LoadMoreAdsCopyWith<_$_LoadMoreAds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SlidAdsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidAdsStateCopyWith<$Res> {
  factory $SlidAdsStateCopyWith(
          SlidAdsState value, $Res Function(SlidAdsState) then) =
      _$SlidAdsStateCopyWithImpl<$Res, SlidAdsState>;
}

/// @nodoc
class _$SlidAdsStateCopyWithImpl<$Res, $Val extends SlidAdsState>
    implements $SlidAdsStateCopyWith<$Res> {
  _$SlidAdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AdsLoadesCopyWith<$Res> {
  factory _$$_AdsLoadesCopyWith(
          _$_AdsLoades value, $Res Function(_$_AdsLoades) then) =
      __$$_AdsLoadesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ad> data});
}

/// @nodoc
class __$$_AdsLoadesCopyWithImpl<$Res>
    extends _$SlidAdsStateCopyWithImpl<$Res, _$_AdsLoades>
    implements _$$_AdsLoadesCopyWith<$Res> {
  __$$_AdsLoadesCopyWithImpl(
      _$_AdsLoades _value, $Res Function(_$_AdsLoades) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AdsLoades(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$_AdsLoades implements _AdsLoades {
  const _$_AdsLoades({required final List<Ad> data}) : _data = data;

  final List<Ad> _data;
  @override
  List<Ad> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SlidAdsState.adsLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdsLoades &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdsLoadesCopyWith<_$_AdsLoades> get copyWith =>
      __$$_AdsLoadesCopyWithImpl<_$_AdsLoades>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) {
    return adsLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) {
    return adsLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
    required TResult orElse(),
  }) {
    if (adsLoaded != null) {
      return adsLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) {
    return adsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) {
    return adsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (adsLoaded != null) {
      return adsLoaded(this);
    }
    return orElse();
  }
}

abstract class _AdsLoades implements SlidAdsState {
  const factory _AdsLoades({required final List<Ad> data}) = _$_AdsLoades;

  List<Ad> get data;
  @JsonKey(ignore: true)
  _$$_AdsLoadesCopyWith<_$_AdsLoades> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdsLoadingCopyWith<$Res> {
  factory _$$_AdsLoadingCopyWith(
          _$_AdsLoading value, $Res Function(_$_AdsLoading) then) =
      __$$_AdsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AdsLoadingCopyWithImpl<$Res>
    extends _$SlidAdsStateCopyWithImpl<$Res, _$_AdsLoading>
    implements _$$_AdsLoadingCopyWith<$Res> {
  __$$_AdsLoadingCopyWithImpl(
      _$_AdsLoading _value, $Res Function(_$_AdsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AdsLoading implements _AdsLoading {
  const _$_AdsLoading();

  @override
  String toString() {
    return 'SlidAdsState.adsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AdsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) {
    return adsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) {
    return adsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
    required TResult orElse(),
  }) {
    if (adsLoading != null) {
      return adsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) {
    return adsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) {
    return adsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (adsLoading != null) {
      return adsLoading(this);
    }
    return orElse();
  }
}

abstract class _AdsLoading implements SlidAdsState {
  const factory _AdsLoading() = _$_AdsLoading;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$SlidAdsStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'SlidAdsState.empty()';
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
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
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
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements SlidAdsState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_LoadingMoreCopyWith<$Res> {
  factory _$$_LoadingMoreCopyWith(
          _$_LoadingMore value, $Res Function(_$_LoadingMore) then) =
      __$$_LoadingMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingMoreCopyWithImpl<$Res>
    extends _$SlidAdsStateCopyWithImpl<$Res, _$_LoadingMore>
    implements _$$_LoadingMoreCopyWith<$Res> {
  __$$_LoadingMoreCopyWithImpl(
      _$_LoadingMore _value, $Res Function(_$_LoadingMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingMore implements _LoadingMore {
  const _$_LoadingMore();

  @override
  String toString() {
    return 'SlidAdsState.loadingMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) {
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) {
    return loadingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements SlidAdsState {
  const factory _LoadingMore() = _$_LoadingMore;
}

/// @nodoc
abstract class _$$_LoadingMoreErrorCopyWith<$Res> {
  factory _$$_LoadingMoreErrorCopyWith(
          _$_LoadingMoreError value, $Res Function(_$_LoadingMoreError) then) =
      __$$_LoadingMoreErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingMoreErrorCopyWithImpl<$Res>
    extends _$SlidAdsStateCopyWithImpl<$Res, _$_LoadingMoreError>
    implements _$$_LoadingMoreErrorCopyWith<$Res> {
  __$$_LoadingMoreErrorCopyWithImpl(
      _$_LoadingMoreError _value, $Res Function(_$_LoadingMoreError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingMoreError implements _LoadingMoreError {
  const _$_LoadingMoreError();

  @override
  String toString() {
    return 'SlidAdsState.loadingMoreError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingMoreError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) {
    return loadingMoreError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) {
    return loadingMoreError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreError != null) {
      return loadingMoreError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) {
    return loadingMoreError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) {
    return loadingMoreError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreError != null) {
      return loadingMoreError(this);
    }
    return orElse();
  }
}

abstract class _LoadingMoreError implements SlidAdsState {
  const factory _LoadingMoreError() = _$_LoadingMoreError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorState errorState});

  $ErrorStateCopyWith<$Res> get errorState;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SlidAdsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorState = null,
  }) {
    return _then(_$_Error(
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as ErrorState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<$Res> get errorState {
    return $ErrorStateCopyWith<$Res>(_value.errorState, (value) {
      return _then(_value.copyWith(errorState: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.errorState});

  @override
  final ErrorState errorState;

  @override
  String toString() {
    return 'SlidAdsState.error(errorState: $errorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad> data) adsLoaded,
    required TResult Function() adsLoading,
    required TResult Function() empty,
    required TResult Function() loadingMore,
    required TResult Function() loadingMoreError,
    required TResult Function(ErrorState errorState) error,
  }) {
    return error(errorState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ad> data)? adsLoaded,
    TResult? Function()? adsLoading,
    TResult? Function()? empty,
    TResult? Function()? loadingMore,
    TResult? Function()? loadingMoreError,
    TResult? Function(ErrorState errorState)? error,
  }) {
    return error?.call(errorState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad> data)? adsLoaded,
    TResult Function()? adsLoading,
    TResult Function()? empty,
    TResult Function()? loadingMore,
    TResult Function()? loadingMoreError,
    TResult Function(ErrorState errorState)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdsLoades value) adsLoaded,
    required TResult Function(_AdsLoading value) adsLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_LoadingMoreError value) loadingMoreError,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdsLoades value)? adsLoaded,
    TResult? Function(_AdsLoading value)? adsLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_LoadingMoreError value)? loadingMoreError,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdsLoades value)? adsLoaded,
    TResult Function(_AdsLoading value)? adsLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_LoadingMoreError value)? loadingMoreError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SlidAdsState {
  const factory _Error({required final ErrorState errorState}) = _$_Error;

  ErrorState get errorState;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
