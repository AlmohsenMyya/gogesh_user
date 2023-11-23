import 'package:commercial_directory_users/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton(
      {this.onPressed, required this.child, this.color, Key? key})
      : super(key: key);
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          fixedSize: Size(0, 5.h),
        ),
        child: child);
  }
}
