// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addEventManually,
    required TResult Function() gps,
    required TResult Function() pickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addEventManually,
    TResult? Function()? gps,
    TResult? Function()? pickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addEventManually,
    TResult Function()? gps,
    TResult Function()? pickLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEventManually value) addEventManually,
    required TResult Function(_GPS value) gps,
    required TResult Function(_PickLocation value) pickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEventManually value)? addEventManually,
    TResult? Function(_GPS value)? gps,
    TResult? Function(_PickLocation value)? pickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEventManually value)? addEventManually,
    TResult Function(_GPS value)? gps,
    TResult Function(_PickLocation value)? pickLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddEventManuallyCopyWith<$Res> {
  factory _$$_AddEventManuallyCopyWith(
          _$_AddEventManually value, $Res Function(_$_AddEventManually) then) =
      __$$_AddEventManuallyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddEventManuallyCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_AddEventManually>
    implements _$$_AddEventManuallyCopyWith<$Res> {
  __$$_AddEventManuallyCopyWithImpl(
      _$_AddEventManually _value, $Res Function(_$_AddEventManually) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddEventManually implements _AddEventManually {
  const _$_AddEventManually();

  @override
  String toString() {
    return 'LocationEvent.addEventManually()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddEventManually);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addEventManually,
    required TResult Function() gps,
    required TResult Function() pickLocation,
  }) {
    return addEventManually();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addEventManually,
    TResult? Function()? gps,
    TResult? Function()? pickLocation,
  }) {
    return addEventManually?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addEventManually,
    TResult Function()? gps,
    TResult Function()? pickLocation,
    required TResult orElse(),
  }) {
    if (addEventManually != null) {
      return addEventManually();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEventManually value) addEventManually,
    required TResult Function(_GPS value) gps,
    required TResult Function(_PickLocation value) pickLocation,
  }) {
    return addEventManually(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEventManually value)? addEventManually,
    TResult? Function(_GPS value)? gps,
    TResult? Function(_PickLocation value)? pickLocation,
  }) {
    return addEventManually?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEventManually value)? addEventManually,
    TResult Function(_GPS value)? gps,
    TResult Function(_PickLocation value)? pickLocation,
    required TResult orElse(),
  }) {
    if (addEventManually != null) {
      return addEventManually(this);
    }
    return orElse();
  }
}

abstract class _AddEventManually implements LocationEvent {
  const factory _AddEventManually() = _$_AddEventManually;
}

/// @nodoc
abstract class _$$_GPSCopyWith<$Res> {
  factory _$$_GPSCopyWith(_$_GPS value, $Res Function(_$_GPS) then) =
      __$$_GPSCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GPSCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_GPS>
    implements _$$_GPSCopyWith<$Res> {
  __$$_GPSCopyWithImpl(_$_GPS _value, $Res Function(_$_GPS) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GPS implements _GPS {
  const _$_GPS();

  @override
  String toString() {
    return 'LocationEvent.gps()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GPS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addEventManually,
    required TResult Function() gps,
    required TResult Function() pickLocation,
  }) {
    return gps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addEventManually,
    TResult? Function()? gps,
    TResult? Function()? pickLocation,
  }) {
    return gps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addEventManually,
    TResult Function()? gps,
    TResult Function()? pickLocation,
    required TResult orElse(),
  }) {
    if (gps != null) {
      return gps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEventManually value) addEventManually,
    required TResult Function(_GPS value) gps,
    required TResult Function(_PickLocation value) pickLocation,
  }) {
    return gps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEventManually value)? addEventManually,
    TResult? Function(_GPS value)? gps,
    TResult? Function(_PickLocation value)? pickLocation,
  }) {
    return gps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEventManually value)? addEventManually,
    TResult Function(_GPS value)? gps,
    TResult Function(_PickLocation value)? pickLocation,
    required TResult orElse(),
  }) {
    if (gps != null) {
      return gps(this);
    }
    return orElse();
  }
}

abstract class _GPS implements LocationEvent {
  const factory _GPS() = _$_GPS;
}

/// @nodoc
abstract class _$$_PickLocationCopyWith<$Res> {
  factory _$$_PickLocationCopyWith(
          _$_PickLocation value, $Res Function(_$_PickLocation) then) =
      __$$_PickLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_PickLocation>
    implements _$$_PickLocationCopyWith<$Res> {
  __$$_PickLocationCopyWithImpl(
      _$_PickLocation _value, $Res Function(_$_PickLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PickLocation implements _PickLocation {
  const _$_PickLocation();

  @override
  String toString() {
    return 'LocationEvent.pickLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addEventManually,
    required TResult Function() gps,
    required TResult Function() pickLocation,
  }) {
    return pickLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addEventManually,
    TResult? Function()? gps,
    TResult? Function()? pickLocation,
  }) {
    return pickLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addEventManually,
    TResult Function()? gps,
    TResult Function()? pickLocation,
    required TResult orElse(),
  }) {
    if (pickLocation != null) {
      return pickLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEventManually value) addEventManually,
    required TResult Function(_GPS value) gps,
    required TResult Function(_PickLocation value) pickLocation,
  }) {
    return pickLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEventManually value)? addEventManually,
    TResult? Function(_GPS value)? gps,
    TResult? Function(_PickLocation value)? pickLocation,
  }) {
    return pickLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEventManually value)? addEventManually,
    TResult Function(_GPS value)? gps,
    TResult Function(_PickLocation value)? pickLocation,
    required TResult orElse(),
  }) {
    if (pickLocation != null) {
      return pickLocation(this);
    }
    return orElse();
  }
}

abstract class _PickLocation implements LocationEvent {
  const factory _PickLocation() = _$_PickLocation;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

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
    extends _$LocationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocationState.initial()';
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
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
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
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ServiceUnEnabledCopyWith<$Res> {
  factory _$$_ServiceUnEnabledCopyWith(
          _$_ServiceUnEnabled value, $Res Function(_$_ServiceUnEnabled) then) =
      __$$_ServiceUnEnabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServiceUnEnabledCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_ServiceUnEnabled>
    implements _$$_ServiceUnEnabledCopyWith<$Res> {
  __$$_ServiceUnEnabledCopyWithImpl(
      _$_ServiceUnEnabled _value, $Res Function(_$_ServiceUnEnabled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServiceUnEnabled implements _ServiceUnEnabled {
  const _$_ServiceUnEnabled();

  @override
  String toString() {
    return 'LocationState.serviceUnEnabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServiceUnEnabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return serviceUnEnabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return serviceUnEnabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
    required TResult orElse(),
  }) {
    if (serviceUnEnabled != null) {
      return serviceUnEnabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return serviceUnEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return serviceUnEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (serviceUnEnabled != null) {
      return serviceUnEnabled(this);
    }
    return orElse();
  }
}

abstract class _ServiceUnEnabled implements LocationState {
  const factory _ServiceUnEnabled() = _$_ServiceUnEnabled;
}

/// @nodoc
abstract class _$$_LoadingLocationCopyWith<$Res> {
  factory _$$_LoadingLocationCopyWith(
          _$_LoadingLocation value, $Res Function(_$_LoadingLocation) then) =
      __$$_LoadingLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingLocationCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LoadingLocation>
    implements _$$_LoadingLocationCopyWith<$Res> {
  __$$_LoadingLocationCopyWithImpl(
      _$_LoadingLocation _value, $Res Function(_$_LoadingLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingLocation implements _LoadingLocation {
  const _$_LoadingLocation();

  @override
  String toString() {
    return 'LocationState.loadingLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return loadingLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return loadingLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
    required TResult orElse(),
  }) {
    if (loadingLocation != null) {
      return loadingLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return loadingLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return loadingLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (loadingLocation != null) {
      return loadingLocation(this);
    }
    return orElse();
  }
}

abstract class _LoadingLocation implements LocationState {
  const factory _LoadingLocation() = _$_LoadingLocation;
}

/// @nodoc
abstract class _$$_LocationPickedCopyWith<$Res> {
  factory _$$_LocationPickedCopyWith(
          _$_LocationPicked value, $Res Function(_$_LocationPicked) then) =
      __$$_LocationPickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationPickedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationPicked>
    implements _$$_LocationPickedCopyWith<$Res> {
  __$$_LocationPickedCopyWithImpl(
      _$_LocationPicked _value, $Res Function(_$_LocationPicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LocationPicked implements _LocationPicked {
  const _$_LocationPicked();

  @override
  String toString() {
    return 'LocationState.locationPicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocationPicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return locationPicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return locationPicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
    required TResult orElse(),
  }) {
    if (locationPicked != null) {
      return locationPicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return locationPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return locationPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (locationPicked != null) {
      return locationPicked(this);
    }
    return orElse();
  }
}

abstract class _LocationPicked implements LocationState {
  const factory _LocationPicked() = _$_LocationPicked;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_Error>
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
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LocationState.error(error: $error)';
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
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LocationState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationFoundedCopyWith<$Res> {
  factory _$$_LocationFoundedCopyWith(
          _$_LocationFounded value, $Res Function(_$_LocationFounded) then) =
      __$$_LocationFoundedCopyWithImpl<$Res>;
  @useResult
  $Res call({String country, String city, String region});
}

/// @nodoc
class __$$_LocationFoundedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationFounded>
    implements _$$_LocationFoundedCopyWith<$Res> {
  __$$_LocationFoundedCopyWithImpl(
      _$_LocationFounded _value, $Res Function(_$_LocationFounded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? region = null,
  }) {
    return _then(_$_LocationFounded(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationFounded implements _LocationFounded {
  const _$_LocationFounded(
      {required this.country, required this.city, required this.region});

  @override
  final String country;
  @override
  final String city;
  @override
  final String region;

  @override
  String toString() {
    return 'LocationState.locationFounded(country: $country, city: $city, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationFounded &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, city, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationFoundedCopyWith<_$_LocationFounded> get copyWith =>
      __$$_LocationFoundedCopyWithImpl<_$_LocationFounded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return locationFounded(country, city, region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return locationFounded?.call(country, city, region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
    required TResult orElse(),
  }) {
    if (locationFounded != null) {
      return locationFounded(country, city, region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return locationFounded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return locationFounded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (locationFounded != null) {
      return locationFounded(this);
    }
    return orElse();
  }
}

abstract class _LocationFounded implements LocationState {
  const factory _LocationFounded(
      {required final String country,
      required final String city,
      required final String region}) = _$_LocationFounded;

  String get country;
  String get city;
  String get region;
  @JsonKey(ignore: true)
  _$$_LocationFoundedCopyWith<_$_LocationFounded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ManuallyCopyWith<$Res> {
  factory _$$_ManuallyCopyWith(
          _$_Manually value, $Res Function(_$_Manually) then) =
      __$$_ManuallyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ManuallyCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_Manually>
    implements _$$_ManuallyCopyWith<$Res> {
  __$$_ManuallyCopyWithImpl(
      _$_Manually _value, $Res Function(_$_Manually) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Manually implements _Manually {
  const _$_Manually();

  @override
  String toString() {
    return 'LocationState.manually()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Manually);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() serviceUnEnabled,
    required TResult Function() loadingLocation,
    required TResult Function() locationPicked,
    required TResult Function(String error) error,
    required TResult Function(String country, String city, String region)
        locationFounded,
    required TResult Function() manually,
  }) {
    return manually();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? serviceUnEnabled,
    TResult? Function()? loadingLocation,
    TResult? Function()? locationPicked,
    TResult? Function(String error)? error,
    TResult? Function(String country, String city, String region)?
        locationFounded,
    TResult? Function()? manually,
  }) {
    return manually?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? serviceUnEnabled,
    TResult Function()? loadingLocation,
    TResult Function()? locationPicked,
    TResult Function(String error)? error,
    TResult Function(String country, String city, String region)?
        locationFounded,
    TResult Function()? manually,
    required TResult orElse(),
  }) {
    if (manually != null) {
      return manually();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ServiceUnEnabled value) serviceUnEnabled,
    required TResult Function(_LoadingLocation value) loadingLocation,
    required TResult Function(_LocationPicked value) locationPicked,
    required TResult Function(_Error value) error,
    required TResult Function(_LocationFounded value) locationFounded,
    required TResult Function(_Manually value) manually,
  }) {
    return manually(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult? Function(_LoadingLocation value)? loadingLocation,
    TResult? Function(_LocationPicked value)? locationPicked,
    TResult? Function(_Error value)? error,
    TResult? Function(_LocationFounded value)? locationFounded,
    TResult? Function(_Manually value)? manually,
  }) {
    return manually?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ServiceUnEnabled value)? serviceUnEnabled,
    TResult Function(_LoadingLocation value)? loadingLocation,
    TResult Function(_LocationPicked value)? locationPicked,
    TResult Function(_Error value)? error,
    TResult Function(_LocationFounded value)? locationFounded,
    TResult Function(_Manually value)? manually,
    required TResult orElse(),
  }) {
    if (manually != null) {
      return manually(this);
    }
    return orElse();
  }
}

abstract class _Manually implements LocationState {
  const factory _Manually() = _$_Manually;
}
