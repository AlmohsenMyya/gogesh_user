import 'package:commercial_directory_users/app/locator.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:commercial_directory_users/presentaation/report/bloc/report_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/request/chat/support_request.dart';
import '../../widgets/costume_button.dart';
import '../../widgets/input_text_field.dart';

class ReportScreen extends HookWidget {
  ReportScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final reason = useTextEditingController();
    final details = useTextEditingController();
    return BlocProvider(
      create: (context) => ReportBloc(makeChatUseCase: sl()),
      child: BlocListener<ReportBloc, ReportState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            succes: (msg) {
              AlertController.show("", 'msg!', TypeAlert.success);
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('report_abuse').tr(),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "abuse_remark",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ).tr(),
                      SizedBox(
                        height: 1.h,
                      ),
                      InputTextField(
                        textInputAction: TextInputAction.next,
                        inputType: TextInputType.multiline,
                        label: 'reason_for_reporting'.tr(),
                        hint: 'write_here'.tr(),
                        maxLines: 5,
                        controller: reason,
                        validator: (value) {
                          if (value != null &&
                              value.isNotEmpty &&
                              value.length >= 4) {
                            return null;
                          }
                          return "".tr();
                        },
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      InputTextField(
                          textInputAction: TextInputAction.done,
                          inputType: TextInputType.multiline,
                          label: 'you_can_also_include_other_details'.tr(),
                          hint: 'write_here'.tr(),
                          maxLines: 8,
                          controller: details,
                          validator: (value) {
                            if (value != null &&
                                value.isNotEmpty &&
                                value.length >= 4) {
                              return null;
                            }
                            return "".tr();
                          }),
                      SizedBox(
                        height: 5.h,
                      ),
                      BlocBuilder<ReportBloc, ReportState>(
                        builder: (context, state) {
                          return SizedBox(
                            width: double.infinity,
                            child: CostumeButton(
                              color: AppTheme.secondaryColor,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<ReportBloc>().add(
                                        ReportEvent.makeChat(
                                          request: MakeContactRequest(
                                            content: details.text,
                                            subject: reason.text,
                                          ),
                                        ),
                                      );
                                }
                              },
                              child: state.maybeWhen(
                                loading: () =>
                                    LoadingAnimationWidget.prograssiveDots(
                                        color: AppTheme.primaryColor,
                                        size: 20.sp),
                                orElse: () => const Text("send").tr(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
