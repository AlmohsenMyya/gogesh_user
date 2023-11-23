import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      renderNextBtn: Text(
        "next",
        style: GoogleFonts.cairo(
          fontSize: 15,
        ),
      ).tr(),
      renderDoneBtn: Text(
        "next",
        style: GoogleFonts.cairo(
          fontSize: 15,
        ),
      ).tr(),
      renderSkipBtn: Text(
        "skip",
        style: GoogleFonts.cairo(fontSize: 15, color: Colors.grey),
      ).tr(),
      isScrollable: false,
      onDonePress: () async {
        await sl<LocalDataSource>()
            .setValue(LocalDataKeys.userType, UserType.onboarding)
            .then((value) => context.goNamed(Routes.auth.name));
      },
      nextButtonStyle: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(Size(60, 40)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ))),
        backgroundColor: MaterialStateProperty.all<Color>(AppTheme.green),
      ),
      doneButtonStyle: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(Size(60, 40)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ))),
        backgroundColor: MaterialStateProperty.all<Color>(AppTheme.green),
      ),
      skipButtonStyle: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(Size(60, 40)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      listCustomTabs: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.assets_onboarding_onboarding_1_svg)
                  .animate()
                  .slide(
                      duration: const Duration(seconds: 1),
                      begin: const Offset(0, -1),
                      end: Offset.zero,
                      curve: Curves.easeInOut),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const Text(
                    "faster_communication",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ).tr(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("access_to_the_best_deals_in_less_than_30_seconds")
                      .tr(),
                ],
              ).animate().slide(
                  duration: const Duration(seconds: 1),
                  begin: const Offset(0, 1), // Start from top
                  end: Offset.zero,
                  curve: Curves.easeInOut),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.assets_onboarding_onboarding_2_svg)
                  .animate()
                  .slide(
                      duration: const Duration(seconds: 1),
                      begin: const Offset(0, -1),
                      end: Offset.zero,
                      curve: Curves.easeInOut),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const Text("classification_of_offers",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600))
                      .tr(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "you_will_find_offers_for_merchants_divided_by_commercial_sectors",
                    textAlign: TextAlign.center,
                  ).tr(),
                ],
              ).animate().slide(
                  duration: const Duration(seconds: 1),
                  begin: const Offset(0, 1), // Start from top
                  end: Offset.zero,
                  curve: Curves.easeInOut),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.assets_onboarding_onboarding_3_svg)
                  .animate()
                  .slide(
                      duration: const Duration(seconds: 1),
                      begin: const Offset(0, -1),
                      end: Offset.zero,
                      curve: Curves.easeInOut),
              const SizedBox(
                height: 120,
              ),
              Column(
                children: [
                  const Text("more_accurate_identification",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600))
                      .tr(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "filter_system_to_see_only_the_shows_you_like_and_pull_your_need",
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ).tr(),
                ],
              ).animate().slide(
                  duration: const Duration(seconds: 1),
                  begin: const Offset(0, 1), // Start from top
                  end: Offset.zero,
                  curve: Curves.easeInOut),
            ],
          ),
        ),
      ],
    );
  }
}
