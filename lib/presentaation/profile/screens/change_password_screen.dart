import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:commercial_directory_users/domain/request/profile/edit_password_request.dart';
import '../../../app/locator.dart';
import '../../../domain/request/profile/edit_password_request.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/profile/profile_bloc.dart';
import '../../widgets/costume_button.dart';
import '../../widgets/input_text_field.dart';

final _formKey = GlobalKey<FormState>();

class ChangePasswordScreen extends HookWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oldPassword = useTextEditingController();
    final newPassword = useTextEditingController();
    final confirmNewPassword = useTextEditingController();
    return BlocProvider(
        create: (context) =>
            AuthBloc(
              resetPasswordUseCase: sl(),
            ),
        child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
      state.maybeWhen(
        orElse: () {},
        error: (error) {
          AlertController.show("", error!, TypeAlert.error);
        },
        succes: () {
          AlertController.show("", "msg", TypeAlert.success);
          context.pop();
        },
      );
    },
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("change_password").tr(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: oldPassword,
                      decoration: InputDecoration(
                        hintText: "old_password".tr(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: newPassword,
                      decoration: InputDecoration(
                        hintText: "new_password".tr(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: confirmNewPassword,
                      decoration: InputDecoration(
                        hintText: "confirm_new_password".tr(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: double.infinity,
                child: CostumeButton(child: BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Text("edit").tr(),
                      loading: () => LoadingAnimationWidget.prograssiveDots(
                          color: Colors.white, size: 30),
                    );
                  },
                ), onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<ProfileBloc>().add(ProfileEvent.changePassword(
                        request: EditPasswordRequest(
                          newPassword: newPassword.text,
                          oldPassword: oldPassword.text,
                          newPasswordConfirmation: confirmNewPassword.text,
                        )));
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    ),  ),
    );
  }
}
