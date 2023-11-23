import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar(
      {required this.width,
      required this.height,
      required this.style,
      required this.firstName,
      required this.lastName,
      this.child,
      super.key});
  final String firstName;
  final String lastName;
  final TextStyle style;
  final double width;
  final double height;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    final first = firstName[0].toUpperCase();
    final last = lastName[0].toUpperCase();
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.6)),
      child: Text(
        "$first$last",
        style: style,
      ),
    );
  }
}
