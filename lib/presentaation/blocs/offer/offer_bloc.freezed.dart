// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OfferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(int id) offerDetails,
    required TResult Function(Filter filter) loadRequestedOffers,
    required TResult Function(Filter filter) loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
    TResult? Function(Filter filter)? loadRequestedOffers,
    TResult? Function(Filter filter)? loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    TResult Function(Filter filter)? loadRequestedOffers,
    TResult Function(Filter filter)? loadFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OfferDetails value) offerDetails,
    required TResult Function(_LoadRequestedOffers value) loadRequestedOffers,
    required TResult Function(_LoadFavoriteOffers value) loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OfferDetails value)? offerDetails,
    TResult? Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult? Function(_LoadFavoriteOffers value)? loadFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OfferDetails value)? offerDetails,
    TResult Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult Function(_LoadFavoriteOffers value)? loadFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferEventCopyWith<$Res> {
  factory $OfferEventCopyWith(
          OfferEvent value, $Res Function(OfferEvent) then) =
      _$OfferEventCopyWithImpl<$Res, OfferEvent>;
}

/// @nodoc
class _$OfferEventCopyWithImpl<$Res, $Val extends OfferEvent>
    implements $OfferEventCopyWith<$Res> {
  _$OfferEventCopyWithImpl(this._value, this._then);

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
    extends _$OfferEventCopyWithImpl<$Res, _$_Load>
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
    return 'OfferEvent.load(filter: $filter)';
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
    required TResult Function(Filter filter) loadRequestedOffers,
    required TResult Function(Filter filter) loadFavorite,
  }) {
    return load(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
    TResult? Function(Filter filter)? loadRequestedOffers,
    TResult? Function(Filter filter)? loadFavorite,
  }) {
    return load?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    TResult Function(Filter filter)? loadRequestedOffers,
    TResult Function(Filter filter)? loadFavorite,
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
    required TResult Function(_OfferDetails value) offerDetails,
    required TResult Function(_LoadRequestedOffers value) loadRequestedOffers,
    required TResult Function(_LoadFavoriteOffers value) loadFavorite,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OfferDetails value)? offerDetails,
    TResult? Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult? Function(_LoadFavoriteOffers value)? loadFavorite,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OfferDetails value)? offerDetails,
    TResult Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult Function(_LoadFavoriteOffers value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements OfferEvent {
  const factory _Load({required final Filter filter}) = _$_Load;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OfferDetailsCopyWith<$Res> {
  factory _$$_OfferDetailsCopyWith(
          _$_OfferDetails value, $Res Function(_$_OfferDetails) then) =
      __$$_OfferDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_OfferDetailsCopyWithImpl<$Res>
    extends _$OfferEventCopyWithImpl<$Res, _$_OfferDetails>
    implements _$$_OfferDetailsCopyWith<$Res> {
  __$$_OfferDetailsCopyWithImpl(
      _$_OfferDetails _value, $Res Function(_$_OfferDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_OfferDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OfferDetails implements _OfferDetails {
  const _$_OfferDetails({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'OfferEvent.offerDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferDetails &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferDetailsCopyWith<_$_OfferDetails> get copyWith =>
      __$$_OfferDetailsCopyWithImpl<_$_OfferDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(int id) offerDetails,
    required TResult Function(Filter filter) loadRequestedOffers,
    required TResult Function(Filter filter) loadFavorite,
  }) {
    return offerDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
    TResult? Function(Filter filter)? loadRequestedOffers,
    TResult? Function(Filter filter)? loadFavorite,
  }) {
    return offerDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    TResult Function(Filter filter)? loadRequestedOffers,
    TResult Function(Filter filter)? loadFavorite,
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
    required TResult Function(_OfferDetails value) offerDetails,
    required TResult Function(_LoadRequestedOffers value) loadRequestedOffers,
    required TResult Function(_LoadFavoriteOffers value) loadFavorite,
  }) {
    return offerDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OfferDetails value)? offerDetails,
    TResult? Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult? Function(_LoadFavoriteOffers value)? loadFavorite,
  }) {
    return offerDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OfferDetails value)? offerDetails,
    TResult Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult Function(_LoadFavoriteOffers value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (offerDetails != null) {
      return offerDetails(this);
    }
    return orElse();
  }
}

abstract class _OfferDetails implements OfferEvent {
  const factory _OfferDetails({required final int id}) = _$_OfferDetails;

  int get id;
  @JsonKey(ignore: true)
  _$$_OfferDetailsCopyWith<_$_OfferDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadRequestedOffersCopyWith<$Res> {
  factory _$$_LoadRequestedOffersCopyWith(_$_LoadRequestedOffers value,
          $Res Function(_$_LoadRequestedOffers) then) =
      __$$_LoadRequestedOffersCopyWithImpl<$Res>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_LoadRequestedOffersCopyWithImpl<$Res>
    extends _$OfferEventCopyWithImpl<$Res, _$_LoadRequestedOffers>
    implements _$$_LoadRequestedOffersCopyWith<$Res> {
  __$$_LoadRequestedOffersCopyWithImpl(_$_LoadRequestedOffers _value,
      $Res Function(_$_LoadRequestedOffers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_LoadRequestedOffers(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_LoadRequestedOffers implements _LoadRequestedOffers {
  const _$_LoadRequestedOffers({required this.filter});

  @override
  final Filter filter;

  @override
  String toString() {
    return 'OfferEvent.loadRequestedOffers(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadRequestedOffers &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadRequestedOffersCopyWith<_$_LoadRequestedOffers> get copyWith =>
      __$$_LoadRequestedOffersCopyWithImpl<_$_LoadRequestedOffers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(int id) offerDetails,
    required TResult Function(Filter filter) loadRequestedOffers,
    required TResult Function(Filter filter) loadFavorite,
  }) {
    return loadRequestedOffers(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
    TResult? Function(Filter filter)? loadRequestedOffers,
    TResult? Function(Filter filter)? loadFavorite,
  }) {
    return loadRequestedOffers?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    TResult Function(Filter filter)? loadRequestedOffers,
    TResult Function(Filter filter)? loadFavorite,
    required TResult orElse(),
  }) {
    if (loadRequestedOffers != null) {
      return loadRequestedOffers(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OfferDetails value) offerDetails,
    required TResult Function(_LoadRequestedOffers value) loadRequestedOffers,
    required TResult Function(_LoadFavoriteOffers value) loadFavorite,
  }) {
    return loadRequestedOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OfferDetails value)? offerDetails,
    TResult? Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult? Function(_LoadFavoriteOffers value)? loadFavorite,
  }) {
    return loadRequestedOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OfferDetails value)? offerDetails,
    TResult Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult Function(_LoadFavoriteOffers value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (loadRequestedOffers != null) {
      return loadRequestedOffers(this);
    }
    return orElse();
  }
}

abstract class _LoadRequestedOffers implements OfferEvent {
  const factory _LoadRequestedOffers({required final Filter filter}) =
      _$_LoadRequestedOffers;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadRequestedOffersCopyWith<_$_LoadRequestedOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFavoriteOffersCopyWith<$Res> {
  factory _$$_LoadFavoriteOffersCopyWith(_$_LoadFavoriteOffers value,
          $Res Function(_$_LoadFavoriteOffers) then) =
      __$$_LoadFavoriteOffersCopyWithImpl<$Res>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_LoadFavoriteOffersCopyWithImpl<$Res>
    extends _$OfferEventCopyWithImpl<$Res, _$_LoadFavoriteOffers>
    implements _$$_LoadFavoriteOffersCopyWith<$Res> {
  __$$_LoadFavoriteOffersCopyWithImpl(
      _$_LoadFavoriteOffers _value, $Res Function(_$_LoadFavoriteOffers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_LoadFavoriteOffers(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_LoadFavoriteOffers implements _LoadFavoriteOffers {
  const _$_LoadFavoriteOffers({required this.filter});

  @override
  final Filter filter;

  @override
  String toString() {
    return 'OfferEvent.loadFavorite(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFavoriteOffers &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFavoriteOffersCopyWith<_$_LoadFavoriteOffers> get copyWith =>
      __$$_LoadFavoriteOffersCopyWithImpl<_$_LoadFavoriteOffers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) load,
    required TResult Function(int id) offerDetails,
    required TResult Function(Filter filter) loadRequestedOffers,
    required TResult Function(Filter filter) loadFavorite,
  }) {
    return loadFavorite(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? load,
    TResult? Function(int id)? offerDetails,
    TResult? Function(Filter filter)? loadRequestedOffers,
    TResult? Function(Filter filter)? loadFavorite,
  }) {
    return loadFavorite?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? load,
    TResult Function(int id)? offerDetails,
    TResult Function(Filter filter)? loadRequestedOffers,
    TResult Function(Filter filter)? loadFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorite != null) {
      return loadFavorite(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OfferDetails value) offerDetails,
    required TResult Function(_LoadRequestedOffers value) loadRequestedOffers,
    required TResult Function(_LoadFavoriteOffers value) loadFavorite,
  }) {
    return loadFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OfferDetails value)? offerDetails,
    TResult? Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult? Function(_LoadFavoriteOffers value)? loadFavorite,
  }) {
    return loadFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OfferDetails value)? offerDetails,
    TResult Function(_LoadRequestedOffers value)? loadRequestedOffers,
    TResult Function(_LoadFavoriteOffers value)? loadFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorite != null) {
      return loadFavorite(this);
    }
    return orElse();
  }
}

abstract class _LoadFavoriteOffers implements OfferEvent {
  const factory _LoadFavoriteOffers({required final Filter filter}) =
      _$_LoadFavoriteOffers;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$_LoadFavoriteOffersCopyWith<_$_LoadFavoriteOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OfferState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferStateCopyWith<$Res> {
  factory $OfferStateCopyWith(
          OfferState value, $Res Function(OfferState) then) =
      _$OfferStateCopyWithImpl<$Res, OfferState>;
}

/// @nodoc
class _$OfferStateCopyWithImpl<$Res, $Val extends OfferState>
    implements $OfferStateCopyWith<$Res> {
  _$OfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$OfferStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'OfferState.loading()';
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
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OfferState {
  const factory _Loading() = _$_Loading;
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
    extends _$OfferStateCopyWithImpl<$Res, _$_Error>
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
    return 'OfferState.error(error: $error)';
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
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OfferState {
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
    extends _$OfferStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'OfferState.empty()';
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
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements OfferState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_OfferDetailsLoadedCopyWith<$Res> {
  factory _$$_OfferDetailsLoadedCopyWith(_$_OfferDetailsLoaded value,
          $Res Function(_$_OfferDetailsLoaded) then) =
      __$$_OfferDetailsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Offer offer, List<Offer> relatedResults});

  $OfferCopyWith<$Res> get offer;
}

/// @nodoc
class __$$_OfferDetailsLoadedCopyWithImpl<$Res>
    extends _$OfferStateCopyWithImpl<$Res, _$_OfferDetailsLoaded>
    implements _$$_OfferDetailsLoadedCopyWith<$Res> {
  __$$_OfferDetailsLoadedCopyWithImpl(
      _$_OfferDetailsLoaded _value, $Res Function(_$_OfferDetailsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
    Object? relatedResults = null,
  }) {
    return _then(_$_OfferDetailsLoaded(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as Offer,
      relatedResults: null == relatedResults
          ? _value._relatedResults
          : relatedResults // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferCopyWith<$Res> get offer {
    return $OfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }
}

/// @nodoc

class _$_OfferDetailsLoaded implements _OfferDetailsLoaded {
  const _$_OfferDetailsLoaded(
      {required this.offer, required final List<Offer> relatedResults})
      : _relatedResults = relatedResults;

  @override
  final Offer offer;
  final List<Offer> _relatedResults;
  @override
  List<Offer> get relatedResults {
    if (_relatedResults is EqualUnmodifiableListView) return _relatedResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedResults);
  }

  @override
  String toString() {
    return 'OfferState.offerDetailsLoaded(offer: $offer, relatedResults: $relatedResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferDetailsLoaded &&
            (identical(other.offer, offer) || other.offer == offer) &&
            const DeepCollectionEquality()
                .equals(other._relatedResults, _relatedResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, offer, const DeepCollectionEquality().hash(_relatedResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferDetailsLoadedCopyWith<_$_OfferDetailsLoaded> get copyWith =>
      __$$_OfferDetailsLoadedCopyWithImpl<_$_OfferDetailsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return offerDetailsLoaded(offer, relatedResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return offerDetailsLoaded?.call(offer, relatedResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
    required TResult orElse(),
  }) {
    if (offerDetailsLoaded != null) {
      return offerDetailsLoaded(offer, relatedResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return offerDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return offerDetailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (offerDetailsLoaded != null) {
      return offerDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _OfferDetailsLoaded implements OfferState {
  const factory _OfferDetailsLoaded(
      {required final Offer offer,
      required final List<Offer> relatedResults}) = _$_OfferDetailsLoaded;

  Offer get offer;
  List<Offer> get relatedResults;
  @JsonKey(ignore: true)
  _$$_OfferDetailsLoadedCopyWith<_$_OfferDetailsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$OfferStateCopyWithImpl<$Res, _$_NetworkError>
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
    return 'OfferState.networkError()';
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
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements OfferState {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_LastPageLoadedCopyWith<$Res> {
  factory _$$_LastPageLoadedCopyWith(
          _$_LastPageLoaded value, $Res Function(_$_LastPageLoaded) then) =
      __$$_LastPageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offer> offers, int? dataCount});
}

/// @nodoc
class __$$_LastPageLoadedCopyWithImpl<$Res>
    extends _$OfferStateCopyWithImpl<$Res, _$_LastPageLoaded>
    implements _$$_LastPageLoadedCopyWith<$Res> {
  __$$_LastPageLoadedCopyWithImpl(
      _$_LastPageLoaded _value, $Res Function(_$_LastPageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? dataCount = freezed,
  }) {
    return _then(_$_LastPageLoaded(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      dataCount: freezed == dataCount
          ? _value.dataCount
          : dataCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LastPageLoaded implements _LastPageLoaded {
  const _$_LastPageLoaded({required final List<Offer> offers, this.dataCount})
      : _offers = offers;

  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  final int? dataCount;

  @override
  String toString() {
    return 'OfferState.lastPageLoaded(offers: $offers, dataCount: $dataCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastPageLoaded &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.dataCount, dataCount) ||
                other.dataCount == dataCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_offers), dataCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      __$$_LastPageLoadedCopyWithImpl<_$_LastPageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return lastPageLoaded(offers, dataCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return lastPageLoaded?.call(offers, dataCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(offers, dataCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return lastPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return lastPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _LastPageLoaded implements OfferState {
  const factory _LastPageLoaded(
      {required final List<Offer> offers,
      final int? dataCount}) = _$_LastPageLoaded;

  List<Offer> get offers;
  int? get dataCount;
  @JsonKey(ignore: true)
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offer> offers, dynamic pageKey, int? dataCount});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$OfferStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? pageKey = freezed,
    Object? dataCount = freezed,
  }) {
    return _then(_$_Loaded(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      pageKey: freezed == pageKey ? _value.pageKey! : pageKey,
      dataCount: freezed == dataCount
          ? _value.dataCount
          : dataCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Offer> offers, this.pageKey, this.dataCount})
      : _offers = offers;

  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  final dynamic pageKey;
  @override
  final int? dataCount;

  @override
  String toString() {
    return 'OfferState.loaded(offers: $offers, pageKey: $pageKey, dataCount: $dataCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey) &&
            (identical(other.dataCount, dataCount) ||
                other.dataCount == dataCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_offers),
      const DeepCollectionEquality().hash(pageKey),
      dataCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function(Offer offer, List<Offer> relatedResults)
        offerDetailsLoaded,
    required TResult Function() networkError,
    required TResult Function(List<Offer> offers, int? dataCount)
        lastPageLoaded,
    required TResult Function(
            List<Offer> offers, dynamic pageKey, int? dataCount)
        loaded,
  }) {
    return loaded(offers, pageKey, dataCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult? Function()? networkError,
    TResult? Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult? Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
  }) {
    return loaded?.call(offers, pageKey, dataCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function(Offer offer, List<Offer> relatedResults)?
        offerDetailsLoaded,
    TResult Function()? networkError,
    TResult Function(List<Offer> offers, int? dataCount)? lastPageLoaded,
    TResult Function(List<Offer> offers, dynamic pageKey, int? dataCount)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(offers, pageKey, dataCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_OfferDetailsLoaded value) offerDetailsLoaded,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_OfferDetailsLoaded value)? offerDetailsLoaded,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OfferState {
  const factory _Loaded(
      {required final List<Offer> offers,
      final dynamic pageKey,
      final int? dataCount}) = _$_Loaded;

  List<Offer> get offers;
  dynamic get pageKey;
  int? get dataCount;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
