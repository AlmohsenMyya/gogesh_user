import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {Key? key,
      this.label,
      this.readOnly = false,
      required this.hint,
      required this.controller,
      required this.validator,
      this.inputType,
      this.maxLines,
      this.maxLength,
      this.suffixIcon,
      this.suffix,
      this.errorText,
      this.textInputAction})
      : super(key: key);
  final String? label;
  final String hint;
  final int? maxLines;
  final bool readOnly;
  final int? maxLength;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final Widget? suffix;
  final TextInputAction? textInputAction;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Column(
                children: [
                  Text(
                    label!,
                    style: TextStyle(fontSize: 16.dp),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              )
            : const SizedBox(),
        TextFormField(
          readOnly: readOnly,
          maxLines: maxLines,
          maxLength: maxLength,
          style: const TextStyle(height: 1.5),
          keyboardType: inputType,
          decoration: InputDecoration(
              errorText: errorText,
              counter: SizedBox(),
              hintText: hint,
              suffixIcon: suffixIcon,
              suffix: suffix),
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }
}
