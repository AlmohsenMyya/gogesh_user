// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  Filter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadNotification value) loadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadNotification value)? loadNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadNotification value)? loadNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationEventCopyWith<NotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_loadNotificationCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$_loadNotificationCopyWith(
          _$_loadNotification value, $Res Function(_$_loadNotification) then) =
      __$$_loadNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_loadNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$_loadNotification>
    implements _$$_loadNotificationCopyWith<$Res> {
  __$$_loadNotificationCopyWithImpl(
      _$_loadNotification _value, $Res Function(_$_loadNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_loadNotification(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_loadNotification implements _loadNotification {
  const _$_loadNotification({required this.filter});

  @override
  final Filter filter;

  @override
  String toString() {
    return 'NotificationEvent.loadNotification(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loadNotification &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadNotificationCopyWith<_$_loadNotification> get copyWith =>
      __$$_loadNotificationCopyWithImpl<_$_loadNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadNotification,
  }) {
    return loadNotification(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadNotification,
  }) {
    return loadNotification?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadNotification,
    required TResult orElse(),
  }) {
    if (loadNotification != null) {
      return loadNotification(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadNotification value) loadNotification,
  }) {
    return loadNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadNotification value)? loadNotification,
  }) {
    return loadNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadNotification value)? loadNotification,
    required TResult orElse(),
  }) {
    if (loadNotification != null) {
      return loadNotification(this);
    }
    return orElse();
  }
}

abstract class _loadNotification implements NotificationEvent {
  const factory _loadNotification({required final Filter filter}) =
      _$_loadNotification;

  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_loadNotificationCopyWith<_$_loadNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_initialCopyWith<$Res> {
  factory _$$_initialCopyWith(
          _$_initial value, $Res Function(_$_initial) then) =
      __$$_initialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_initialCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_initial>
    implements _$$_initialCopyWith<$Res> {
  __$$_initialCopyWithImpl(_$_initial _value, $Res Function(_$_initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_initial implements _initial {
  const _$_initial();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
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
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial implements NotificationState {
  const factory _initial() = _$_initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NotificationState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
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
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
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

abstract class _Loading implements NotificationState {
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
    extends _$NotificationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
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
  const _$_Error(this.error);

  @override
  final ErrorState error;

  @override
  String toString() {
    return 'NotificationState.error(error: $error)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
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
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
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

abstract class _Error implements NotificationState {
  const factory _Error(final ErrorState error) = _$_Error;

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
    extends _$NotificationStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'NotificationState.empty()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
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
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
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

abstract class _Empty implements NotificationState {
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
    extends _$NotificationStateCopyWithImpl<$Res, _$_NetworkError>
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
    return 'NotificationState.networkError()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
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
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
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

abstract class _NetworkError implements NotificationState {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_LastPageLoadedCopyWith<$Res> {
  factory _$$_LastPageLoadedCopyWith(
          _$_LastPageLoaded value, $Res Function(_$_LastPageLoaded) then) =
      __$$_LastPageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationEntity> notification});
}

/// @nodoc
class __$$_LastPageLoadedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_LastPageLoaded>
    implements _$$_LastPageLoadedCopyWith<$Res> {
  __$$_LastPageLoadedCopyWithImpl(
      _$_LastPageLoaded _value, $Res Function(_$_LastPageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_LastPageLoaded(
      notification: null == notification
          ? _value._notification
          : notification // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
    ));
  }
}

/// @nodoc

class _$_LastPageLoaded implements _LastPageLoaded {
  const _$_LastPageLoaded(
      {required final List<NotificationEntity> notification})
      : _notification = notification;

  final List<NotificationEntity> _notification;
  @override
  List<NotificationEntity> get notification {
    if (_notification is EqualUnmodifiableListView) return _notification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notification);
  }

  @override
  String toString() {
    return 'NotificationState.lastPageLoaded(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastPageLoaded &&
            const DeepCollectionEquality()
                .equals(other._notification, _notification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notification));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      __$$_LastPageLoadedCopyWithImpl<_$_LastPageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return lastPageLoaded(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return lastPageLoaded?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return lastPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return lastPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
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

abstract class _LastPageLoaded implements NotificationState {
  const factory _LastPageLoaded(
          {required final List<NotificationEntity> notification}) =
      _$_LastPageLoaded;

  List<NotificationEntity> get notification;
  @JsonKey(ignore: true)
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationEntity> notification, dynamic pageKey});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? pageKey = freezed,
  }) {
    return _then(_$_Loaded(
      notification: null == notification
          ? _value._notification
          : notification // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      pageKey: freezed == pageKey ? _value.pageKey! : pageKey,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<NotificationEntity> notification, this.pageKey})
      : _notification = notification;

  final List<NotificationEntity> _notification;
  @override
  List<NotificationEntity> get notification {
    if (_notification is EqualUnmodifiableListView) return _notification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notification);
  }

  @override
  final dynamic pageKey;

  @override
  String toString() {
    return 'NotificationState.loaded(notification: $notification, pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._notification, _notification) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notification),
      const DeepCollectionEquality().hash(pageKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() empty,
    required TResult Function() networkError,
    required TResult Function(List<NotificationEntity> notification)
        lastPageLoaded,
    required TResult Function(
            List<NotificationEntity> notification, dynamic pageKey)
        loaded,
  }) {
    return loaded(notification, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? empty,
    TResult? Function()? networkError,
    TResult? Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult? Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
  }) {
    return loaded?.call(notification, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? empty,
    TResult Function()? networkError,
    TResult Function(List<NotificationEntity> notification)? lastPageLoaded,
    TResult Function(List<NotificationEntity> notification, dynamic pageKey)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notification, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
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

abstract class _Loaded implements NotificationState {
  const factory _Loaded(
      {required final List<NotificationEntity> notification,
      final dynamic pageKey}) = _$_Loaded;

  List<NotificationEntity> get notification;
  dynamic get pageKey;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
