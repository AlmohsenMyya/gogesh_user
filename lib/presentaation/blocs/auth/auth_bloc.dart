import 'dart:async';

import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../../domain/entities/locationEntity/country_entity.dart';
import '../../../domain/request/auth/forget_password_request.dart';
import '../../../domain/request/auth/login/login_request.dart';
import '../../../domain/request/auth/password_check_request.dart';
import '../../../domain/request/auth/register/register_customer.dart';
import '../../../domain/request/auth/reset_password_request.dart';
import '../../../domain/request/email/confirm_email_request.dart';
import '../../../domain/request/email/resend_email_confirmation_code.dart';
import '../../../domain/usecases/auth/check_password_use_case.dart';
import '../../../domain/usecases/auth/complete_profile_use_case.dart';
import '../../../domain/usecases/auth/forget_password_use_case.dart';
import '../../../domain/usecases/auth/login_use_case.dart';
import '../../../domain/usecases/auth/register_use_case.dart';
import '../../../domain/usecases/auth/reset_password_use_case.dart';
import '../../../domain/usecases/auth/sign_in_with_apple_use_case.dart';
import '../../../domain/usecases/auth/sign_in_with_facebook_use_case.dart';
import '../../../domain/usecases/auth/sign_in_with_google_use_case.dart';
import '../../../domain/usecases/email/confirm_email_use_case.dart';
import '../../../domain/usecases/email/resend_email_confirmation_code_use_case.dart';
import '../../../domain/usecases/location/determine_location_use_case.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInGoogleUseCase? signInGoogleUseCase;
  final SignInFacebookUseCase? signInFacebookUseCase;
  final SignInWithAppleUseCase? signInWithAppleUseCase;
  final RegisterUseCase? registerUseCase;
  final LoginUseCase? loginUseCase;
  final CompleteProfileUseCase? completeProfileUseCase;
  final CheckPasswordUseCase? checkPasswordUseCase;
  final ResetPasswordUseCase? resetPasswordUseCase;
  final ForgetPasswordUseCase? forgetPasswordUseCase;
  final ConfirmEmailUseCase? confirmEmailUseCase;
  final ResendEmailConfirmationCodeUseCase? resendEmailConfirmationCodeUseCase;

  AuthBloc({
     this.signInGoogleUseCase,
     this.signInFacebookUseCase,
     this.signInWithAppleUseCase,
     this.confirmEmailUseCase,
     this.completeProfileUseCase,
     this.registerUseCase,
     this.loginUseCase,
     this.checkPasswordUseCase,
     this.forgetPasswordUseCase,
     this.resetPasswordUseCase,
     this.resendEmailConfirmationCodeUseCase,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>(_mapEventToState);
  }

  FutureOr _mapEventToState(AuthEvent event, Emitter<AuthState> emit) async {
    return event.map(
      forgetpassword: (data) async {
        emit(const AuthState.loading());
        var result = await forgetPasswordUseCase!(data.request);
        return emit(result.when(
            failure: (error) =>
                AuthState.error(error: error?.localizedErrorMessage),
            success: (s) => AuthState.success(msg: s)));
      },
      checkPassword: (data) async {
        emit(const AuthState.loading());
        var result = await checkPasswordUseCase!(data.request);
        return emit(result.when(
            failure: (error) =>
                AuthState.error(error: error?.localizedErrorMessage),
            success: (s) => AuthState.success(msg: s)));
      },
      resetpassword: (data) async {
        emit(const AuthState.loading());
        var result = await resetPasswordUseCase!(data.request);
        return emit(result.when(
            failure: (error) =>
                AuthState.error(error: error?.localizedErrorMessage),
            success: (s) => AuthState.success(msg: s)));
      },
      signUpGoogle: (social) async {
        emit(const AuthState.socialLoading());
        var result = await signInGoogleUseCase!(NoParams());
        return emit(result.when(
            failure: (error) =>
                AuthState.error(error: error?.localizedErrorMessage),
            success: (s) => const AuthState.socialRegistered()));
      },
      signUpFacebook: (value) async {
        emit(const AuthState.socialLoading());
        var result = await signInFacebookUseCase!(NoParams());
        return emit(result.when(
            failure: (error) =>
                AuthState.error(error: error?.localizedErrorMessage),
            success: (s) => const AuthState.socialRegistered()));
      },
      register: (request) async {
        emit(const AuthState.loading());
        var result = await registerUseCase!(request.request);
        return emit(result.when(
            failure: (error) {
              return error!.maybeWhen(
                  orElse: () =>
                      AuthState.error(error: error.localizedErrorMessage),
                  emailInvalude: (data) =>
                      AuthState.emailError(error: error.localizedErrorMessage),
                  passwordInvalude: (data) => AuthState.passworderror(
                      error: error.localizedErrorMessage));
            },
            success: (s) => AuthState.registered(msg: s ?? '')));
      },
      login: (request) async {
        emit(const AuthState.loading());
        var result = await loginUseCase!(request.request);
        return emit(result.when(failure: (error) {
          return error!.maybeWhen(
              orElse: () => AuthState.error(error: error.localizedErrorMessage),
              emailInvalude: (data) =>
                  AuthState.emailError(error: error.localizedErrorMessage),
              passwordInvalude: (data) =>
                  AuthState.passworderror(error: error.localizedErrorMessage));
        }, success: (s) {
          return AuthState.logedIn(msg: s);
        }));
      },
      uploadImage: (value) async {
        var result = await pickImage(value.source);
        if (result != null) {
          return emit(AuthState.imagePicked(image: result));
        } else {
          return emit(const AuthState.initial());
        }
      },
      completeProfile: (_CompleteProfile value) async {
        emit(const AuthState.loading());
        var result = await completeProfileUseCase!(value.request);
        return emit(result.when(
            failure: (error) {
              return error!.maybeWhen(
                orElse: () =>
                    AuthState.error(error: error.localizedErrorMessage),
              );
            },
            success: (s) => const AuthState.profileCompleted()));
      },
      confirmEmail: (value) async {
        emit(const AuthState.loading());
        var result = await confirmEmailUseCase!(
            ConfirmEmailRequest(email: value.email, code: value.code));
        return emit(result.when(
            failure: (error) {
              return error!.maybeWhen(
                invalidConfirmationCode: (data) => AuthState.error(error: data),
                orElse: () =>
                    AuthState.error(error: error.localizedErrorMessage),
              );
            },
            success: (s) => const AuthState.emailConfirmed()));
      },
      resendEmailConfirmationCode: (value) async {
        emit(const AuthState.resendingEmail());
        var result = await resendEmailConfirmationCodeUseCase!(
          ResendEmailConfirmationCode(
            type: "customers",
            email: value.email,
          ),
        );
        return emit(result.when(
            failure: (error) {
              return error!.maybeWhen(
                orElse: () =>
                    AuthState.error(error: error.localizedErrorMessage),
                emailInvalude: (data) => AuthState.emailError(error: data),
              );
            },
            success: (s) => const AuthState.emailValid()));
      },
      signUpApple: (_SignUpApple value) async {
        emit(const AuthState.socialLoading());
        var result = await signInWithAppleUseCase!(NoParams());
        return emit(result.when(
            failure: (error) =>
                AuthState.error(error: error?.localizedErrorMessage),
            success: (s) => const AuthState.socialRegistered()));
      },
    );
  }
}
