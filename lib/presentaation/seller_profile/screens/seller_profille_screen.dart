import 'package:commercial_directory_users/presentaation/blocs/seller_info/seller_info_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/network_error_widget.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as errors;
import 'package:commercial_directory_users/presentaation/widgets/profile_avatar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:shimmer/shimmer.dart' as shimmer;
import 'package:skeletons/skeletons.dart';

import '../../../app/locator.dart';

class SellerProfileScreen extends StatelessWidget {
  const SellerProfileScreen({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SellerInfoBloc(sl())..add(SellerInfoEvent.load(sellerId: id)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("seller_profile".tr()),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<SellerInfoBloc, SellerInfoState>(
              builder: (context, state) {
                return state.when(
                    loading: () => Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 3.h,
                                ),
                                SkeletonAvatar(
                                  style: SkeletonAvatarStyle(
                                      width: 15.h,
                                      height: 15.h,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      alignment: Alignment.center,
                                      maxLength: 100,
                                      width: 100,
                                      height: 1.h,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      alignment: Alignment.center,
                                      width: 200,
                                      height: 1.h,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      width: double.infinity,
                                      height: 1,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 4.h,
                                      width: double.infinity,
                                    ),
                                    SkeletonLine(
                                      style: SkeletonLineStyle(
                                          width: 80,
                                          height: 1.h,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                          lineStyle: SkeletonLineStyle(
                                              randomLength: true,
                                              height: 1.h,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          lines: 3),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SkeletonLine(
                                      style: SkeletonLineStyle(
                                          width: 80,
                                          height: 1.h,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          SkeletonItem(
                                              child: Container(
                                            width: 80,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 40,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 60,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 80,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 100,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SkeletonLine(
                                      style: SkeletonLineStyle(
                                          width: 80,
                                          height: 1.h,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          SkeletonItem(
                                              child: Container(
                                            width: 80,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 80,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 60,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 80,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                          SkeletonItem(
                                              child: Container(
                                            width: 100,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SkeletonLine(
                                      style: SkeletonLineStyle(
                                          width: 80,
                                          height: 1.h,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: SkeletonLine(
                                        style: SkeletonLineStyle(
                                            width: 200,
                                            height: 1.h,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SkeletonLine(
                                      style: SkeletonLineStyle(
                                          width: 80,
                                          height: 1.h,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          SizedBox(
                                            width: 40.w,
                                            child: Row(
                                              children: [
                                                SkeletonAvatar(
                                                  style: SkeletonAvatarStyle(
                                                      width: 3.h,
                                                      height: 3.h,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                SkeletonItem(
                                                    child: Container(
                                                  width: 80,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .background,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                )),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40.w,
                                            child: Row(
                                              children: [
                                                SkeletonAvatar(
                                                  style: SkeletonAvatarStyle(
                                                      width: 3.h,
                                                      height: 3.h,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                SkeletonItem(
                                                    child: Container(
                                                  width: 50,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .background,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                )),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40.w,
                                            child: Row(
                                              children: [
                                                SkeletonAvatar(
                                                  style: SkeletonAvatarStyle(
                                                      width: 3.h,
                                                      height: 3.h,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                SkeletonItem(
                                                    child: Container(
                                                  width: 100,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .background,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                    error: (error) => error.when(networkError: (_) {
                          return Center(
                            child: NetworkErrorWidget(tryAgain: () {
                              context
                                  .read<SellerInfoBloc>()
                                  .add(SellerInfoEvent.load(sellerId: id));
                            }),
                          );
                        }, other: (_) {
                          return Center(
                            child: errors.ErrorWidget(tryAgain: () {
                              context
                                  .read<SellerInfoBloc>()
                                  .add(SellerInfoEvent.load(sellerId: id));
                            }),
                          );
                        }),
                    loaded: (seller) => Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 3.h,
                                ),
                                CachedNetworkImage(
                                    imageUrl: seller.image ?? "",
                                    imageBuilder: (ctx, imageProvider) {
                                      return Container(
                                        height: 15.h,
                                        width: 15.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: Colors.grey, width: 8),
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            )),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 2.5.h,
                                            height: 2.5.h,
                                            decoration: BoxDecoration(
                                                color: seller.active
                                                    ? Colors.green
                                                    : Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                        ),
                                      );
                                    },
                                    placeholder: (_, __) =>
                                        shimmer.Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade50,
                                          child: Container(
                                            height: 15.h,
                                            width: 15.h,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                width: 2.5.h,
                                                height: 2.5.h,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ),
                                        ),
                                    errorWidget: (context, url, error) {
                                      return ProfileAvatar(
                                          height: 15.h,
                                          width: 15.h,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 40,
                                              color: Colors.white),
                                          firstName: seller.firstName,
                                          lastName: seller.lastName,
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 2.5.h,
                                              height: 2.5.h,
                                              decoration: BoxDecoration(
                                                  color: seller.active
                                                      ? Colors.green
                                                      : Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                            ),
                                          ));
                                      return Container(
                                        height: 15.h,
                                        width: 15.h,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: Colors.grey, width: 8),
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 2.5.h,
                                            height: 2.5.h,
                                            decoration: BoxDecoration(
                                                color: seller.active
                                                    ? Colors.green
                                                    : Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                        ),
                                      );
                                    }),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  "${seller.commercialActivity}",
                                  style: TextStyle(
                                      fontSize: 16.dp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Text(
                                  "${seller.address}",
                                  style: TextStyle(fontSize: 14.dp),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                )
                              ],
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 1.h,
                                      width: double.infinity,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                            Icons.home_repair_service_rounded),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          "services",
                                          style: TextStyle(
                                              fontSize: 15.dp,
                                              fontWeight: FontWeight.w600),
                                        ).tr(),
                                      ],
                                    ),
                                    SizedBox(
                                      height: .1.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          ...seller.services
                                                  ?.map((e) => Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 8),
                                                        decoration: BoxDecoration(
                                                            color: AppTheme
                                                                .secondaryColor
                                                                .withOpacity(
                                                                    .7),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Text(
                                                          e,
                                                          style: TextStyle(
                                                              fontSize: 14.dp,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ))
                                                  .toList() ??
                                              []
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.category),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          "sections",
                                          style: TextStyle(
                                              fontSize: 15.dp,
                                              fontWeight: FontWeight.w600),
                                        ).tr(),
                                      ],
                                    ),
                                    SizedBox(
                                      height: .1.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          ...seller.services
                                                  ?.map((e) => Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 8),
                                                        decoration: BoxDecoration(
                                                            color: AppTheme
                                                                .secondaryColor
                                                                .withOpacity(
                                                                    .7),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Text(
                                                          e,
                                                          style: TextStyle(
                                                              fontSize: 14.dp,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ))
                                                  .toList() ??
                                              []
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          "location",
                                          style: TextStyle(
                                              fontSize: 15.dp,
                                              fontWeight: FontWeight.w600),
                                        ).tr(),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          Text(
                                            "${seller.country},${seller.city},${seller.region}",
                                            style: TextStyle(
                                              fontSize: 14.dp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.schedule),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          "working_hours",
                                          style: TextStyle(
                                              fontSize: 15.dp,
                                              fontWeight: FontWeight.w600),
                                        ).tr(),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Column(
                                        children: [
                                          ...seller.workDays
                                                  ?.map(
                                                    (e) => Card(
                                                      elevation: 3,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              e.name,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      14.dp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            SizedBox(
                                                              height: .5.h,
                                                            ),
                                                            Row(
                                                              children: [
                                                                const Text(
                                                                        "From :")
                                                                    .tr(),
                                                                Text(e.from)
                                                                    .tr(),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                const Text(
                                                                        "To :")
                                                                    .tr(),
                                                                Text(e.to).tr(),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  .toList() ??
                                              []
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.contact_page_rounded),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          "contacts",
                                          style: TextStyle(
                                              fontSize: 15.dp,
                                              fontWeight: FontWeight.w600),
                                        ).tr(),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Wrap(
                                        spacing: 5,
                                        runSpacing: 5,
                                        children: [
                                          ...seller.socialAccounts
                                                  ?.map(
                                                    (e) => SizedBox(
                                                      width: 25.w,
                                                      child: InkWell(
                                                        onTap: () {
                                                          /// TODO: move it to the app
                                                        },
                                                        child: Row(
                                                          children: [
                                                            _getIcon(e.type),
                                                            SizedBox(
                                                              width: 2.w,
                                                            ),
                                                            Text(e.name)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  .toList() ??
                                              []
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
              },
            ),
          ),
        ),
      ),
    );
  }

  SvgPicture _getIcon(String type) {
    switch (type) {
      case "Facebook":
        return SvgPicture.asset(
          Assets.assets_icons_facebook_svg,
          width: 5.w,
          height: 5.w,
        );
      case "X":
        return SvgPicture.asset(
          Assets.assets_icons_twitter_svg,
          width: 5.w,
          height: 5.w,
        );
      case "WhatsApp":
        return SvgPicture.asset(
          Assets.assets_icons_whatsapp_svg,
          width: 5.w,
          height: 5.w,
        );
      case "TikTok":
        return SvgPicture.asset(
          Assets.assets_icons_tiktok_svg,
          width: 5.w,
          height: 5.w,
        );
      case "YouTube":
        return SvgPicture.asset(
          Assets.assets_icons_youtube_svg,
          width: 5.w,
          height: 5.w,
        );
      case "LinkedIn":
        return SvgPicture.asset(
          Assets.assets_icons_linkedin_svg,
          width: 5.w,
          height: 5.w,
        );
      case "Instagram":
        return SvgPicture.asset(
          Assets.assets_icons_linkedin_svg,
          width: 5.w,
          height: 5.w,
        );
      default:
        return SvgPicture.asset(
          Assets.assets_icons_facebook_svg,
          width: 5.w,
          height: 5.w,
        );
    }
  }
}
