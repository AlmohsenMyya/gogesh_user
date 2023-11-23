import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../widgets/costume_button.dart';
import '../../widgets/input_text_field.dart';

class ContactUsScreen extends HookWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullName = useTextEditingController();
    final phone = useTextEditingController();
    final message = useTextEditingController();
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('contact_us').tr(),
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                InputTextField(
                  label: 'full_name'.tr(),
                  hint: 'full_name'.tr(),
                  controller: fullName,
                  validator: (String) {
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                InputTextField(
                  inputType: TextInputType.multiline,
                  label: 'phone'.tr(),
                  hint: 'phone'.tr(),
                  controller: phone,
                  validator: (String) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: InputTextField(
                    inputType: TextInputType.multiline,
                    label: 'please_write_your_message_here'.tr(),
                    hint: 'write_here'.tr(),
                    maxLines: 5,
                    maxLength: 300,
                    controller: message,
                    validator: (value) {
                      return null;
                    },
                  ),
                ),
                const Expanded(child: SizedBox()),
                SizedBox(
                  width: double.infinity,
                  child: CostumeButton(
                    onPressed: () {},
                    child: const Text("send").tr(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
