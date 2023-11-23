// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedProfile,
    required TResult Function(EditProfileRequest request) editProfile,
    required TResult Function(EditPasswordRequest request) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedProfile,
    TResult? Function(EditProfileRequest request)? editProfile,
    TResult? Function(EditPasswordRequest request)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedProfile,
    TResult Function(EditProfileRequest request)? editProfile,
    TResult Function(EditPasswordRequest request)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedProfile value) loadedProfile,
    required TResult Function(_EditProfile value) editProfile,
    required TResult Function(_changePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedProfile value)? loadedProfile,
    TResult? Function(_EditProfile value)? editProfile,
    TResult? Function(_changePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedProfile value)? loadedProfile,
    TResult Function(_EditProfile value)? editProfile,
    TResult Function(_changePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadedProfileCopyWith<$Res> {
  factory _$$_LoadedProfileCopyWith(
          _$_LoadedProfile value, $Res Function(_$_LoadedProfile) then) =
      __$$_LoadedProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_LoadedProfile>
    implements _$$_LoadedProfileCopyWith<$Res> {
  __$$_LoadedProfileCopyWithImpl(
      _$_LoadedProfile _value, $Res Function(_$_LoadedProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadedProfile implements _LoadedProfile {
  const _$_LoadedProfile();

  @override
  String toString() {
    return 'ProfileEvent.loadedProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadedProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedProfile,
    required TResult Function(EditProfileRequest request) editProfile,
    required TResult Function(EditPasswordRequest request) changePassword,
  }) {
    return loadedProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedProfile,
    TResult? Function(EditProfileRequest request)? editProfile,
    TResult? Function(EditPasswordRequest request)? changePassword,
  }) {
    return loadedProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedProfile,
    TResult Function(EditProfileRequest request)? editProfile,
    TResult Function(EditPasswordRequest request)? changePassword,
    required TResult orElse(),
  }) {
    if (loadedProfile != null) {
      return loadedProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedProfile value) loadedProfile,
    required TResult Function(_EditProfile value) editProfile,
    required TResult Function(_changePassword value) changePassword,
  }) {
    return loadedProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedProfile value)? loadedProfile,
    TResult? Function(_EditProfile value)? editProfile,
    TResult? Function(_changePassword value)? changePassword,
  }) {
    return loadedProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedProfile value)? loadedProfile,
    TResult Function(_EditProfile value)? editProfile,
    TResult Function(_changePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (loadedProfile != null) {
      return loadedProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadedProfile implements ProfileEvent {
  const factory _LoadedProfile() = _$_LoadedProfile;
}

/// @nodoc
abstract class _$$_EditProfileCopyWith<$Res> {
  factory _$$_EditProfileCopyWith(
          _$_EditProfile value, $Res Function(_$_EditProfile) then) =
      __$$_EditProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({EditProfileRequest request});
}

/// @nodoc
class __$$_EditProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_EditProfile>
    implements _$$_EditProfileCopyWith<$Res> {
  __$$_EditProfileCopyWithImpl(
      _$_EditProfile _value, $Res Function(_$_EditProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_EditProfile(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as EditProfileRequest,
    ));
  }
}

/// @nodoc

class _$_EditProfile implements _EditProfile {
  const _$_EditProfile({required this.request});

  @override
  final EditProfileRequest request;

  @override
  String toString() {
    return 'ProfileEvent.editProfile(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfile &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileCopyWith<_$_EditProfile> get copyWith =>
      __$$_EditProfileCopyWithImpl<_$_EditProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedProfile,
    required TResult Function(EditProfileRequest request) editProfile,
    required TResult Function(EditPasswordRequest request) changePassword,
  }) {
    return editProfile(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedProfile,
    TResult? Function(EditProfileRequest request)? editProfile,
    TResult? Function(EditPasswordRequest request)? changePassword,
  }) {
    return editProfile?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedProfile,
    TResult Function(EditProfileRequest request)? editProfile,
    TResult Function(EditPasswordRequest request)? changePassword,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedProfile value) loadedProfile,
    required TResult Function(_EditProfile value) editProfile,
    required TResult Function(_changePassword value) changePassword,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedProfile value)? loadedProfile,
    TResult? Function(_EditProfile value)? editProfile,
    TResult? Function(_changePassword value)? changePassword,
  }) {
    return editProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedProfile value)? loadedProfile,
    TResult Function(_EditProfile value)? editProfile,
    TResult Function(_changePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile implements ProfileEvent {
  const factory _EditProfile({required final EditProfileRequest request}) =
      _$_EditProfile;

  EditProfileRequest get request;
  @JsonKey(ignore: true)
  _$$_EditProfileCopyWith<_$_EditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_changePasswordCopyWith<$Res> {
  factory _$$_changePasswordCopyWith(
          _$_changePassword value, $Res Function(_$_changePassword) then) =
      __$$_changePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({EditPasswordRequest request});
}

/// @nodoc
class __$$_changePasswordCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_changePassword>
    implements _$$_changePasswordCopyWith<$Res> {
  __$$_changePasswordCopyWithImpl(
      _$_changePassword _value, $Res Function(_$_changePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_changePassword(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as EditPasswordRequest,
    ));
  }
}

/// @nodoc

class _$_changePassword implements _changePassword {
  const _$_changePassword({required this.request});

  @override
  final EditPasswordRequest request;

  @override
  String toString() {
    return 'ProfileEvent.changePassword(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_changePassword &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_changePasswordCopyWith<_$_changePassword> get copyWith =>
      __$$_changePasswordCopyWithImpl<_$_changePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedProfile,
    required TResult Function(EditProfileRequest request) editProfile,
    required TResult Function(EditPasswordRequest request) changePassword,
  }) {
    return changePassword(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedProfile,
    TResult? Function(EditProfileRequest request)? editProfile,
    TResult? Function(EditPasswordRequest request)? changePassword,
  }) {
    return changePassword?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedProfile,
    TResult Function(EditProfileRequest request)? editProfile,
    TResult Function(EditPasswordRequest request)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedProfile value) loadedProfile,
    required TResult Function(_EditProfile value) editProfile,
    required TResult Function(_changePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedProfile value)? loadedProfile,
    TResult? Function(_EditProfile value)? editProfile,
    TResult? Function(_changePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedProfile value)? loadedProfile,
    TResult Function(_EditProfile value)? editProfile,
    TResult Function(_changePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _changePassword implements ProfileEvent {
  const factory _changePassword({required final EditPasswordRequest request}) =
      _$_changePassword;

  EditPasswordRequest get request;
  @JsonKey(ignore: true)
  _$$_changePasswordCopyWith<_$_changePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? error) error,
    required TResult Function(ProfileResponse data) loaded,
    required TResult Function() succes,
    required TResult Function() loadingEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
    TResult? Function(ProfileResponse data)? loaded,
    TResult? Function()? succes,
    TResult? Function()? loadingEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? error)? error,
    TResult Function(ProfileResponse data)? loaded,
    TResult Function()? succes,
    TResult Function()? loadingEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Succes value) succes,
    required TResult Function(_loadingEd value) loadingEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_loadingEd value)? loadingEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Succes value)? succes,
    TResult Function(_loadingEd value)? loadingEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProfileState.loading()';
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
    required TResult Function(String? error) error,
    required TResult Function(ProfileResponse data) loaded,
    required TResult Function() succes,
    required TResult Function() loadingEdit,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
    TResult? Function(ProfileResponse data)? loaded,
    TResult? Function()? succes,
    TResult? Function()? loadingEdit,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? error)? error,
    TResult Function(ProfileResponse data)? loaded,
    TResult Function()? succes,
    TResult Function()? loadingEdit,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Succes value) succes,
    required TResult Function(_loadingEd value) loadingEdit,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_loadingEd value)? loadingEdit,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Succes value)? succes,
    TResult Function(_loadingEd value)? loadingEdit,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ProfileState.error(error: $error)';
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
    required TResult Function(String? error) error,
    required TResult Function(ProfileResponse data) loaded,
    required TResult Function() succes,
    required TResult Function() loadingEdit,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
    TResult? Function(ProfileResponse data)? loaded,
    TResult? Function()? succes,
    TResult? Function()? loadingEdit,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? error)? error,
    TResult Function(ProfileResponse data)? loaded,
    TResult Function()? succes,
    TResult Function()? loadingEdit,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Succes value) succes,
    required TResult Function(_loadingEd value) loadingEdit,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_loadingEd value)? loadingEdit,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Succes value)? succes,
    TResult Function(_loadingEd value)? loadingEdit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProfileState {
  const factory _Error({final String? error}) = _$_Error;

  String? get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileResponse data});

  $ProfileResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loaded(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<$Res> get data {
    return $ProfileResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.data});

  @override
  final ProfileResponse data;

  @override
  String toString() {
    return 'ProfileState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? error) error,
    required TResult Function(ProfileResponse data) loaded,
    required TResult Function() succes,
    required TResult Function() loadingEdit,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
    TResult? Function(ProfileResponse data)? loaded,
    TResult? Function()? succes,
    TResult? Function()? loadingEdit,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? error)? error,
    TResult Function(ProfileResponse data)? loaded,
    TResult Function()? succes,
    TResult Function()? loadingEdit,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Succes value) succes,
    required TResult Function(_loadingEd value) loadingEdit,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_loadingEd value)? loadingEdit,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Succes value)? succes,
    TResult Function(_loadingEd value)? loadingEdit,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProfileState {
  const factory _Loaded({required final ProfileResponse data}) = _$_Loaded;

  ProfileResponse get data;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccesCopyWith<$Res> {
  factory _$$_SuccesCopyWith(_$_Succes value, $Res Function(_$_Succes) then) =
      __$$_SuccesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccesCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_Succes>
    implements _$$_SuccesCopyWith<$Res> {
  __$$_SuccesCopyWithImpl(_$_Succes _value, $Res Function(_$_Succes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Succes implements _Succes {
  const _$_Succes();

  @override
  String toString() {
    return 'ProfileState.succes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Succes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? error) error,
    required TResult Function(ProfileResponse data) loaded,
    required TResult Function() succes,
    required TResult Function() loadingEdit,
  }) {
    return succes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
    TResult? Function(ProfileResponse data)? loaded,
    TResult? Function()? succes,
    TResult? Function()? loadingEdit,
  }) {
    return succes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? error)? error,
    TResult Function(ProfileResponse data)? loaded,
    TResult Function()? succes,
    TResult Function()? loadingEdit,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Succes value) succes,
    required TResult Function(_loadingEd value) loadingEdit,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_loadingEd value)? loadingEdit,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Succes value)? succes,
    TResult Function(_loadingEd value)? loadingEdit,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _Succes implements ProfileState {
  const factory _Succes() = _$_Succes;
}

/// @nodoc
abstract class _$$_loadingEdCopyWith<$Res> {
  factory _$$_loadingEdCopyWith(
          _$_loadingEd value, $Res Function(_$_loadingEd) then) =
      __$$_loadingEdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingEdCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_loadingEd>
    implements _$$_loadingEdCopyWith<$Res> {
  __$$_loadingEdCopyWithImpl(
      _$_loadingEd _value, $Res Function(_$_loadingEd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loadingEd implements _loadingEd {
  const _$_loadingEd();

  @override
  String toString() {
    return 'ProfileState.loadingEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loadingEd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? error) error,
    required TResult Function(ProfileResponse data) loaded,
    required TResult Function() succes,
    required TResult Function() loadingEdit,
  }) {
    return loadingEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? error)? error,
    TResult? Function(ProfileResponse data)? loaded,
    TResult? Function()? succes,
    TResult? Function()? loadingEdit,
  }) {
    return loadingEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? error)? error,
    TResult Function(ProfileResponse data)? loaded,
    TResult Function()? succes,
    TResult Function()? loadingEdit,
    required TResult orElse(),
  }) {
    if (loadingEdit != null) {
      return loadingEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Succes value) succes,
    required TResult Function(_loadingEd value) loadingEdit,
  }) {
    return loadingEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_loadingEd value)? loadingEdit,
  }) {
    return loadingEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Succes value)? succes,
    TResult Function(_loadingEd value)? loadingEdit,
    required TResult orElse(),
  }) {
    if (loadingEdit != null) {
      return loadingEdit(this);
    }
    return orElse();
  }
}

abstract class _loadingEd implements ProfileState {
  const factory _loadingEd() = _$_loadingEd;
}
