import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:string_validator/string_validator.dart';

import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../widgets/input_text_field.dart';

final _formKey = GlobalKey<FormState>();

class ChangeEmailScreen extends HookWidget {
  const ChangeEmailScreen({required this.email, super.key});

  final String email;

  @override
  Widget build(BuildContext context) {
    final emailcontroller = useTextEditingController(text: email);
    String? errorMessage;
    return StatefulBuilder(builder: (context, setState) {
      return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            emailError: (error) {
              setState(() => errorMessage = error);
            },
            emailValid: () {
              context.pushNamed(
                Routes.emailConfirmation.name,
                queryParameters: {
                  "email": emailcontroller.text,
                },
              );
            },
          );
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("edit_email").tr(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputTextField(
                        errorText: errorMessage,
                        label: "email".tr(),
                        hint: "email".tr(),
                        suffixIcon: const Icon(
                          Icons.mail_outline,
                          color: AppTheme.secondaryColor,
                          size: 30,
                        ),
                        inputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        controller: emailcontroller,
                        validator: (value) {
                          if (email == emailcontroller.text) {
                            return "please_choose_another_email".tr();
                          }
                          if (isEmail(emailcontroller.text)) {
                            return null;
                          } else {
                            if (value == null || value.isEmpty) {
                              return "please_enter_email".tr();
                            } else {
                              return "please_enter_valid_email".tr();
                            }
                          }
                        }),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return CostumeButton(
                              child: state.maybeWhen(
                                orElse: () => const Text('edit').tr(),
                                resendingEmail: () =>
                                    LoadingAnimationWidget.prograssiveDots(
                                        color: Colors.white, size: 30),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                      AuthEvent.resendEmailConfirmationCode(
                                          email: emailcontroller.text));

                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);

                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                }
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
