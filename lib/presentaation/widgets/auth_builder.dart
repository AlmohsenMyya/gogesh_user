import 'package:flutter/material.dart';

import '../../app/locator.dart';
import '../../data/local_data_source/local_data_keys.dart';
import '../../data/local_data_source/local_data_source.dart';

class AuthBuilder extends StatelessWidget {
  const AuthBuilder(
      {Key? key, required this.builder, required this.gustBuilder})
      : super(key: key);
  final WidgetBuilder gustBuilder;
  final WidgetBuilder builder;
  @override
  Widget build(BuildContext context) {
    return sl<LocalDataSource>().getValue(LocalDataKeys.userType) ==
            UserType.gust
        ? gustBuilder(context)
        : builder(context);
  }
}
