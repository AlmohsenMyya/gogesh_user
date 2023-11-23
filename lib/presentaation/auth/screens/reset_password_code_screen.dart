import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:pinput/pinput.dart';

import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../domain/request/auth/password_check_request.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../widgets/costume_button.dart';

final _formKey = GlobalKey<FormState>();

class ResetPasswordCodeScreen extends HookWidget {
  const ResetPasswordCodeScreen({required this.email, super.key});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (error, _) =>
              AlertController.show("", error!, TypeAlert.error),
          success: (msg) {
            AlertController.show("", msg!, TypeAlert.success);

            context.goNamed(Routes.newPassword.name,
                queryParameters: {"code": controller.text});
          },
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "verification",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ).tr(),
                SizedBox(height: 5.h),
                const Text(
                  "enter_verification_code",
                  style: TextStyle(fontSize: 16),
                ).tr(),
                SizedBox(height: 5.h),
                Form(
                  key: _formKey,
                  child: Pinput(
                    controller: controller,
                    length: 6,
                    defaultPinTheme: PinTheme(
                      width: 40.w,
                      height: 56,
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(30, 60, 87, 1),
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppTheme.secondaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      }
                      return "please_enter_code".tr();
                    },
                  ),
                ),
                SizedBox(height: 5.h),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return SizedBox(
                      width: double.infinity,
                      child: CostumeButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.checkPassword(
                                    request: PasswordCheckRequest(
                                        code: controller.text),
                                  ),
                                );
                          }
                        },
                        child: state.maybeWhen(
                          orElse: () => const Text("verify").tr(),
                          loading: () => LoadingAnimationWidget.prograssiveDots(
                              color: AppTheme.primaryColor, size: 20.dp),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 2.h),
                const Text("did_not_receive_any_code").tr(),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<AuthBloc>().add(
                            AuthEvent.checkPassword(
                              request: PasswordCheckRequest(
                                code: controller.text,
                              ),
                            ),
                          );
                    }
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      foregroundColor: AppTheme.secondaryColor,
                      backgroundColor: Colors.transparent),
                  child: const Text(
                    "resend_code",
                  ).tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
