// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_ad_dialog_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectorAdDialogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ad ad, int random) sectorAdLoaded,
    required TResult Function(String ad, int random) sectorLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad, int random)? sectorAdLoaded,
    TResult? Function(String ad, int random)? sectorLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad, int random)? sectorAdLoaded,
    TResult Function(String ad, int random)? sectorLocalAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SectorAdLoaded value) sectorAdLoaded,
    required TResult Function(_SectorLocalAdLoaded value) sectorLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult? Function(_SectorLocalAdLoaded value)? sectorLocalAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult Function(_SectorLocalAdLoaded value)? sectorLocalAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorAdDialogStateCopyWith<$Res> {
  factory $SectorAdDialogStateCopyWith(
          SectorAdDialogState value, $Res Function(SectorAdDialogState) then) =
      _$SectorAdDialogStateCopyWithImpl<$Res, SectorAdDialogState>;
}

/// @nodoc
class _$SectorAdDialogStateCopyWithImpl<$Res, $Val extends SectorAdDialogState>
    implements $SectorAdDialogStateCopyWith<$Res> {
  _$SectorAdDialogStateCopyWithImpl(this._value, this._then);

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
    extends _$SectorAdDialogStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SectorAdDialogState.initial()';
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
    required TResult Function(Ad ad, int random) sectorAdLoaded,
    required TResult Function(String ad, int random) sectorLocalAd,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad, int random)? sectorAdLoaded,
    TResult? Function(String ad, int random)? sectorLocalAd,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad, int random)? sectorAdLoaded,
    TResult Function(String ad, int random)? sectorLocalAd,
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
    required TResult Function(_SectorAdLoaded value) sectorAdLoaded,
    required TResult Function(_SectorLocalAdLoaded value) sectorLocalAd,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult? Function(_SectorLocalAdLoaded value)? sectorLocalAd,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult Function(_SectorLocalAdLoaded value)? sectorLocalAd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SectorAdDialogState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SectorAdLoadedCopyWith<$Res> {
  factory _$$_SectorAdLoadedCopyWith(
          _$_SectorAdLoaded value, $Res Function(_$_SectorAdLoaded) then) =
      __$$_SectorAdLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Ad ad, int random});

  $AdCopyWith<$Res> get ad;
}

/// @nodoc
class __$$_SectorAdLoadedCopyWithImpl<$Res>
    extends _$SectorAdDialogStateCopyWithImpl<$Res, _$_SectorAdLoaded>
    implements _$$_SectorAdLoadedCopyWith<$Res> {
  __$$_SectorAdLoadedCopyWithImpl(
      _$_SectorAdLoaded _value, $Res Function(_$_SectorAdLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = null,
    Object? random = null,
  }) {
    return _then(_$_SectorAdLoaded(
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as Ad,
      random: null == random
          ? _value.random
          : random // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_SectorAdLoaded implements _SectorAdLoaded {
  const _$_SectorAdLoaded({required this.ad, required this.random});

  @override
  final Ad ad;
  @override
  final int random;

  @override
  String toString() {
    return 'SectorAdDialogState.sectorAdLoaded(ad: $ad, random: $random)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectorAdLoaded &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.random, random) || other.random == random));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad, random);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectorAdLoadedCopyWith<_$_SectorAdLoaded> get copyWith =>
      __$$_SectorAdLoadedCopyWithImpl<_$_SectorAdLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ad ad, int random) sectorAdLoaded,
    required TResult Function(String ad, int random) sectorLocalAd,
  }) {
    return sectorAdLoaded(ad, random);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad, int random)? sectorAdLoaded,
    TResult? Function(String ad, int random)? sectorLocalAd,
  }) {
    return sectorAdLoaded?.call(ad, random);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad, int random)? sectorAdLoaded,
    TResult Function(String ad, int random)? sectorLocalAd,
    required TResult orElse(),
  }) {
    if (sectorAdLoaded != null) {
      return sectorAdLoaded(ad, random);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SectorAdLoaded value) sectorAdLoaded,
    required TResult Function(_SectorLocalAdLoaded value) sectorLocalAd,
  }) {
    return sectorAdLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult? Function(_SectorLocalAdLoaded value)? sectorLocalAd,
  }) {
    return sectorAdLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult Function(_SectorLocalAdLoaded value)? sectorLocalAd,
    required TResult orElse(),
  }) {
    if (sectorAdLoaded != null) {
      return sectorAdLoaded(this);
    }
    return orElse();
  }
}

abstract class _SectorAdLoaded implements SectorAdDialogState {
  const factory _SectorAdLoaded(
      {required final Ad ad, required final int random}) = _$_SectorAdLoaded;

  Ad get ad;
  int get random;
  @JsonKey(ignore: true)
  _$$_SectorAdLoadedCopyWith<_$_SectorAdLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SectorLocalAdLoadedCopyWith<$Res> {
  factory _$$_SectorLocalAdLoadedCopyWith(_$_SectorLocalAdLoaded value,
          $Res Function(_$_SectorLocalAdLoaded) then) =
      __$$_SectorLocalAdLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String ad, int random});
}

/// @nodoc
class __$$_SectorLocalAdLoadedCopyWithImpl<$Res>
    extends _$SectorAdDialogStateCopyWithImpl<$Res, _$_SectorLocalAdLoaded>
    implements _$$_SectorLocalAdLoadedCopyWith<$Res> {
  __$$_SectorLocalAdLoadedCopyWithImpl(_$_SectorLocalAdLoaded _value,
      $Res Function(_$_SectorLocalAdLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = null,
    Object? random = null,
  }) {
    return _then(_$_SectorLocalAdLoaded(
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

class _$_SectorLocalAdLoaded implements _SectorLocalAdLoaded {
  const _$_SectorLocalAdLoaded({required this.ad, required this.random});

  @override
  final String ad;
  @override
  final int random;

  @override
  String toString() {
    return 'SectorAdDialogState.sectorLocalAd(ad: $ad, random: $random)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectorLocalAdLoaded &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.random, random) || other.random == random));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad, random);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectorLocalAdLoadedCopyWith<_$_SectorLocalAdLoaded> get copyWith =>
      __$$_SectorLocalAdLoadedCopyWithImpl<_$_SectorLocalAdLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ad ad, int random) sectorAdLoaded,
    required TResult Function(String ad, int random) sectorLocalAd,
  }) {
    return sectorLocalAd(ad, random);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ad ad, int random)? sectorAdLoaded,
    TResult? Function(String ad, int random)? sectorLocalAd,
  }) {
    return sectorLocalAd?.call(ad, random);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ad ad, int random)? sectorAdLoaded,
    TResult Function(String ad, int random)? sectorLocalAd,
    required TResult orElse(),
  }) {
    if (sectorLocalAd != null) {
      return sectorLocalAd(ad, random);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SectorAdLoaded value) sectorAdLoaded,
    required TResult Function(_SectorLocalAdLoaded value) sectorLocalAd,
  }) {
    return sectorLocalAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult? Function(_SectorLocalAdLoaded value)? sectorLocalAd,
  }) {
    return sectorLocalAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SectorAdLoaded value)? sectorAdLoaded,
    TResult Function(_SectorLocalAdLoaded value)? sectorLocalAd,
    required TResult orElse(),
  }) {
    if (sectorLocalAd != null) {
      return sectorLocalAd(this);
    }
    return orElse();
  }
}

abstract class _SectorLocalAdLoaded implements SectorAdDialogState {
  const factory _SectorLocalAdLoaded(
      {required final String ad,
      required final int random}) = _$_SectorLocalAdLoaded;

  String get ad;
  int get random;
  @JsonKey(ignore: true)
  _$$_SectorLocalAdLoadedCopyWith<_$_SectorLocalAdLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
