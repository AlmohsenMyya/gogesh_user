// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DialogAdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAd value) getHomeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAd value)? getHomeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAd value)? getHomeAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogAdEventCopyWith<$Res> {
  factory $DialogAdEventCopyWith(
          DialogAdEvent value, $Res Function(DialogAdEvent) then) =
      _$DialogAdEventCopyWithImpl<$Res, DialogAdEvent>;
}

/// @nodoc
class _$DialogAdEventCopyWithImpl<$Res, $Val extends DialogAdEvent>
    implements $DialogAdEventCopyWith<$Res> {
  _$DialogAdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetHomeAdCopyWith<$Res> {
  factory _$$_GetHomeAdCopyWith(
          _$_GetHomeAd value, $Res Function(_$_GetHomeAd) then) =
      __$$_GetHomeAdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeAdCopyWithImpl<$Res>
    extends _$DialogAdEventCopyWithImpl<$Res, _$_GetHomeAd>
    implements _$$_GetHomeAdCopyWith<$Res> {
  __$$_GetHomeAdCopyWithImpl(
      _$_GetHomeAd _value, $Res Function(_$_GetHomeAd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetHomeAd implements _GetHomeAd {
  const _$_GetHomeAd();

  @override
  String toString() {
    return 'DialogAdEvent.getHomeAd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetHomeAd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAd,
  }) {
    return getHomeAd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAd,
  }) {
    return getHomeAd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAd,
    required TResult orElse(),
  }) {
    if (getHomeAd != null) {
      return getHomeAd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAd value) getHomeAd,
  }) {
    return getHomeAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAd value)? getHomeAd,
  }) {
    return getHomeAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAd value)? getHomeAd,
    required TResult orElse(),
  }) {
    if (getHomeAd != null) {
      return getHomeAd(this);
    }
    return orElse();
  }
}

abstract class _GetHomeAd implements DialogAdEvent {
  const factory _GetHomeAd() = _$_GetHomeAd;
}

/// @nodoc
mixin _$DialogAdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ad ad) homeAdLoaded,
    required TResult Function(String ad, int random) homeLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad)? homeAdLoaded,
    TResult? Function(String ad, int random)? homeLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad)? homeAdLoaded,
    TResult Function(String ad, int random)? homeLocalAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomeAdLoaded value) homeAdLoaded,
    required TResult Function(_HomeLocalAdLoaded value) homeLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult? Function(_HomeLocalAdLoaded value)? homeLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult Function(_HomeLocalAdLoaded value)? homeLocalAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogAdStateCopyWith<$Res> {
  factory $DialogAdStateCopyWith(
          DialogAdState value, $Res Function(DialogAdState) then) =
      _$DialogAdStateCopyWithImpl<$Res, DialogAdState>;
}

/// @nodoc
class _$DialogAdStateCopyWithImpl<$Res, $Val extends DialogAdState>
    implements $DialogAdStateCopyWith<$Res> {
  _$DialogAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DialogAdStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DialogAdState.initial()';
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
    required TResult Function() initial,
    required TResult Function(Ad ad) homeAdLoaded,
    required TResult Function(String ad, int random) homeLocalAd,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad)? homeAdLoaded,
    TResult? Function(String ad, int random)? homeLocalAd,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad)? homeAdLoaded,
    TResult Function(String ad, int random)? homeLocalAd,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomeAdLoaded value) homeAdLoaded,
    required TResult Function(_HomeLocalAdLoaded value) homeLocalAd,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult? Function(_HomeLocalAdLoaded value)? homeLocalAd,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult Function(_HomeLocalAdLoaded value)? homeLocalAd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DialogAdState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_HomeAdLoadedCopyWith<$Res> {
  factory _$$_HomeAdLoadedCopyWith(
          _$_HomeAdLoaded value, $Res Function(_$_HomeAdLoaded) then) =
      __$$_HomeAdLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Ad ad});

  $AdCopyWith<$Res> get ad;
}

/// @nodoc
class __$$_HomeAdLoadedCopyWithImpl<$Res>
    extends _$DialogAdStateCopyWithImpl<$Res, _$_HomeAdLoaded>
    implements _$$_HomeAdLoadedCopyWith<$Res> {
  __$$_HomeAdLoadedCopyWithImpl(
      _$_HomeAdLoaded _value, $Res Function(_$_HomeAdLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = null,
  }) {
    return _then(_$_HomeAdLoaded(
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as Ad,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AdCopyWith<$Res> get ad {
    return $AdCopyWith<$Res>(_value.ad, (value) {
      return _then(_value.copyWith(ad: value));
    });
  }
}

/// @nodoc

class _$_HomeAdLoaded implements _HomeAdLoaded {
  const _$_HomeAdLoaded({required this.ad});

  @override
  final Ad ad;

  @override
  String toString() {
    return 'DialogAdState.homeAdLoaded(ad: $ad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeAdLoaded &&
            (identical(other.ad, ad) || other.ad == ad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeAdLoadedCopyWith<_$_HomeAdLoaded> get copyWith =>
      __$$_HomeAdLoadedCopyWithImpl<_$_HomeAdLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ad ad) homeAdLoaded,
    required TResult Function(String ad, int random) homeLocalAd,
  }) {
    return homeAdLoaded(ad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad)? homeAdLoaded,
    TResult? Function(String ad, int random)? homeLocalAd,
  }) {
    return homeAdLoaded?.call(ad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad)? homeAdLoaded,
    TResult Function(String ad, int random)? homeLocalAd,
    required TResult orElse(),
  }) {
    if (homeAdLoaded != null) {
      return homeAdLoaded(ad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomeAdLoaded value) homeAdLoaded,
    required TResult Function(_HomeLocalAdLoaded value) homeLocalAd,
  }) {
    return homeAdLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult? Function(_HomeLocalAdLoaded value)? homeLocalAd,
  }) {
    return homeAdLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult Function(_HomeLocalAdLoaded value)? homeLocalAd,
    required TResult orElse(),
  }) {
    if (homeAdLoaded != null) {
      return homeAdLoaded(this);
    }
    return orElse();
  }
}

abstract class _HomeAdLoaded implements DialogAdState {
  const factory _HomeAdLoaded({required final Ad ad}) = _$_HomeAdLoaded;

  Ad get ad;
  @JsonKey(ignore: true)
  _$$_HomeAdLoadedCopyWith<_$_HomeAdLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeLocalAdLoadedCopyWith<$Res> {
  factory _$$_HomeLocalAdLoadedCopyWith(_$_HomeLocalAdLoaded value,
          $Res Function(_$_HomeLocalAdLoaded) then) =
      __$$_HomeLocalAdLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String ad, int random});
}

/// @nodoc
class __$$_HomeLocalAdLoadedCopyWithImpl<$Res>
    extends _$DialogAdStateCopyWithImpl<$Res, _$_HomeLocalAdLoaded>
    implements _$$_HomeLocalAdLoadedCopyWith<$Res> {
  __$$_HomeLocalAdLoadedCopyWithImpl(
      _$_HomeLocalAdLoaded _value, $Res Function(_$_HomeLocalAdLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = null,
    Object? random = null,
  }) {
    return _then(_$_HomeLocalAdLoaded(
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as String,
      random: null == random
          ? _value.random
          : random // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeLocalAdLoaded implements _HomeLocalAdLoaded {
  const _$_HomeLocalAdLoaded({required this.ad, required this.random});

  @override
  final String ad;
  @override
  final int random;

  @override
  String toString() {
    return 'DialogAdState.homeLocalAd(ad: $ad, random: $random)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLocalAdLoaded &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.random, random) || other.random == random));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad, random);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLocalAdLoadedCopyWith<_$_HomeLocalAdLoaded> get copyWith =>
      __$$_HomeLocalAdLoadedCopyWithImpl<_$_HomeLocalAdLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ad ad) homeAdLoaded,
    required TResult Function(String ad, int random) homeLocalAd,
  }) {
    return homeLocalAd(ad, random);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad)? homeAdLoaded,
    TResult? Function(String ad, int random)? homeLocalAd,
  }) {
    return homeLocalAd?.call(ad, random);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad)? homeAdLoaded,
    TResult Function(String ad, int random)? homeLocalAd,
    required TResult orElse(),
  }) {
    if (homeLocalAd != null) {
      return homeLocalAd(ad, random);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HomeAdLoaded value) homeAdLoaded,
    required TResult Function(_HomeLocalAdLoaded value) homeLocalAd,
  }) {
    return homeLocalAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult? Function(_HomeLocalAdLoaded value)? homeLocalAd,
  }) {
    return homeLocalAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HomeAdLoaded value)? homeAdLoaded,
    TResult Function(_HomeLocalAdLoaded value)? homeLocalAd,
    required TResult orElse(),
  }) {
    if (homeLocalAd != null) {
      return homeLocalAd(this);
    }
    return orElse();
  }
}

abstract class _HomeLocalAdLoaded implements DialogAdState {
  const factory _HomeLocalAdLoaded(
      {required final String ad,
      required final int random}) = _$_HomeLocalAdLoaded;

  String get ad;
  int get random;
  @JsonKey(ignore: true)
  _$$_HomeLocalAdLoadedCopyWith<_$_HomeLocalAdLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
