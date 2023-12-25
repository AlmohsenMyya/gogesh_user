import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/presentaation/widgets/condition_builder.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as easy_localization;

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../widgets/profile_avatar.dart';

class SideMenuWidget extends StatelessWidget {
  SideMenuWidget({Key? key}) : super(key: key);

  final sideMenuContent = <Map<String, dynamic>>[
    {
      "title": "previously_requested_offers",
      "icon": const Icon(Icons.local_offer_outlined),
      "route_name": Routes.lastVisited.path,
      "guest": sl<LocalDataSource>().getValue(LocalDataKeys.userType) !=
          UserType.gust
    },
    // {"title": "language_settings", "icon": const Icon(Icons.language_outlined)},
    {
      "title": "privacy_policy",
      "icon": const Icon(Icons.lock_open),
      "route_name": Routes.privacyPolicy.path,
      "guest": true
    },
    {
      "title": "common_questions",
      "icon": const Icon(Icons.question_mark_outlined),
      "route_name": Routes.commonQuestion.path,
      "guest": true
    },
    {
      "title": "rate_app",
      "icon": const Icon(Icons.star_border_rounded),
      "guest": true
    },
    {
      "title": "send_app_to_friend",
      "icon": SvgPicture.asset(
        Assets.assets_icons_awesome_share_svg,
        width: 20,
        height: 20,
      ),
      "guest": true
    },
    {
      "title": "chat",
      "icon": const Icon(Iconsax.message),
      "route_name": Routes.conversationsScreen.path,
      "guest": sl<LocalDataSource>().getValue(LocalDataKeys.userType) !=
          UserType.gust
    },
    {
      "title": "report_abuse",
      "icon": const Icon(Icons.report_gmailerrorred),
      "route_name": Routes.report.path,
      "guest": sl<LocalDataSource>().getValue(LocalDataKeys.userType) !=
          UserType.gust
    },
    {
      "title": "contact_us",
      "icon": SvgPicture.asset(Assets.assets_icons_c_phone_svg),
      'route_name': Routes.contactUs.path,
      "guest": sl<LocalDataSource>().getValue(LocalDataKeys.userType) !=
          UserType.gust
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                ConditionBuilder(
                    condition: () =>
                        sl<LocalDataSource>()
                            .getValue(LocalDataKeys.userType) !=
                        UserType.gust,
                    builder: (context) => Builder(builder: (context) {
                          final profile = sl<LocalDataSource>()
                              .getValue<ProfileEntity>(LocalDataKeys.profile);
                          return Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              CachedNetworkImage(
                                imageUrl: profile?.pic ?? "",
                                imageBuilder: (ctx, imageProvider) {
                                  return Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: AppTheme.secondaryColor,
                                            width: 8),
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        )),
                                  );
                                },
                                placeholder: (_, __) => Shimmer.fromColors(
                                    baseColor: Colors.grey.shade200,
                                    highlightColor: Colors.grey.shade50,
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.grey),
                                    )),
                                errorWidget: (context, url, error) =>
                                    ProfileAvatar(
                                  firstName: profile?.firstName ?? " ",
                                  lastName: profile?.lastName ?? " ",
                                  width: 80,
                                  height: 80,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: 40.w,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        profile?.firstName ?? "",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        profile?.email ?? "",
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                    elseBuilder: (context) => Container(
                          width: double.infinity,
                          margin: const EdgeInsets.all(8),
                          child: CostumeButton(
                              onPressed: () {
                                context.pushNamed(Routes.logIn.name);
                              },
                              child: const Text("login").tr()),
                        )),
                const SizedBox(
                  height: 10,
                ),
                SideMenuItem(
                  title: "notifications",
                  icon: const Icon(Icons.notifications_outlined),
                  routeName: Routes.notification.path,
                  current: false,
                  guest: true,
                ),
                ...sideMenuContent.map((e) => SideMenuItem(
                      title: e['title'],
                      icon: e['icon'],
                      guest: e['guest'],
                      routeName: e['route_name'],
                    )),
                const SizedBox(
                  height: 10,
                ),
                SideMenuItem(
                  onTap: () async {
                    context.goNamed(Routes.auth.name);
                    await sl<LocalDataSource>().clear();
                    await sl<Dio>().options.headers.remove("Authorization");
                    await GoogleSignIn().signOut();
                    await FacebookAuth.instance.logOut();
                  },
                  title: "logout",
                  icon: const Icon(Icons.logout),
                  guest:
                      sl<LocalDataSource>().getValue(LocalDataKeys.userType) !=
                          UserType.gust,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SideMenuItem extends StatelessWidget {
  const SideMenuItem(
      {required this.title,
      required this.icon,
      this.current = false,
      this.onTap,
      Key? key,
      this.routeName,
      required this.guest})
      : super(key: key);
  final String title;
  final String? routeName;
  final Widget icon;
  final VoidCallback? onTap;
  final bool current;
  final bool guest;

  @override
  Widget build(BuildContext context) {
    return guest
        ? GestureDetector(
            onTap: onTap ?? () => context.push(routeName!),
            child: LayoutBuilder(builder: (_, c) {
              return SizedBox(
                width: c.maxWidth / 1.2,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 3),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: current ? Colors.white : null,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        )),
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(
                              iconTheme:
                                  const IconThemeData(color: Colors.white)),
                          child: Container(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppTheme.secondaryColor,
                            ),
                            child: Center(child: icon),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          title,
                          style: const TextStyle(fontSize: 16),
                        ).tr()
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        : const SizedBox();
  }
}
