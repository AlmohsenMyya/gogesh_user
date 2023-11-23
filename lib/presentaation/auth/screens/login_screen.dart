import 'dart:io';

import 'package:commercial_directory_users/presentaation/blocs/dialog_ads/dialog_ad_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/request/auth/login/login_request.dart';
import '../../blocs/auth/auth_bloc.dart';

class LogInScreen extends HookWidget {
  LogInScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final email = useTextEditingController();
    final password = useTextEditingController();
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(socialRegistered: (msg) {
          context.goNamed(Routes.completeProfile.name);
        }, logedIn: (msg) {
          AlertController.show("", msg!, TypeAlert.success);
          context.read<DialogAdBloc>().add(const DialogAdEvent.getHomeAd());
          context.goNamed(Routes.home.name);
        });
      },
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 4.h,
                        ),

                        Container(
                          width: 15.h,
                          height: 15.h,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        // const Expanded(child: SizedBox()),
                        const Text(
                          "login_to_your_account",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w600),
                        ).tr(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    emailError: (error) => TextFormField(
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                          hintText: "email".tr(),
                                          errorText: error),
                                      controller: email,
                                      validator: (value) {
                                        if (isEmailValid(email.text)) {
                                          return null;
                                        } else {
                                          if (value == null || value.isEmpty) {
                                            return "please_enter_email".tr();
                                          } else {
                                            return "please_enter_valid_email"
                                                .tr();
                                          }
                                        }
                                      },
                                    ),
                                    orElse: () => TextFormField(
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: "email".tr(),
                                      ),
                                      controller: email,
                                      validator: (value) {
                                        if (isEmailValid(email.text)) {
                                          return null;
                                        } else {
                                          if (value == null || value.isEmpty) {
                                            return "please_enter_email".tr();
                                          } else {
                                            return "please_enter_valid_email"
                                                .tr();
                                          }
                                        }
                                      },
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    passworderror: (error) => TextFormField(
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                          hintText: "password".tr(),
                                          errorText: error),
                                      controller: password,
                                      validator: passwordValidator,
                                    ),
                                    orElse: () => TextFormField(
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: "password".tr(),
                                      ),
                                      controller: password,
                                      validator: passwordValidator,
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.goNamed(Routes.resetPassword.name);
                                },
                                child: const Text(
                                  "forget_password",
                                ).tr(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return SizedBox(
                              width: double.infinity,
                              child: CostumeButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<AuthBloc>().add(
                                        AuthEvent.login(
                                            request: LoginRequest(
                                                email: email.text,
                                                password: password.text)));
                                  }
                                },
                                child: state.maybeWhen(
                                  orElse: () => const Text("login").tr(),
                                  loading: () =>
                                      LoadingAnimationWidget.prograssiveDots(
                                          color: AppTheme.primaryColor,
                                          size: 20.dp),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: Divider(
                              color: Colors.grey,
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "or",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ).tr(),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                                child: Divider(
                              color: Colors.grey,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.signUpFacebook());
                              },
                              style: TextButton.styleFrom(
                                  fixedSize: const Size(0, 45),
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: AppTheme.secondaryColor,
                                  padding: const EdgeInsets.all(8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.grey.shade300))),
                              child: const Icon(
                                Ionicons.logo_facebook,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            TextButton(
                              onPressed: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.signUpGoogle());
                              },
                              style: TextButton.styleFrom(
                                  fixedSize: const Size(0, 45),
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: AppTheme.secondaryColor,
                                  padding: const EdgeInsets.all(8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.grey.shade300))),
                              child: const Icon(
                                Ionicons.logo_google,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            if (Platform.isIOS)
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthBloc>()
                                      .add(const AuthEvent.signUpApple());
                                },
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(0, 45),
                                    foregroundColor: AppTheme.secondaryColor,
                                    backgroundColor: Colors.transparent,
                                    padding: const EdgeInsets.all(8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            color: Colors.grey.shade300))),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Ionicons.logo_apple,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),

                        const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("don't_have_an_account").tr(),
                            TextButton(
                              onPressed: () {
                                context.goNamed(Routes.signUp.name);
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.grey),
                              child: const Text(
                                "sing_up",
                                style: TextStyle(color: AppTheme.green),
                              ).tr(),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
