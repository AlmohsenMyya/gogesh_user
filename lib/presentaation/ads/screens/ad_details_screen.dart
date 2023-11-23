import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/domain/enums/enums.dart';
import 'package:commercial_directory_users/presentaation/blocs/ad_details/ad_detaails_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer/shimmer.dart' as shimmer;
import 'package:timeago/timeago.dart' as timeago;

import 'package:skeletons/skeletons.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;
import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../app/theme.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import '../../widgets/auth_builder.dart';
import '../../widgets/network_error_widget.dart';

class AdDetailsScreen extends StatelessWidget {
  const AdDetailsScreen({required this.id, Key? key}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AdDetailsBloc(sl())..add(AdDetailsEvent.load(id: id)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ad_details").tr(),
          actions: [
            IconButton(
                onPressed: () {
                  Share.shareUri(
                      Uri.parse('https://alphadev39.com/ad_details/$id'));
                },
                icon: const Icon(
                  Icons.share,
                  color: AppTheme.secondaryColor,
                  size: 25,
                )),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<AdDetailsBloc, AdDetailsState>(
              builder: (context, state) {
                return state.when(
                  loading: () => SingleChildScrollView(
                    child: Column(
                      children: [
                        SkeletonLine(
                          style: SkeletonLineStyle(
                            width: double.infinity,
                            height: 20.h,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                width: 120,
                                height: 10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                width: 80,
                                height: 10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                width: 50,
                                height: 10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                width: 50,
                                height: 10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SkeletonLine(
                          style: SkeletonLineStyle(
                            width: 100,
                            height: 15,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SkeletonParagraph(
                          style: SkeletonParagraphStyle(
                            lines: 10,
                            lineStyle: SkeletonLineStyle(
                                height: 7,
                                randomLength: true,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SkeletonLine(
                          style: SkeletonLineStyle(
                            width: 100,
                            height: 15,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SkeletonParagraph(
                          style: SkeletonParagraphStyle(
                            lines: 10,
                            lineStyle: SkeletonLineStyle(
                                height: 7,
                                randomLength: true,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  error: (error) => error.when(
                      networkError: (_) => NetworkErrorWidget(tryAgain: () {
                            context
                                .read<AdDetailsBloc>()
                                .add(AdDetailsEvent.load(id: id));
                          }),
                      other: (_) => error_widget.ErrorWidget(tryAgain: () {
                            context
                                .read<AdDetailsBloc>()
                                .add(AdDetailsEvent.load(id: id));
                          })),
                  adDetailsLoaded: (ad) => Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CachedNetworkImage(
                                imageUrl: ad.images ?? "",
                                imageBuilder: (ctx, imageProvider) {
                                  return Container(
                                    width: double.infinity,
                                    height: 160,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        )),
                                  );
                                },
                                placeholder: (_, __) =>
                                    shimmer.Shimmer.fromColors(
                                  baseColor: Colors.grey.shade200,
                                  highlightColor: Colors.grey.shade50,
                                  child: Container(
                                    width: double.infinity,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(ad.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16)),
                                  const Expanded(child: SizedBox()),
                                  const Icon(Icons.timelapse),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(timeago.format(ad.date ?? DateTime.now(),
                                      locale: context.locale.languageCode)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(() {
                                    final currency = sl<LocalDataSource>()
                                        .getValue<Currency>(
                                            LocalDataKeys.currency);
                                    return "${(ad.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                  }(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                  const Expanded(child: SizedBox()),
                                  const Icon(Icons.remove_red_eye_outlined),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("${ad.views}"),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.person),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: ad.sellerId != null
                                        ? () {
                                            context.pushNamed(
                                                Routes.sellerProfile.name,
                                                queryParameters: {
                                                  "id": ad.sellerId.toString()
                                                });
                                          }
                                        : null,
                                    child: Text("${ad.seller ?? ad.poster}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15)),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Icon(() {
                                    final type =
                                        ad.type ?? ServiceTypeEnum.Company;
                                    if (type == ServiceTypeEnum.Personal) {
                                      return Icons.person;
                                    }
                                    return Icons.account_balance;
                                  }()),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("${ad.type?.name}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text("ad_details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17))
                                  .tr(),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  ad.description,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: BlocBuilder<MakeContactWithSellerBloc,
                            MakeContactWithSellerState>(
                          buildWhen: (previous, current) {
                            return current.maybeWhen(
                              succes: (_) => true,
                              orElse: () => false,
                              error: (_) => true,
                              loading: (id) => id == ad.id,
                            );
                          },
                          builder: (context, state) {
                            return CostumeButton(
                                onPressed: () {
                                  isGuest()
                                      ? context.pushNamed(Routes.logIn.name)
                                      : context
                                          .read<MakeContactWithSellerBloc>()
                                          .add(
                                            MakeContactWithSellerEvent
                                                .makeAdContact(
                                              adId: ad.id,
                                            ),
                                          );
                                },
                                child: state.maybeWhen(
                                  orElse: () => AuthBuilder(
                                    builder: (context) =>
                                        const Text("contact").tr(),
                                    gustBuilder: (context) =>
                                        const Text("log_in_contact").tr(),
                                  ),
                                  loading: (_) =>
                                      LoadingAnimationWidget.prograssiveDots(
                                          color: AppTheme.primaryColor,
                                          size: 20.dp),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
