import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

import '../../assets.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget(
      {required this.message, required this.tryAgain, super.key});
  final VoidCallback tryAgain;
  final String message;
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
          shakeRange: 0.04,
          child: SvgPicture.asset(
            Assets.assets_icons_no_data_svg,
            width: 150,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          message,
          style: const TextStyle(fontSize: 18),
        ).tr()
      ],
    );
  }
}
