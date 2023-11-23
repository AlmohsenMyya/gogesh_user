import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

import '../../assets.dart';

class NetworkErrorWidget extends StatelessWidget {
  const NetworkErrorWidget({required this.tryAgain, super.key});
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
          shakeRange: 0.04,
          child: SvgPicture.asset(
            Assets.assets_icons_network_error_svg,
            width: 150,
          ),
        ),
        const SizedBox(
          height: 20,
          width: double.infinity,
        ),
        const Text(
          "there_is_no_internet_connection",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ).tr(),
        const Text(
          "connect_to_internet_and_try_again",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: Colors.grey),
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
