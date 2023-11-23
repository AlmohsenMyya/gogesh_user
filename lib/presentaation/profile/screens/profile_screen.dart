import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/Utils.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/presentaation/widgets/condition_builder.dart';
import 'package:dio/dio.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../assets.dart';

import '../../../data/local_data_source/currencies.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/usecases/update_exchange_rate_use_case.dart';
import '../../auth/widgets/location_bottom_sheet.dart';
import '../../blocs/main/bottom_nav_cubit.dart';
import '../../blocs/main/side_menu_cubit.dart';
import '../../blocs/profile/profile_bloc.dart';
import '../../widgets/auth_builder.dart';
import '../../widgets/profile_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ConditionBuilder(
              condition: () =>
                  sl<LocalDataSource>().getValue(
                    LocalDataKeys.userType,
                  ) ==
                  UserType.gust,
              builder: (context) => Column(
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 8),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                      ).tr(),
                    ),
                  )
                ],
              ),
              elseBuilder: (context) => BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.when(
                    loading: () => Shimmer.fromColors(
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade50,
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    error: (value) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        CachedNetworkImage(
                          imageUrl: "",
                          imageBuilder: (ctx, imageProvider) {
                            return Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(color: Colors.grey, width: 8),
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
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 2.h,
                          width: 10.h,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(2.h)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 2.h,
                          width: 20.h,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(2.h)),
                        ),
                      ],
                    ),
                    loaded: (value) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        CachedNetworkImage(
                          imageUrl: value.data.pic.toImageOrEmpty(),
                          imageBuilder: (ctx, imageProvider) {
                            return Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(color: Colors.grey, width: 8),
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
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => ProfileAvatar(
                            firstName: value.data.firstName ?? " ",
                            lastName: value.data.lastName ?? " ",
                            width: 110,
                            height: 110,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "${value.data.firstName} ${value.data.lastName}",
                          style: TextStyle(
                              fontSize: 16.dp, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${value.data.email}",
                          style: TextStyle(fontSize: 14.dp),
                        ),
                      ],
                    ),
                    succes: () {
                      return const SizedBox();
                    },
                    loadingEdit: () {
                      return const SizedBox();
                    },
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                ),
                ConditionBuilder(
                  condition: () =>
                      sl<LocalDataSource>().getValue(
                        LocalDataKeys.userType,
                      ) ==
                      UserType.gust,
                  builder: (_) => const SizedBox(),
                  elseBuilder: (context) => ProfileItem(
                    title: 'edit_profile'.tr(),
                    leading: const Icon(Icons.person_outline_rounded),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                    onTap: () async {
                      await context
                          .pushNamed(
                            Routes.editProfile.name,
                          )
                          .then((value) => context.read<ProfileBloc>().add(
                                const ProfileEvent.loadedProfile(),
                              ));
                    },
                  ),
                ),
                ConditionBuilder(
                  condition: () =>
                      sl<LocalDataSource>().getValue(
                        LocalDataKeys.userType,
                      ) ==
                      UserType.gust,
                  builder: (_) => const SizedBox(),
                  elseBuilder: (context) => ProfileItem(
                    onTap: () => context.pushNamed(Routes.securityScreen.name,
                        extra: sl<LocalDataSource>()
                            .getValue<ProfileEntity>(LocalDataKeys.profile)
                            ?.email),
                    title: 'security'.tr(),
                    leading: const Icon(Icons.security),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                ConditionBuilder(
                  condition: () =>
                      sl<LocalDataSource>().getValue(
                        LocalDataKeys.userType,
                      ) ==
                      UserType.gust,
                  builder: (_) => const SizedBox(),
                  elseBuilder: (context) => ProfileItem(
                    onTap: () {},
                    title: "Notification_settings".tr(),
                    leading: const Icon(Icons.notifications_none_rounded),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),

                Builder(builder: (context) {
                  var value = sl<LocalDataSource>()
                      .getValue<Currency>(LocalDataKeys.currency)
                      ?.flag;
                  final items = currencies
                      .map((e) => DropdownMenuItem<String>(
                            value: e["flag"],
                            child: Row(
                              children: [
                                Text(
                                  e["flag"],
                                  style: TextStyle(fontSize: 20.dp),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  e["currencyName"]
                                      [context.locale.languageCode],
                                  style: TextStyle(
                                      fontSize: 14.dp,
                                      fontWeight: FontWeight.w600,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          ))
                      .toList();
                  return StatefulBuilder(builder: (context, setState) {
                    return DropdownButtonHideUnderline(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: DropdownButton2<String>(
                          hint: Row(
                            children: [
                              const Icon(Icons.currency_bitcoin),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "currency".tr(),
                                style: TextStyle(
                                    fontSize: 14.dp,
                                    fontWeight: FontWeight.w600),
                              ).tr(),
                            ],
                          ),
                          items: items,
                          value: value,
                          onChanged: (v) {
                            setState(() {
                              value = v ?? '';
                            });
                            final currency = Currency.fromJson(
                                currencies.firstWhere(
                                    (element) => element["flag"] == value));
                            unawaited(sl<LocalDataSource>()
                                .setValue(LocalDataKeys.currency, currency));
                            unawaited(sl<DetermineCurrencyExchangeRateUseCase>()
                                .call(Filter(type: currency.currencyCode)));
                          },
                          iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                              iconEnabledColor: AppTheme.secondaryColor),
                          buttonStyleData: const ButtonStyleData(
                            height: 40,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            maxHeight: 150,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            scrollbarTheme: ScrollbarThemeData(
                              radius: const Radius.circular(40),
                              thickness: MaterialStateProperty.all(6),
                              thumbVisibility: MaterialStateProperty.all(true),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                }),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    hint: Row(
                      children: [
                        const Icon(Icons.language_outlined),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "language".tr(),
                          style: TextStyle(
                              fontSize: 14.dp, fontWeight: FontWeight.w600),
                        ).tr(),
                      ],
                    ),
                    items: ["ar".tr(), "en".tr()]
                        .map((e) => DropdownMenuItem<String>(
                              value: e,
                              child: Row(
                                children: [
                                  Image.asset(
                                    e == "ar"
                                        ? Assets.assets_icons_saudi_arabia_png
                                        : Assets.assets_icons_usa_png,
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    {
                                          "ar": "arabic".tr(),
                                          "en": "english".tr()
                                        }[e] ??
                                        "",
                                    style: TextStyle(
                                        fontSize: 14.dp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    value: context.locale.languageCode,
                    onChanged: (v) {
                      sl<Dio>()
                          .options
                          .headers
                          .update("Accept-Language", (value) => v!);
                      context.setLocale(Locale(v!));
                      // context.read<BottomNavCubit>().changeIndex(0);
                    },
                    iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        iconEnabledColor: AppTheme.secondaryColor),
                    buttonStyleData: const ButtonStyleData(
                      height: 40,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all(6),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                  ),
                ),
                // ProfileItem(
                //   title: 'dark_mood'.tr(),
                //   leading: const Icon(Icons.dark_mode_outlined),
                //   trailing: SizedBox(
                //     width: 35,
                //     child: Builder(builder: (context) {
                //       bool value = false;
                //       return StatefulBuilder(builder: (context, setState) {
                //         return Switch(
                //           value: value,
                //           onChanged: (v) {
                //             setState(() => value = v);
                //           },
                //           activeColor: AppTheme.secondaryColor,
                //         );
                //       });
                //     }),
                //   ),
                // ),
                const SizedBox(
                  height: 85,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {Key? key,
      this.onTap,
      required this.title,
      required this.leading,
      required this.trailing})
      : super(key: key);
  final String title;
  final Widget leading;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            leading,
            SizedBox(
              width: 4.w,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 14.dp, fontWeight: FontWeight.w600),
            ),
            const Expanded(child: SizedBox()),
            trailing
          ],
        ),
      ),
    );
  }
}
