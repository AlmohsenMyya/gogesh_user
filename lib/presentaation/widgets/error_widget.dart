import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

import '../../assets.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({required this.tryAgain, super.key});
  final VoidCallback tryAgain;
  @override
  Widget build(BuildContext context) {
    ShakeAnimationController controller = ShakeAnimationController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.start(shakeCount: 1);
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShakeAnimationWidget(
          shakeAnimationController: controller,
          shakeAnimationType: ShakeAnimationType.RoateShake,
          isForward: false,
          shakeCount: 0,
          shakeRange: 0.05,
          child: SvgPicture.asset(
            Assets.assets_icons_error_svg,
            width: 150,
          ),
        ),
        const SizedBox(
          height: 20,
          width: double.infinity,
        ),
        const Text(
          "something_went_error",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ).tr(),
        OutlinedButton(
            onPressed: tryAgain,
            child: const Text(
              "try_again",
            ).tr())
      ],
    );
  }
}
