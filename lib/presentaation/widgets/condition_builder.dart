import 'package:flutter/material.dart';

class ConditionBuilder extends StatelessWidget {
  const ConditionBuilder(
      {Key? key,
      required this.condition,
      required this.builder,
      required this.elseBuilder})
      : super(key: key);
  final WidgetBuilder builder;
  final WidgetBuilder elseBuilder;
  final bool Function() condition;
  @override
  Widget build(BuildContext context) {
    return condition() ? builder(context) : elseBuilder(context);
  }
}
