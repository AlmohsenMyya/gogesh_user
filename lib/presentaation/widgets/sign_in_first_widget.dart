import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

import '../../app/router.dart';
import '../../assets.dart';

class SignInFirstWidget extends StatelessWidget {
  const SignInFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ShakeAnimationController controller = ShakeAnimationController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.start(shakeCount: 1);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShakeAnimationWidget(
          shakeAnimationController: controller,
          shakeAnimationType: ShakeAnimationType.RoateShake,
          isForward: false,
          shakeCount: 0,
          shakeRange: 0.05,
          child: SvgPicture.asset(
            Assets.assets_icons_login_first_svg,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
        SizedBox(
          width: 200.dp,
          child: OutlinedButton(
              onPressed: () {
                context.pushNamed(Routes.logIn.name);
              },
              style: OutlinedButton.styleFrom(
                fixedSize: Size(0, 5.h),
              ),
              child: const Text(
                "login",
              ).tr()),
        )
      ],
    );
  }
}
