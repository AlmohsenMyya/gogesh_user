import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/presentaation/blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import 'package:commercial_directory_users/presentaation/main/widget/costume_bottom_navigation.dart';
import 'package:commercial_directory_users/presentaation/main/widget/side_menu_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:skeletons/skeletons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app/locator.dart';
import '../../app/router.dart';
import '../../core/use_case/use_case.dart';
import '../../domain/usecases/currency/determine_currency_use_case.dart';
import '../../domain/usecases/location/determine_location_use_case.dart';
import '../blocs/dialog_ads/dialog_ad_bloc.dart';
import '../blocs/main/bottom_nav_cubit.dart';
import '../blocs/main/side_menu_cubit.dart';
import '../blocs/profile/profile_bloc.dart';
import '../widgets/auth_builder.dart';
import '../widgets/costume_button.dart';

class MainScreen extends StatelessWidget {
  MainScreen({required this.child, required this.name, Key? key})
      : super(key: key);
  final Widget child;
  final String name;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final counterProvider = NotifierProvider<Counter, int>(() => sl<Counter>());

  @override
  Widget build(BuildContext context) {
    return BlocListener<MakeContactWithSellerBloc, MakeContactWithSellerState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error) {
            AlertController.show("", error ?? "", TypeAlert.error);
          },
          succes: (conversation) {
            context.pushNamed(
              Routes.chat.name,
              extra: conversation,
            );
          },
        );
      },
      child: ProviderScope(
        child: SideMenu(
          menu: GestureDetector(
              onTap: () => _sideMenuKey.currentState?.closeSideMenu(),
              child: SideMenuWidget()),
          key: _sideMenuKey,
          background: AppTheme.green,
          closeIcon: null,
          inverse: true,
          type: SideMenuType.slideNRotate,
          child: MultiBlocListener(
            listeners: [
              BlocListener<DialogAdBloc, DialogAdState>(
                listenWhen: (previous, current) => current.maybeWhen(
                  orElse: () => false,
                  homeAdLoaded: (_) => true,
                  homeLocalAd: (ad, random) => true,
                ),
                listener: (context, state) {
                  state.whenOrNull(
                    homeAdLoaded: (ad) {
                      SmartDialog.show(
                        builder: (_) {
                          return Container(
                            height: 500,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            alignment: Alignment.topCenter,
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        ad.title,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20.dp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // content
                                    CachedNetworkImage(
                                      imageUrl: ad.images ?? "",
                                      imageBuilder: (context, imageProvider) {
                                        return Container(
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.fill),
                                          ),
                                        );
                                      },
                                      placeholder: (context, url) {
                                        return SkeletonItem(
                                            child: Container(
                                          height: 300,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .background),
                                        ));
                                      },
                                      errorWidget: (context, url, error) =>
                                          SizedBox(
                                        height: 300,
                                        child: Center(
                                            child: const Text(
                                                    "could_not_load_image")
                                                .tr()),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          ad.description,
                                          textAlign: TextAlign.center,
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: CostumeButton(
                                        onPressed: () async {
                                          if (ad.url != null) {
                                            await launchUrl(
                                                Uri.parse(ad.url ?? ""));
                                          } else {
                                            context.pushNamed(
                                                Routes.adDetails.name,
                                                pathParameters: {
                                                  "id": "${ad.id}"
                                                });
                                          }
                                          SmartDialog.dismiss();
                                        },
                                        child: const Text('show_more_details')
                                            .tr(),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    homeLocalAd: (ad, random) => SmartDialog.show(
                      builder: (_) {
                        return Container(
                          height: 350,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          alignment: Alignment.topCenter,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    ad,
                                    height: 300,
                                    fit: BoxFit.fill,
                                    frameBuilder: (context, child, frame,
                                            wasSynchronouslyLoaded) =>
                                        ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: child,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              BlocListener<SideMenuCubit, bool>(
                listener: (_, __) {
                  final state = _sideMenuKey.currentState;
                  if (state?.isOpened ?? false) {
                    state?.closeSideMenu(); // close side menu
                  } else {
                    state?.openSideMenu(); // open side menu
                  }
                },
              ),
            ],
            child: WillPopScope(
              onWillPop: () async {
                final state = _sideMenuKey.currentState;
                if (state?.isOpened ?? false) {
                  state?.closeSideMenu();
                  return false; // close side menu
                }
                return true;
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: AppBar(
                  leading: IconButton(
                      onPressed: () {
                        context.read<SideMenuCubit>().sideMenuActionTaken();
                      },
                      icon: const Icon(Icons.menu)),
                  actions: [
                    AuthBuilder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          context.pushNamed(Routes.conversationsScreen.name);
                        },
                        icon: const Icon(
                          Ionicons.chatbubble_ellipses_outline,
                        ),
                        // Consumer(
                        //   builder: (BuildContext context, WidgetRef ref,
                        //       Widget? child) {
                        //     ref.exists(counterProvider);
                        //     final count = ref.watch(counterProvider);
                        //     return Badge(
                        //       isLabelVisible: count != 0,
                        //       label: Text(
                        //         count.toString(),
                        //         style: const TextStyle(
                        //             fontWeight: FontWeight.w500),
                        //       ),
                        //       child: const Icon(
                        //         Ionicons.chatbubble_ellipses_outline,
                        //       ),
                        //     );
                        //   },
                        // ),
                      ),
                      gustBuilder: (context) => const SizedBox(),
                    ),
                    AuthBuilder(
                      builder: (context) => IconButton(
                          onPressed: () {
                            FirebaseMessaging.instance.getNotificationSettings().then((value) => value);
                            context.pushNamed(Routes.notification.name);
                          },
                          icon: const Badge(
                            label: Text(
                              "3",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            child: Icon(
                              Ionicons.notifications_outline,
                            ),
                          )),
                      gustBuilder: (context) => const SizedBox(),
                    ),
                  ],
                  centerTitle: true,
                  title: Text(name).tr(),
                ),
                body: SafeArea(
                  child: Stack(
                    children: [
                      child,
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BlocBuilder<BottomNavCubit, int>(
                          builder: (context, state) {
                            return CostumeBottomNavigation(
                              index: state,
                              onTap: (int index) {
                                context
                                    .read<BottomNavCubit>()
                                    .changeIndex(index);
                                switch (index) {
                                  case 0:
                                    context.goNamed(Routes.home.name,
                                        queryParameters: {"name": "filtering"});
                                    break;
                                  case 1:
                                    context.goNamed(Routes.sector.name,
                                        queryParameters: {"name": "sectors"});
                                    break;
                                  case 2:
                                    context.goNamed(Routes.favorite.name,
                                        queryParameters: {"name": "favorite"});
                                    break;
                                  case 3:
                                    context.goNamed(Routes.ads.name,
                                        queryParameters: {
                                          "name": "commercial_ads"
                                        });
                                    break;
                                  case 4:

                           context.read<ProfileBloc>().add(
                                const ProfileEvent.loadedProfile(),
                                );
                           context.goNamed(Routes.me.name,
                                        queryParameters: {"name": "me"});
                                    break;
                                }
                              },
                              items: [
                                Item(
                                  icon: SvgPicture.asset(
                                      Assets.assets_home_bottom_icons_home_svg),
                                  activeIcon: SvgPicture.asset(
                                    Assets
                                        .assets_home_bottom_icons_home_active_svg,
                                  ),
                                  title: const Text(
                                    "home",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ).tr(),
                                  activeTitle: const Text(
                                    "home",
                                    style: TextStyle(fontSize: 13),
                                  ).tr(),
                                ),
                                Item(
                                  icon: const Icon(
                                    Iconsax.category,
                                    color: Colors.white,
                                  ),
                                  activeIcon: const Icon(Iconsax.category),
                                  title: const Text(
                                    "sectors",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ).tr(),
                                  activeTitle: const Text(
                                    "sectors",
                                    style: TextStyle(fontSize: 13),
                                  ).tr(),
                                ),
                                Item(
                                  icon: SvgPicture.asset(
                                      Assets.assets_home_bottom_icons_fav_svg),
                                  activeIcon: SvgPicture.asset(
                                    Assets
                                        .assets_home_bottom_icons_favorite_active_svg,
                                  ),
                                  title: const Text(
                                    "favorite",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ).tr(),
                                  activeTitle: const Text(
                                    "favorite",
                                    style: TextStyle(fontSize: 13),
                                  ).tr(),
                                ),
                                Item(
                                  icon: const FaIcon(
                                    FontAwesomeIcons.bullhorn,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  activeIcon: const FaIcon(
                                    FontAwesomeIcons.bullhorn,
                                    size: 20,
                                  ),
                                  title: const Text(
                                    "ads",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ).tr(),
                                  activeTitle: const Text(
                                    "ads",
                                    style: TextStyle(fontSize: 13),
                                  ).tr(),
                                ),
                                Item(
                                  icon: SvgPicture.asset(
                                      Assets.assets_home_bottom_icons_user_svg),
                                  activeIcon: SvgPicture.asset(
                                    Assets
                                        .assets_home_bottom_icons_user_active_svg,
                                  ),
                                  title: const Text(
                                    "me",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ).tr(),
                                  activeTitle: const Text(
                                    "me",
                                    style: TextStyle(fontSize: 13),
                                  ).tr(),
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Counter extends Notifier<int> {
  @override
  int build() => sl<LocalDataSource>()
      .getValue<int>(LocalDataKeys.unreadMessages, defaultValue: 0)!;

  void increment() => state++;
}
