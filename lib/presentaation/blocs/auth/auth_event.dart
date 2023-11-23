part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkPassword(
      {required PasswordCheckRequest request}) = _CheckPassword;
  const factory AuthEvent.forgetpassword(
      {required ForgetPasswordRequest request}) = _ForgetPassword;
  const factory AuthEvent.resetpassword(
      {required ResetPasswordRequest request}) = _ResetPassword;
  const factory AuthEvent.confirmEmail(
      {required String code, required String email}) = _ConfirmEmail;

  const factory AuthEvent.resendEmailConfirmationCode({required String email}) =
      _ResendEmailConfirmationCode;

  const factory AuthEvent.signUpGoogle() = _SignUpGoogle;
  const factory AuthEvent.signUpFacebook() = _SignUpFacebook;
  const factory AuthEvent.signUpApple() = _SignUpApple;
  const factory AuthEvent.register({required RegisterCustomer request}) =
      _RegisterPrimary;
  const factory AuthEvent.completeProfile({required RegisterCustomer request}) =
      _CompleteProfile;
  const factory AuthEvent.login({required LoginRequest request}) = _LogIn;

  const factory AuthEvent.uploadImage({required ImageSource source}) =
      _UploadImage;
}
