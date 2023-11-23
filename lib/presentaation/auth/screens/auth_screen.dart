import 'dart:async';
import 'dart:io';

import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/core/extensions/build_context_extension.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/domain/usecases/location/determine_location_use_case.dart';
import 'package:commercial_directory_users/presentaation/blocs/auth/auth_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../domain/usecases/currency/determine_currency_use_case.dart';
import 'login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          socialRegistered: (msg) {
            context.goNamed(Routes.completeProfile.name);
            SmartDialog.dismiss();
          },
          socialLoading: () => SmartDialog.showLoading(),
        );
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(child: SizedBox()),
              SizedBox(
                height: 4.h,
              ),
              SvgPicture.asset(
                Assets.assets_icons_authentication_svg,
                width: 20.h,
                height: 20.h,
              ),
              SizedBox(
                height: 4.h,
              ),
              // SizedBox(
              //     width: double.infinity,
              //     child: TextButton(
              //       onPressed: () {
              //         context
              //             .read<AuthBloc>()
              //             .add(const AuthEvent.signUpFacebook());
              //       },
              //       style: TextButton.styleFrom(
              //           fixedSize: Size(0, 5.h),
              //           backgroundColor: Colors.transparent,
              //           foregroundColor: AppTheme.secondaryColor,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //               side: BorderSide(color: Colors.grey.shade300))),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "continue_with_facebook",
              //             style: TextStyle(fontSize: 12.dp),
              //           ).tr(),
              //           SizedBox(
              //             width: 2.w,
              //           ),
              //           SvgPicture.asset(
              //             Assets.assets_icons_facebook_icon_svg,
              //             width: 3.h,
              //             height: 3.h,
              //           )
              //         ],
              //       ),
              //     )),
              SizedBox(
                width: double.infinity,
                height: 5.h,
                child: SignInButton(
                  Buttons.facebookNew,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 3,
                  onPressed: () {
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.signUpFacebook());
                  },
                  text: "continue_with_facebook".tr(),
                ),
              ),

              SizedBox(
                height: 2.h,
              ),
              // SizedBox(
              //     width: double.infinity,
              //     child: TextButton(
              //       onPressed: () {
              //         context
              //             .read<AuthBloc>()
              //             .add(const AuthEvent.signUpGoogle());
              //       },
              //       style: TextButton.styleFrom(
              //           fixedSize: Size(0, 5.h),
              //           backgroundColor: Colors.transparent,
              //           foregroundColor: AppTheme.secondaryColor,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //               side: BorderSide(color: Colors.grey.shade300))),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "continue_with_google",
              //             style: TextStyle(fontSize: 12.dp),
              //           ).tr(),
              //           SizedBox(
              //             width: 2.w,
              //           ),
              //           SvgPicture.asset(
              //             Assets.assets_icons_google_icon_svg,
              //             width: 3.h,
              //             height: 3.h,
              //           )
              //         ],
              //       ),
              //     )),
              SizedBox(
                width: double.infinity,
                height: 5.h,
                child: SignInButton(
                  Buttons.google,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 3,
                  onPressed: () {
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.signUpGoogle());
                  },
                  text: "continue_with_google".tr(),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              if (Platform.isIOS)
                SizedBox(
                  width: double.infinity,
                  height: 5.h,
                  child: SignInButton(
                    Buttons.appleDark,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 3,
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.signUpApple());
                    },
                    text: "continue_with_apple".tr(),
                  ),
                ),

              // SizedBox(
              //     width: double.infinity,
              //     child: TextButton(
              //       onPressed: () {
              //         context
              //             .read<AuthBloc>()
              //             .add(const AuthEvent.signUpApple());
              //       },
              //       style: TextButton.styleFrom(
              //           fixedSize: Size(0, 5.h),
              //           foregroundColor: AppTheme.secondaryColor,
              //           backgroundColor: Colors.transparent,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //               side: BorderSide(color: Colors.grey.shade300))),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "continue_with_apple",
              //             style: TextStyle(fontSize: 12.dp),
              //           ).tr(),
              //           SizedBox(
              //             width: 2.w,
              //           ),
              //           SvgPicture.asset(
              //             Assets.assets_icons_apple_icon_svg,
              //             width: 3.h,
              //             height: 3.h,
              //           )
              //         ],
              //       ),
              //     )),
              SizedBox(
                height: 2.h,
              ),
              Flexible(
                child: Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Text(
                        "or",
                        style: TextStyle(
                            fontSize: 17.dp, fontWeight: FontWeight.w600),
                      ).tr(),
                    ),
                    const Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                  width: double.infinity,
                  child: CostumeButton(
                      onPressed: () {
                        context.goNamed(Routes.logIn.name);
                      },
                      child: const Text("login").tr())),
              SizedBox(
                height: 2.w,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () async {
                      /// I know it is uncorrected to call service locator here but i think it's better than send an event to AuthBloc and then receive a state to navigate to home screen
                      sl<LocalDataSource>().setValue<UserType>(
                          LocalDataKeys.userType, UserType.gust);
                      unawaited(
                          sl<DetermineCurrencyUseCase>().call(NoParams()));

                      context.goNamed(Routes.home.name);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppTheme.green,
                      fixedSize: Size(0, 5.h),
                    ),
                    child: const Text("continue_as_a_guest").tr(),
                  )),
              const Expanded(child: SizedBox()),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "don't_have_an_account",
                          style: TextStyle(fontSize: 12.dp),
                        ).tr(),
                        TextButton(
                          onPressed: () {
                            context.goNamed(Routes.signUp.name);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.grey),
                          child: Text(
                            "sing_up",
                            style: TextStyle(
                                color: AppTheme.green, fontSize: 12.dp),
                          ).tr(),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
