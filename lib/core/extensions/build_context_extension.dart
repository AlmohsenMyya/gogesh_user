import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  bool get isKeyboardOpen => mediaQuery.viewInsets.bottom != 0;
}

// extension SizePercentage on num {
//   double width(BuildContext context) =>
//       (MediaQuery.of(context).size.width) * (this / 100);
//   double height(BuildContext context) =>
//       (MediaQuery.of(context).size.height) * (this / 100);
// }
