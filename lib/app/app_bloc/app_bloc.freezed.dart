// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  String get currency => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) selectCurrency,
    required TResult Function(String currency) selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? selectCurrency,
    TResult? Function(String currency)? selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? selectCurrency,
    TResult Function(String currency)? selectTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_SelectTheme value) selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_SelectTheme value)? selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_SelectTheme value)? selectTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
  @useResult
  $Res call({String currency});
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectCurrencyCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$$_SelectCurrencyCopyWith(
          _$_SelectCurrency value, $Res Function(_$_SelectCurrency) then) =
      __$$_SelectCurrencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$_SelectCurrencyCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_SelectCurrency>
    implements _$$_SelectCurrencyCopyWith<$Res> {
  __$$_SelectCurrencyCopyWithImpl(
      _$_SelectCurrency _value, $Res Function(_$_SelectCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$_SelectCurrency(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCurrency implements _SelectCurrency {
  const _$_SelectCurrency({required this.currency});

  @override
  final String currency;

  @override
  String toString() {
    return 'AppEvent.selectCurrency(currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCurrency &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCurrencyCopyWith<_$_SelectCurrency> get copyWith =>
      __$$_SelectCurrencyCopyWithImpl<_$_SelectCurrency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) selectCurrency,
    required TResult Function(String currency) selectTheme,
  }) {
    return selectCurrency(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? selectCurrency,
    TResult? Function(String currency)? selectTheme,
  }) {
    return selectCurrency?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? selectCurrency,
    TResult Function(String currency)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectCurrency != null) {
      return selectCurrency(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_SelectTheme value) selectTheme,
  }) {
    return selectCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_SelectTheme value)? selectTheme,
  }) {
    return selectCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_SelectTheme value)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectCurrency != null) {
      return selectCurrency(this);
    }
    return orElse();
  }
}

abstract class _SelectCurrency implements AppEvent {
  const factory _SelectCurrency({required final String currency}) =
      _$_SelectCurrency;

  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_SelectCurrencyCopyWith<_$_SelectCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectThemeCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$$_SelectThemeCopyWith(
          _$_SelectTheme value, $Res Function(_$_SelectTheme) then) =
      __$$_SelectThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$_SelectThemeCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_SelectTheme>
    implements _$$_SelectThemeCopyWith<$Res> {
  __$$_SelectThemeCopyWithImpl(
      _$_SelectTheme _value, $Res Function(_$_SelectTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$_SelectTheme(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectTheme implements _SelectTheme {
  const _$_SelectTheme({required this.currency});

  @override
  final String currency;

  @override
  String toString() {
    return 'AppEvent.selectTheme(currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTheme &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectThemeCopyWith<_$_SelectTheme> get copyWith =>
      __$$_SelectThemeCopyWithImpl<_$_SelectTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) selectCurrency,
    required TResult Function(String currency) selectTheme,
  }) {
    return selectTheme(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? selectCurrency,
    TResult? Function(String currency)? selectTheme,
  }) {
    return selectTheme?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? selectCurrency,
    TResult Function(String currency)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectTheme != null) {
      return selectTheme(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_SelectTheme value) selectTheme,
  }) {
    return selectTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_SelectTheme value)? selectTheme,
  }) {
    return selectTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_SelectTheme value)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectTheme != null) {
      return selectTheme(this);
    }
    return orElse();
  }
}

abstract class _SelectTheme implements AppEvent {
  const factory _SelectTheme({required final String currency}) = _$_SelectTheme;

  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_SelectThemeCopyWith<_$_SelectTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

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
    extends _$AppStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$_Initial;
}
