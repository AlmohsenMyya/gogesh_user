part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.emailValid() = _EmailValid;
  const factory AuthState.resendingEmail() = _ResendingEmail;
  const factory AuthState.success({String? msg}) = _Succes;
  const factory AuthState.emailError({String? error}) = _EmailError;
  const factory AuthState.passworderror({String? error}) = _PasswordError;

  const factory AuthState.loading() = _Loading;
  const factory AuthState.socialLoading() = _SocialLoading;
  const factory AuthState.invalidCode() = _InvalidCode;
  const factory AuthState.emailConfirmed() = _EmailConfirmed;
  const factory AuthState.confirmationCodeReset() = _ConfirmationCodeReset;
  const factory AuthState.profileCompleted() = _ProfileCompleted;
  const factory AuthState.registered({String? msg}) = _Registered;
  const factory AuthState.socialRegistered({String? msg}) = _SocialRegistered;
  const factory AuthState.error({String? error, ErrorState? errorState}) =
      _Error;
  const factory AuthState.resetPasswordSent() = _ResetPasswordSent;
  const factory AuthState.logedIn({String? msg}) = _LogedIn;
  const factory AuthState.imagePicked({required XFile image}) = _ImagePicked;
}
