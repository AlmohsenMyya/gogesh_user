// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckPasswordCopyWith<$Res> {
  factory _$$_CheckPasswordCopyWith(
          _$_CheckPassword value, $Res Function(_$_CheckPassword) then) =
      __$$_CheckPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordCheckRequest request});
}

/// @nodoc
class __$$_CheckPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckPassword>
    implements _$$_CheckPasswordCopyWith<$Res> {
  __$$_CheckPasswordCopyWithImpl(
      _$_CheckPassword _value, $Res Function(_$_CheckPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_CheckPassword(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as PasswordCheckRequest,
    ));
  }
}

/// @nodoc

class _$_CheckPassword implements _CheckPassword {
  const _$_CheckPassword({required this.request});

  @override
  final PasswordCheckRequest request;

  @override
  String toString() {
    return 'AuthEvent.checkPassword(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckPassword &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckPasswordCopyWith<_$_CheckPassword> get copyWith =>
      __$$_CheckPasswordCopyWithImpl<_$_CheckPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return checkPassword(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return checkPassword?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return checkPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return checkPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(this);
    }
    return orElse();
  }
}

abstract class _CheckPassword implements AuthEvent {
  const factory _CheckPassword({required final PasswordCheckRequest request}) =
      _$_CheckPassword;

  PasswordCheckRequest get request;
  @JsonKey(ignore: true)
  _$$_CheckPasswordCopyWith<_$_CheckPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForgetPasswordCopyWith<$Res> {
  factory _$$_ForgetPasswordCopyWith(
          _$_ForgetPassword value, $Res Function(_$_ForgetPassword) then) =
      __$$_ForgetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({ForgetPasswordRequest request});
}

/// @nodoc
class __$$_ForgetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ForgetPassword>
    implements _$$_ForgetPasswordCopyWith<$Res> {
  __$$_ForgetPasswordCopyWithImpl(
      _$_ForgetPassword _value, $Res Function(_$_ForgetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_ForgetPassword(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ForgetPasswordRequest,
    ));
  }
}

/// @nodoc

class _$_ForgetPassword implements _ForgetPassword {
  const _$_ForgetPassword({required this.request});

  @override
  final ForgetPasswordRequest request;

  @override
  String toString() {
    return 'AuthEvent.forgetpassword(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgetPassword &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgetPasswordCopyWith<_$_ForgetPassword> get copyWith =>
      __$$_ForgetPasswordCopyWithImpl<_$_ForgetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return forgetpassword(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return forgetpassword?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (forgetpassword != null) {
      return forgetpassword(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return forgetpassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return forgetpassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (forgetpassword != null) {
      return forgetpassword(this);
    }
    return orElse();
  }
}

abstract class _ForgetPassword implements AuthEvent {
  const factory _ForgetPassword(
      {required final ForgetPasswordRequest request}) = _$_ForgetPassword;

  ForgetPasswordRequest get request;
  @JsonKey(ignore: true)
  _$$_ForgetPasswordCopyWith<_$_ForgetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordCopyWith<$Res> {
  factory _$$_ResetPasswordCopyWith(
          _$_ResetPassword value, $Res Function(_$_ResetPassword) then) =
      __$$_ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({ResetPasswordRequest request});
}

/// @nodoc
class __$$_ResetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResetPassword>
    implements _$$_ResetPasswordCopyWith<$Res> {
  __$$_ResetPasswordCopyWithImpl(
      _$_ResetPassword _value, $Res Function(_$_ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_ResetPassword(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ResetPasswordRequest,
    ));
  }
}

/// @nodoc

class _$_ResetPassword implements _ResetPassword {
  const _$_ResetPassword({required this.request});

  @override
  final ResetPasswordRequest request;

  @override
  String toString() {
    return 'AuthEvent.resetpassword(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassword &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      __$$_ResetPasswordCopyWithImpl<_$_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return resetpassword(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return resetpassword?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (resetpassword != null) {
      return resetpassword(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return resetpassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return resetpassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (resetpassword != null) {
      return resetpassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword({required final ResetPasswordRequest request}) =
      _$_ResetPassword;

  ResetPasswordRequest get request;
  @JsonKey(ignore: true)
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmEmailCopyWith<$Res> {
  factory _$$_ConfirmEmailCopyWith(
          _$_ConfirmEmail value, $Res Function(_$_ConfirmEmail) then) =
      __$$_ConfirmEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String email});
}

/// @nodoc
class __$$_ConfirmEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ConfirmEmail>
    implements _$$_ConfirmEmailCopyWith<$Res> {
  __$$_ConfirmEmailCopyWithImpl(
      _$_ConfirmEmail _value, $Res Function(_$_ConfirmEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? email = null,
  }) {
    return _then(_$_ConfirmEmail(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmEmail implements _ConfirmEmail {
  const _$_ConfirmEmail({required this.code, required this.email});

  @override
  final String code;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.confirmEmail(code: $code, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmEmail &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmEmailCopyWith<_$_ConfirmEmail> get copyWith =>
      __$$_ConfirmEmailCopyWithImpl<_$_ConfirmEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return confirmEmail(code, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return confirmEmail?.call(code, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(code, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmail implements AuthEvent {
  const factory _ConfirmEmail(
      {required final String code,
      required final String email}) = _$_ConfirmEmail;

  String get code;
  String get email;
  @JsonKey(ignore: true)
  _$$_ConfirmEmailCopyWith<_$_ConfirmEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendEmailConfirmationCodeCopyWith<$Res> {
  factory _$$_ResendEmailConfirmationCodeCopyWith(
          _$_ResendEmailConfirmationCode value,
          $Res Function(_$_ResendEmailConfirmationCode) then) =
      __$$_ResendEmailConfirmationCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ResendEmailConfirmationCodeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResendEmailConfirmationCode>
    implements _$$_ResendEmailConfirmationCodeCopyWith<$Res> {
  __$$_ResendEmailConfirmationCodeCopyWithImpl(
      _$_ResendEmailConfirmationCode _value,
      $Res Function(_$_ResendEmailConfirmationCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ResendEmailConfirmationCode(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResendEmailConfirmationCode implements _ResendEmailConfirmationCode {
  const _$_ResendEmailConfirmationCode({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resendEmailConfirmationCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendEmailConfirmationCode &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendEmailConfirmationCodeCopyWith<_$_ResendEmailConfirmationCode>
      get copyWith => __$$_ResendEmailConfirmationCodeCopyWithImpl<
          _$_ResendEmailConfirmationCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return resendEmailConfirmationCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return resendEmailConfirmationCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (resendEmailConfirmationCode != null) {
      return resendEmailConfirmationCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return resendEmailConfirmationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return resendEmailConfirmationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (resendEmailConfirmationCode != null) {
      return resendEmailConfirmationCode(this);
    }
    return orElse();
  }
}

abstract class _ResendEmailConfirmationCode implements AuthEvent {
  const factory _ResendEmailConfirmationCode({required final String email}) =
      _$_ResendEmailConfirmationCode;

  String get email;
  @JsonKey(ignore: true)
  _$$_ResendEmailConfirmationCodeCopyWith<_$_ResendEmailConfirmationCode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpGoogleCopyWith<$Res> {
  factory _$$_SignUpGoogleCopyWith(
          _$_SignUpGoogle value, $Res Function(_$_SignUpGoogle) then) =
      __$$_SignUpGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpGoogle>
    implements _$$_SignUpGoogleCopyWith<$Res> {
  __$$_SignUpGoogleCopyWithImpl(
      _$_SignUpGoogle _value, $Res Function(_$_SignUpGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpGoogle implements _SignUpGoogle {
  const _$_SignUpGoogle();

  @override
  String toString() {
    return 'AuthEvent.signUpGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return signUpGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return signUpGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (signUpGoogle != null) {
      return signUpGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return signUpGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return signUpGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (signUpGoogle != null) {
      return signUpGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignUpGoogle implements AuthEvent {
  const factory _SignUpGoogle() = _$_SignUpGoogle;
}

/// @nodoc
abstract class _$$_SignUpFacebookCopyWith<$Res> {
  factory _$$_SignUpFacebookCopyWith(
          _$_SignUpFacebook value, $Res Function(_$_SignUpFacebook) then) =
      __$$_SignUpFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpFacebookCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpFacebook>
    implements _$$_SignUpFacebookCopyWith<$Res> {
  __$$_SignUpFacebookCopyWithImpl(
      _$_SignUpFacebook _value, $Res Function(_$_SignUpFacebook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpFacebook implements _SignUpFacebook {
  const _$_SignUpFacebook();

  @override
  String toString() {
    return 'AuthEvent.signUpFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return signUpFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return signUpFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (signUpFacebook != null) {
      return signUpFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return signUpFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return signUpFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (signUpFacebook != null) {
      return signUpFacebook(this);
    }
    return orElse();
  }
}

abstract class _SignUpFacebook implements AuthEvent {
  const factory _SignUpFacebook() = _$_SignUpFacebook;
}

/// @nodoc
abstract class _$$_SignUpAppleCopyWith<$Res> {
  factory _$$_SignUpAppleCopyWith(
          _$_SignUpApple value, $Res Function(_$_SignUpApple) then) =
      __$$_SignUpAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpAppleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpApple>
    implements _$$_SignUpAppleCopyWith<$Res> {
  __$$_SignUpAppleCopyWithImpl(
      _$_SignUpApple _value, $Res Function(_$_SignUpApple) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpApple implements _SignUpApple {
  const _$_SignUpApple();

  @override
  String toString() {
    return 'AuthEvent.signUpApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return signUpApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return signUpApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (signUpApple != null) {
      return signUpApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return signUpApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return signUpApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (signUpApple != null) {
      return signUpApple(this);
    }
    return orElse();
  }
}

abstract class _SignUpApple implements AuthEvent {
  const factory _SignUpApple() = _$_SignUpApple;
}

/// @nodoc
abstract class _$$_RegisterPrimaryCopyWith<$Res> {
  factory _$$_RegisterPrimaryCopyWith(
          _$_RegisterPrimary value, $Res Function(_$_RegisterPrimary) then) =
      __$$_RegisterPrimaryCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterCustomer request});
}

/// @nodoc
class __$$_RegisterPrimaryCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RegisterPrimary>
    implements _$$_RegisterPrimaryCopyWith<$Res> {
  __$$_RegisterPrimaryCopyWithImpl(
      _$_RegisterPrimary _value, $Res Function(_$_RegisterPrimary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_RegisterPrimary(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RegisterCustomer,
    ));
  }
}

/// @nodoc

class _$_RegisterPrimary implements _RegisterPrimary {
  const _$_RegisterPrimary({required this.request});

  @override
  final RegisterCustomer request;

  @override
  String toString() {
    return 'AuthEvent.register(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterPrimary &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterPrimaryCopyWith<_$_RegisterPrimary> get copyWith =>
      __$$_RegisterPrimaryCopyWithImpl<_$_RegisterPrimary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return register(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return register?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterPrimary implements AuthEvent {
  const factory _RegisterPrimary({required final RegisterCustomer request}) =
      _$_RegisterPrimary;

  RegisterCustomer get request;
  @JsonKey(ignore: true)
  _$$_RegisterPrimaryCopyWith<_$_RegisterPrimary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteProfileCopyWith<$Res> {
  factory _$$_CompleteProfileCopyWith(
          _$_CompleteProfile value, $Res Function(_$_CompleteProfile) then) =
      __$$_CompleteProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterCustomer request});
}

/// @nodoc
class __$$_CompleteProfileCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CompleteProfile>
    implements _$$_CompleteProfileCopyWith<$Res> {
  __$$_CompleteProfileCopyWithImpl(
      _$_CompleteProfile _value, $Res Function(_$_CompleteProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_CompleteProfile(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RegisterCustomer,
    ));
  }
}

/// @nodoc

class _$_CompleteProfile implements _CompleteProfile {
  const _$_CompleteProfile({required this.request});

  @override
  final RegisterCustomer request;

  @override
  String toString() {
    return 'AuthEvent.completeProfile(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteProfile &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteProfileCopyWith<_$_CompleteProfile> get copyWith =>
      __$$_CompleteProfileCopyWithImpl<_$_CompleteProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return completeProfile(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return completeProfile?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (completeProfile != null) {
      return completeProfile(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return completeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return completeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (completeProfile != null) {
      return completeProfile(this);
    }
    return orElse();
  }
}

abstract class _CompleteProfile implements AuthEvent {
  const factory _CompleteProfile({required final RegisterCustomer request}) =
      _$_CompleteProfile;

  RegisterCustomer get request;
  @JsonKey(ignore: true)
  _$$_CompleteProfileCopyWith<_$_CompleteProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogInCopyWith<$Res> {
  factory _$$_LogInCopyWith(_$_LogIn value, $Res Function(_$_LogIn) then) =
      __$$_LogInCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequest request});
}

/// @nodoc
class __$$_LogInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogIn>
    implements _$$_LogInCopyWith<$Res> {
  __$$_LogInCopyWithImpl(_$_LogIn _value, $Res Function(_$_LogIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_LogIn(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }
}

/// @nodoc

class _$_LogIn implements _LogIn {
  const _$_LogIn({required this.request});

  @override
  final LoginRequest request;

  @override
  String toString() {
    return 'AuthEvent.login(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogIn &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInCopyWith<_$_LogIn> get copyWith =>
      __$$_LogInCopyWithImpl<_$_LogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return login(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return login?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements AuthEvent {
  const factory _LogIn({required final LoginRequest request}) = _$_LogIn;

  LoginRequest get request;
  @JsonKey(ignore: true)
  _$$_LogInCopyWith<_$_LogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadImageCopyWith<$Res> {
  factory _$$_UploadImageCopyWith(
          _$_UploadImage value, $Res Function(_$_UploadImage) then) =
      __$$_UploadImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$_UploadImageCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UploadImage>
    implements _$$_UploadImageCopyWith<$Res> {
  __$$_UploadImageCopyWithImpl(
      _$_UploadImage _value, $Res Function(_$_UploadImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$_UploadImage(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_UploadImage implements _UploadImage {
  const _$_UploadImage({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'AuthEvent.uploadImage(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadImage &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      __$$_UploadImageCopyWithImpl<_$_UploadImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordCheckRequest request) checkPassword,
    required TResult Function(ForgetPasswordRequest request) forgetpassword,
    required TResult Function(ResetPasswordRequest request) resetpassword,
    required TResult Function(String code, String email) confirmEmail,
    required TResult Function(String email) resendEmailConfirmationCode,
    required TResult Function() signUpGoogle,
    required TResult Function() signUpFacebook,
    required TResult Function() signUpApple,
    required TResult Function(RegisterCustomer request) register,
    required TResult Function(RegisterCustomer request) completeProfile,
    required TResult Function(LoginRequest request) login,
    required TResult Function(ImageSource source) uploadImage,
  }) {
    return uploadImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordCheckRequest request)? checkPassword,
    TResult? Function(ForgetPasswordRequest request)? forgetpassword,
    TResult? Function(ResetPasswordRequest request)? resetpassword,
    TResult? Function(String code, String email)? confirmEmail,
    TResult? Function(String email)? resendEmailConfirmationCode,
    TResult? Function()? signUpGoogle,
    TResult? Function()? signUpFacebook,
    TResult? Function()? signUpApple,
    TResult? Function(RegisterCustomer request)? register,
    TResult? Function(RegisterCustomer request)? completeProfile,
    TResult? Function(LoginRequest request)? login,
    TResult? Function(ImageSource source)? uploadImage,
  }) {
    return uploadImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordCheckRequest request)? checkPassword,
    TResult Function(ForgetPasswordRequest request)? forgetpassword,
    TResult Function(ResetPasswordRequest request)? resetpassword,
    TResult Function(String code, String email)? confirmEmail,
    TResult Function(String email)? resendEmailConfirmationCode,
    TResult Function()? signUpGoogle,
    TResult Function()? signUpFacebook,
    TResult Function()? signUpApple,
    TResult Function(RegisterCustomer request)? register,
    TResult Function(RegisterCustomer request)? completeProfile,
    TResult Function(LoginRequest request)? login,
    TResult Function(ImageSource source)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPassword value) checkPassword,
    required TResult Function(_ForgetPassword value) forgetpassword,
    required TResult Function(_ResetPassword value) resetpassword,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ResendEmailConfirmationCode value)
        resendEmailConfirmationCode,
    required TResult Function(_SignUpGoogle value) signUpGoogle,
    required TResult Function(_SignUpFacebook value) signUpFacebook,
    required TResult Function(_SignUpApple value) signUpApple,
    required TResult Function(_RegisterPrimary value) register,
    required TResult Function(_CompleteProfile value) completeProfile,
    required TResult Function(_LogIn value) login,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPassword value)? checkPassword,
    TResult? Function(_ForgetPassword value)? forgetpassword,
    TResult? Function(_ResetPassword value)? resetpassword,
    TResult? Function(_ConfirmEmail value)? confirmEmail,
    TResult? Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult? Function(_SignUpGoogle value)? signUpGoogle,
    TResult? Function(_SignUpFacebook value)? signUpFacebook,
    TResult? Function(_SignUpApple value)? signUpApple,
    TResult? Function(_RegisterPrimary value)? register,
    TResult? Function(_CompleteProfile value)? completeProfile,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPassword value)? checkPassword,
    TResult Function(_ForgetPassword value)? forgetpassword,
    TResult Function(_ResetPassword value)? resetpassword,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ResendEmailConfirmationCode value)?
        resendEmailConfirmationCode,
    TResult Function(_SignUpGoogle value)? signUpGoogle,
    TResult Function(_SignUpFacebook value)? signUpFacebook,
    TResult Function(_SignUpApple value)? signUpApple,
    TResult Function(_RegisterPrimary value)? register,
    TResult Function(_CompleteProfile value)? completeProfile,
    TResult Function(_LogIn value)? login,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements AuthEvent {
  const factory _UploadImage({required final ImageSource source}) =
      _$_UploadImage;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
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
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EmailValidCopyWith<$Res> {
  factory _$$_EmailValidCopyWith(
          _$_EmailValid value, $Res Function(_$_EmailValid) then) =
      __$$_EmailValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailValidCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_EmailValid>
    implements _$$_EmailValidCopyWith<$Res> {
  __$$_EmailValidCopyWithImpl(
      _$_EmailValid _value, $Res Function(_$_EmailValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmailValid implements _EmailValid {
  const _$_EmailValid();

  @override
  String toString() {
    return 'AuthState.emailValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return emailValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return emailValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (emailValid != null) {
      return emailValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return emailValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return emailValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (emailValid != null) {
      return emailValid(this);
    }
    return orElse();
  }
}

abstract class _EmailValid implements AuthState {
  const factory _EmailValid() = _$_EmailValid;
}

/// @nodoc
abstract class _$$_ResendingEmailCopyWith<$Res> {
  factory _$$_ResendingEmailCopyWith(
          _$_ResendingEmail value, $Res Function(_$_ResendingEmail) then) =
      __$$_ResendingEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResendingEmailCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ResendingEmail>
    implements _$$_ResendingEmailCopyWith<$Res> {
  __$$_ResendingEmailCopyWithImpl(
      _$_ResendingEmail _value, $Res Function(_$_ResendingEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResendingEmail implements _ResendingEmail {
  const _$_ResendingEmail();

  @override
  String toString() {
    return 'AuthState.resendingEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResendingEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return resendingEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return resendingEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (resendingEmail != null) {
      return resendingEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return resendingEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return resendingEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (resendingEmail != null) {
      return resendingEmail(this);
    }
    return orElse();
  }
}

abstract class _ResendingEmail implements AuthState {
  const factory _ResendingEmail() = _$_ResendingEmail;
}

/// @nodoc
abstract class _$$_SuccesCopyWith<$Res> {
  factory _$$_SuccesCopyWith(_$_Succes value, $Res Function(_$_Succes) then) =
      __$$_SuccesCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$_SuccesCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Succes>
    implements _$$_SuccesCopyWith<$Res> {
  __$$_SuccesCopyWithImpl(_$_Succes _value, $Res Function(_$_Succes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_Succes(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Succes implements _Succes {
  const _$_Succes({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.success(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Succes &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccesCopyWith<_$_Succes> get copyWith =>
      __$$_SuccesCopyWithImpl<_$_Succes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return success(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return success?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Succes implements AuthState {
  const factory _Succes({final String? msg}) = _$_Succes;

  String? get msg;
  @JsonKey(ignore: true)
  _$$_SuccesCopyWith<_$_Succes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailErrorCopyWith<$Res> {
  factory _$$_EmailErrorCopyWith(
          _$_EmailError value, $Res Function(_$_EmailError) then) =
      __$$_EmailErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_EmailErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_EmailError>
    implements _$$_EmailErrorCopyWith<$Res> {
  __$$_EmailErrorCopyWithImpl(
      _$_EmailError _value, $Res Function(_$_EmailError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_EmailError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EmailError implements _EmailError {
  const _$_EmailError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.emailError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailErrorCopyWith<_$_EmailError> get copyWith =>
      __$$_EmailErrorCopyWithImpl<_$_EmailError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return emailError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return emailError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (emailError != null) {
      return emailError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return emailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return emailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (emailError != null) {
      return emailError(this);
    }
    return orElse();
  }
}

abstract class _EmailError implements AuthState {
  const factory _EmailError({final String? error}) = _$_EmailError;

  String? get error;
  @JsonKey(ignore: true)
  _$$_EmailErrorCopyWith<_$_EmailError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordErrorCopyWith<$Res> {
  factory _$$_PasswordErrorCopyWith(
          _$_PasswordError value, $Res Function(_$_PasswordError) then) =
      __$$_PasswordErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_PasswordErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_PasswordError>
    implements _$$_PasswordErrorCopyWith<$Res> {
  __$$_PasswordErrorCopyWithImpl(
      _$_PasswordError _value, $Res Function(_$_PasswordError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_PasswordError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PasswordError implements _PasswordError {
  const _$_PasswordError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.passworderror(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordErrorCopyWith<_$_PasswordError> get copyWith =>
      __$$_PasswordErrorCopyWithImpl<_$_PasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return passworderror(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return passworderror?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (passworderror != null) {
      return passworderror(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return passworderror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return passworderror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (passworderror != null) {
      return passworderror(this);
    }
    return orElse();
  }
}

abstract class _PasswordError implements AuthState {
  const factory _PasswordError({final String? error}) = _$_PasswordError;

  String? get error;
  @JsonKey(ignore: true)
  _$$_PasswordErrorCopyWith<_$_PasswordError> get copyWith =>
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
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
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
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SocialLoadingCopyWith<$Res> {
  factory _$$_SocialLoadingCopyWith(
          _$_SocialLoading value, $Res Function(_$_SocialLoading) then) =
      __$$_SocialLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SocialLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SocialLoading>
    implements _$$_SocialLoadingCopyWith<$Res> {
  __$$_SocialLoadingCopyWithImpl(
      _$_SocialLoading _value, $Res Function(_$_SocialLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SocialLoading implements _SocialLoading {
  const _$_SocialLoading();

  @override
  String toString() {
    return 'AuthState.socialLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SocialLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return socialLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return socialLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (socialLoading != null) {
      return socialLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return socialLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return socialLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (socialLoading != null) {
      return socialLoading(this);
    }
    return orElse();
  }
}

abstract class _SocialLoading implements AuthState {
  const factory _SocialLoading() = _$_SocialLoading;
}

/// @nodoc
abstract class _$$_InvalidCodeCopyWith<$Res> {
  factory _$$_InvalidCodeCopyWith(
          _$_InvalidCode value, $Res Function(_$_InvalidCode) then) =
      __$$_InvalidCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCodeCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_InvalidCode>
    implements _$$_InvalidCodeCopyWith<$Res> {
  __$$_InvalidCodeCopyWithImpl(
      _$_InvalidCode _value, $Res Function(_$_InvalidCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidCode implements _InvalidCode {
  const _$_InvalidCode();

  @override
  String toString() {
    return 'AuthState.invalidCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return invalidCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return invalidCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return invalidCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return invalidCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(this);
    }
    return orElse();
  }
}

abstract class _InvalidCode implements AuthState {
  const factory _InvalidCode() = _$_InvalidCode;
}

/// @nodoc
abstract class _$$_EmailConfirmedCopyWith<$Res> {
  factory _$$_EmailConfirmedCopyWith(
          _$_EmailConfirmed value, $Res Function(_$_EmailConfirmed) then) =
      __$$_EmailConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailConfirmedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_EmailConfirmed>
    implements _$$_EmailConfirmedCopyWith<$Res> {
  __$$_EmailConfirmedCopyWithImpl(
      _$_EmailConfirmed _value, $Res Function(_$_EmailConfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmailConfirmed implements _EmailConfirmed {
  const _$_EmailConfirmed();

  @override
  String toString() {
    return 'AuthState.emailConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return emailConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return emailConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (emailConfirmed != null) {
      return emailConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return emailConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return emailConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (emailConfirmed != null) {
      return emailConfirmed(this);
    }
    return orElse();
  }
}

abstract class _EmailConfirmed implements AuthState {
  const factory _EmailConfirmed() = _$_EmailConfirmed;
}

/// @nodoc
abstract class _$$_ConfirmationCodeResetCopyWith<$Res> {
  factory _$$_ConfirmationCodeResetCopyWith(_$_ConfirmationCodeReset value,
          $Res Function(_$_ConfirmationCodeReset) then) =
      __$$_ConfirmationCodeResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConfirmationCodeResetCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ConfirmationCodeReset>
    implements _$$_ConfirmationCodeResetCopyWith<$Res> {
  __$$_ConfirmationCodeResetCopyWithImpl(_$_ConfirmationCodeReset _value,
      $Res Function(_$_ConfirmationCodeReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConfirmationCodeReset implements _ConfirmationCodeReset {
  const _$_ConfirmationCodeReset();

  @override
  String toString() {
    return 'AuthState.confirmationCodeReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConfirmationCodeReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return confirmationCodeReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return confirmationCodeReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (confirmationCodeReset != null) {
      return confirmationCodeReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return confirmationCodeReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return confirmationCodeReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (confirmationCodeReset != null) {
      return confirmationCodeReset(this);
    }
    return orElse();
  }
}

abstract class _ConfirmationCodeReset implements AuthState {
  const factory _ConfirmationCodeReset() = _$_ConfirmationCodeReset;
}

/// @nodoc
abstract class _$$_ProfileCompletedCopyWith<$Res> {
  factory _$$_ProfileCompletedCopyWith(
          _$_ProfileCompleted value, $Res Function(_$_ProfileCompleted) then) =
      __$$_ProfileCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ProfileCompleted>
    implements _$$_ProfileCompletedCopyWith<$Res> {
  __$$_ProfileCompletedCopyWithImpl(
      _$_ProfileCompleted _value, $Res Function(_$_ProfileCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileCompleted implements _ProfileCompleted {
  const _$_ProfileCompleted();

  @override
  String toString() {
    return 'AuthState.profileCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return profileCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return profileCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (profileCompleted != null) {
      return profileCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return profileCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return profileCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (profileCompleted != null) {
      return profileCompleted(this);
    }
    return orElse();
  }
}

abstract class _ProfileCompleted implements AuthState {
  const factory _ProfileCompleted() = _$_ProfileCompleted;
}

/// @nodoc
abstract class _$$_RegisteredCopyWith<$Res> {
  factory _$$_RegisteredCopyWith(
          _$_Registered value, $Res Function(_$_Registered) then) =
      __$$_RegisteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$_RegisteredCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Registered>
    implements _$$_RegisteredCopyWith<$Res> {
  __$$_RegisteredCopyWithImpl(
      _$_Registered _value, $Res Function(_$_Registered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_Registered(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Registered implements _Registered {
  const _$_Registered({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.registered(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Registered &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisteredCopyWith<_$_Registered> get copyWith =>
      __$$_RegisteredCopyWithImpl<_$_Registered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return registered(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return registered?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered({final String? msg}) = _$_Registered;

  String? get msg;
  @JsonKey(ignore: true)
  _$$_RegisteredCopyWith<_$_Registered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SocialRegisteredCopyWith<$Res> {
  factory _$$_SocialRegisteredCopyWith(
          _$_SocialRegistered value, $Res Function(_$_SocialRegistered) then) =
      __$$_SocialRegisteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$_SocialRegisteredCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SocialRegistered>
    implements _$$_SocialRegisteredCopyWith<$Res> {
  __$$_SocialRegisteredCopyWithImpl(
      _$_SocialRegistered _value, $Res Function(_$_SocialRegistered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_SocialRegistered(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SocialRegistered implements _SocialRegistered {
  const _$_SocialRegistered({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.socialRegistered(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialRegistered &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialRegisteredCopyWith<_$_SocialRegistered> get copyWith =>
      __$$_SocialRegisteredCopyWithImpl<_$_SocialRegistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return socialRegistered(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return socialRegistered?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (socialRegistered != null) {
      return socialRegistered(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return socialRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return socialRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (socialRegistered != null) {
      return socialRegistered(this);
    }
    return orElse();
  }
}

abstract class _SocialRegistered implements AuthState {
  const factory _SocialRegistered({final String? msg}) = _$_SocialRegistered;

  String? get msg;
  @JsonKey(ignore: true)
  _$$_SocialRegisteredCopyWith<_$_SocialRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error, ErrorState? errorState});

  $ErrorStateCopyWith<$Res>? get errorState;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? errorState = freezed,
  }) {
    return _then(_$_Error(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorState: freezed == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as ErrorState?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<$Res>? get errorState {
    if (_value.errorState == null) {
      return null;
    }

    return $ErrorStateCopyWith<$Res>(_value.errorState!, (value) {
      return _then(_value.copyWith(errorState: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.error, this.errorState});

  @override
  final String? error;
  @override
  final ErrorState? errorState;

  @override
  String toString() {
    return 'AuthState.error(error: $error, errorState: $errorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, errorState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return error(this.error, errorState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return error?.call(this.error, errorState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, errorState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({final String? error, final ErrorState? errorState}) =
      _$_Error;

  String? get error;
  ErrorState? get errorState;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordSentCopyWith<$Res> {
  factory _$$_ResetPasswordSentCopyWith(_$_ResetPasswordSent value,
          $Res Function(_$_ResetPasswordSent) then) =
      __$$_ResetPasswordSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetPasswordSentCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ResetPasswordSent>
    implements _$$_ResetPasswordSentCopyWith<$Res> {
  __$$_ResetPasswordSentCopyWithImpl(
      _$_ResetPasswordSent _value, $Res Function(_$_ResetPasswordSent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetPasswordSent implements _ResetPasswordSent {
  const _$_ResetPasswordSent();

  @override
  String toString() {
    return 'AuthState.resetPasswordSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetPasswordSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return resetPasswordSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return resetPasswordSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (resetPasswordSent != null) {
      return resetPasswordSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return resetPasswordSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return resetPasswordSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (resetPasswordSent != null) {
      return resetPasswordSent(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordSent implements AuthState {
  const factory _ResetPasswordSent() = _$_ResetPasswordSent;
}

/// @nodoc
abstract class _$$_LogedInCopyWith<$Res> {
  factory _$$_LogedInCopyWith(
          _$_LogedIn value, $Res Function(_$_LogedIn) then) =
      __$$_LogedInCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$_LogedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LogedIn>
    implements _$$_LogedInCopyWith<$Res> {
  __$$_LogedInCopyWithImpl(_$_LogedIn _value, $Res Function(_$_LogedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_LogedIn(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LogedIn implements _LogedIn {
  const _$_LogedIn({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.logedIn(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogedIn &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogedInCopyWith<_$_LogedIn> get copyWith =>
      __$$_LogedInCopyWithImpl<_$_LogedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return logedIn(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return logedIn?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _LogedIn implements AuthState {
  const factory _LogedIn({final String? msg}) = _$_LogedIn;

  String? get msg;
  @JsonKey(ignore: true)
  _$$_LogedInCopyWith<_$_LogedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImagePickedCopyWith<$Res> {
  factory _$$_ImagePickedCopyWith(
          _$_ImagePicked value, $Res Function(_$_ImagePicked) then) =
      __$$_ImagePickedCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$_ImagePickedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ImagePicked>
    implements _$$_ImagePickedCopyWith<$Res> {
  __$$_ImagePickedCopyWithImpl(
      _$_ImagePicked _value, $Res Function(_$_ImagePicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_ImagePicked(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$_ImagePicked implements _ImagePicked {
  const _$_ImagePicked({required this.image});

  @override
  final XFile image;

  @override
  String toString() {
    return 'AuthState.imagePicked(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagePicked &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagePickedCopyWith<_$_ImagePicked> get copyWith =>
      __$$_ImagePickedCopyWithImpl<_$_ImagePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailValid,
    required TResult Function() resendingEmail,
    required TResult Function(String? msg) success,
    required TResult Function(String? error) emailError,
    required TResult Function(String? error) passworderror,
    required TResult Function() loading,
    required TResult Function() socialLoading,
    required TResult Function() invalidCode,
    required TResult Function() emailConfirmed,
    required TResult Function() confirmationCodeReset,
    required TResult Function() profileCompleted,
    required TResult Function(String? msg) registered,
    required TResult Function(String? msg) socialRegistered,
    required TResult Function(String? error, ErrorState? errorState) error,
    required TResult Function() resetPasswordSent,
    required TResult Function(String? msg) logedIn,
    required TResult Function(XFile image) imagePicked,
  }) {
    return imagePicked(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailValid,
    TResult? Function()? resendingEmail,
    TResult? Function(String? msg)? success,
    TResult? Function(String? error)? emailError,
    TResult? Function(String? error)? passworderror,
    TResult? Function()? loading,
    TResult? Function()? socialLoading,
    TResult? Function()? invalidCode,
    TResult? Function()? emailConfirmed,
    TResult? Function()? confirmationCodeReset,
    TResult? Function()? profileCompleted,
    TResult? Function(String? msg)? registered,
    TResult? Function(String? msg)? socialRegistered,
    TResult? Function(String? error, ErrorState? errorState)? error,
    TResult? Function()? resetPasswordSent,
    TResult? Function(String? msg)? logedIn,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return imagePicked?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailValid,
    TResult Function()? resendingEmail,
    TResult Function(String? msg)? success,
    TResult Function(String? error)? emailError,
    TResult Function(String? error)? passworderror,
    TResult Function()? loading,
    TResult Function()? socialLoading,
    TResult Function()? invalidCode,
    TResult Function()? emailConfirmed,
    TResult Function()? confirmationCodeReset,
    TResult Function()? profileCompleted,
    TResult Function(String? msg)? registered,
    TResult Function(String? msg)? socialRegistered,
    TResult Function(String? error, ErrorState? errorState)? error,
    TResult Function()? resetPasswordSent,
    TResult Function(String? msg)? logedIn,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailValid value) emailValid,
    required TResult Function(_ResendingEmail value) resendingEmail,
    required TResult Function(_Succes value) success,
    required TResult Function(_EmailError value) emailError,
    required TResult Function(_PasswordError value) passworderror,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SocialLoading value) socialLoading,
    required TResult Function(_InvalidCode value) invalidCode,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ConfirmationCodeReset value)
        confirmationCodeReset,
    required TResult Function(_ProfileCompleted value) profileCompleted,
    required TResult Function(_Registered value) registered,
    required TResult Function(_SocialRegistered value) socialRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_ResetPasswordSent value) resetPasswordSent,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_ImagePicked value) imagePicked,
  }) {
    return imagePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailValid value)? emailValid,
    TResult? Function(_ResendingEmail value)? resendingEmail,
    TResult? Function(_Succes value)? success,
    TResult? Function(_EmailError value)? emailError,
    TResult? Function(_PasswordError value)? passworderror,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SocialLoading value)? socialLoading,
    TResult? Function(_InvalidCode value)? invalidCode,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult? Function(_ProfileCompleted value)? profileCompleted,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_SocialRegistered value)? socialRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_ImagePicked value)? imagePicked,
  }) {
    return imagePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailValid value)? emailValid,
    TResult Function(_ResendingEmail value)? resendingEmail,
    TResult Function(_Succes value)? success,
    TResult Function(_EmailError value)? emailError,
    TResult Function(_PasswordError value)? passworderror,
    TResult Function(_Loading value)? loading,
    TResult Function(_SocialLoading value)? socialLoading,
    TResult Function(_InvalidCode value)? invalidCode,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ConfirmationCodeReset value)? confirmationCodeReset,
    TResult Function(_ProfileCompleted value)? profileCompleted,
    TResult Function(_Registered value)? registered,
    TResult Function(_SocialRegistered value)? socialRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_ResetPasswordSent value)? resetPasswordSent,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class _ImagePicked implements AuthState {
  const factory _ImagePicked({required final XFile image}) = _$_ImagePicked;

  XFile get image;
  @JsonKey(ignore: true)
  _$$_ImagePickedCopyWith<_$_ImagePicked> get copyWith =>
      throw _privateConstructorUsedError;
}
