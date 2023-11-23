import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:commercial_directory_users/presentaation/blocs/dialog_ads/dialog_ad_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/dialog_ads/dialog_ad_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/offer/offer_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletons/skeletons.dart' as skeletons;
import 'package:url_launcher/url_launcher.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/hooks/pagination_controller.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../../domain/entities/sector_entity.dart';
import '../../blocs/dialog_ads/sectors/sector_ad_dialog_cubit.dart';
import '../../blocs/home/home_bloc.dart';
import '../../widgets/costume_button.dart';
import '../../widgets/network_error_widget.dart';
import '../../widgets/no_data_widget.dart';
import '../widgets/sectors_offer_widget.dart';

class SectorDetailsScreen extends HookWidget {
  const SectorDetailsScreen({required this.sector, Key? key}) : super(key: key);

  final Sector sector;

  @override
  Widget build(BuildContext context) {
    final bloc = OfferBloc(sl(), sl(), sl(), sl());
    final adsBloc = SectorSlidAdsBloc(
      sl(),
    );
    final pagingController = usePagingController<int, Offer>(firstPageKey: 1);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(OfferEvent.load(
          filter: Filter(sector: "${sector.id}", page: pageKey)));
      adsBloc.add(SlidAdsEvent.loadAds(
          filter: Filter(sector: "${sector.id}", page: pageKey)));
    });

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => bloc,
        ),
        BlocProvider(
            create: (context) => SectorAdDialogCubit(sl())..loadAd(sector.id)),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SectorAdDialogCubit, SectorAdDialogState>(
            listener: (context, state) {
              state.whenOrNull(sectorAdLoaded: (ad, __) {
                SmartDialog.show(
                  backDismiss: false,
                  builder: (context) {
                    return Container(
                      height: 500,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
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
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover),
                                  ),
                                );
                              },
                              placeholder: (context, url) {
                                return skeletons.SkeletonItem(
                                    child: Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                                ));
                              },
                              errorWidget: (context, url, error) => SizedBox(
                                height: 300,
                                child: Center(
                                    child: const Text("could_not_load_image")
                                        .tr()),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
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
                                    await launchUrl(Uri.parse(ad.url ?? ""));
                                  } else {
                                    context.pushNamed(Routes.adDetails.name,
                                        pathParameters: {"id": "${ad.id}"});
                                  }
                                  SmartDialog.dismiss();
                                },
                                child: const Text('show_more_details').tr(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              });
            },
          ),
          BlocListener<OfferBloc, OfferState>(
            listener: (context, state) {
              state.whenOrNull(
                  loaded: (data, pageKey, _) =>
                      pagingController.appendPage(data, pageKey),
                  lastPageLoaded: (data, _) =>
                      pagingController.appendLastPage(data),
                  error: (error) => pagingController.error = error);
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(sector.name),
          ),
          body: RefreshIndicator(
            color: AppTheme.secondaryColor,
            onRefresh: () async {
              pagingController.refresh();
            },
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: sector.image ??
                            "https://images.wikimotors.org/cargo-ship-hauling-intermodel-containers.jpgd",
                        imageBuilder: (ctx, imageProvider) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                        placeholder: (_, __) => skeletons.SkeletonItem(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(sector.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15)),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("company_count",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15))
                              .plural(sector.companyCount ?? 0)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Builder(builder: (context) {
                    return PagedListView<int, Offer>.separated(
                      pagingController: pagingController,
                      separatorBuilder: (BuildContext context, int index) {
                        if (adsBloc.data.hasIndex(index)) {
                          if (index != 0 && index % 6 == 0) {
                            final int adIndex = (index / 6 - 1).toInt();
                            final ad = adsBloc.getAd(adIndex);

                            return GestureDetector(
                              onLongPress: () {
                                SmartDialog.show(
                                  backDismiss: false,
                                  builder: (context) {
                                    return Container(
                                      height: 55.h,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // content
                                              CachedNetworkImage(
                                                imageUrl: ad.images ?? "",
                                                imageBuilder:
                                                    (context, imageProvider) {
                                                  return Container(
                                                    height: 300,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: imageProvider,
                                                          fit: BoxFit.cover),
                                                    ),
                                                  );
                                                },
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                ad.title,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 20.dp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                () {
                                                  final currency =
                                                      sl<LocalDataSource>()
                                                          .getValue<Currency>(
                                                              LocalDataKeys
                                                                  .currency);
                                                  return "${(ad.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                                }(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14.dp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                ad.description,
                                                textAlign: TextAlign.center,
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
                              onTap: () async {
                                if (ad.url != null) {
                                  await launchUrl(Uri.parse(ad.url ?? ""),
                                      mode: LaunchMode.inAppWebView);
                                } else {
                                  context.pushNamed(Routes.adDetails.name,
                                      pathParameters: {"id": "${ad.id}"});
                                }
                              },
                              child: Builder(
                                builder: (BuildContext context) {
                                  return CachedNetworkImage(
                                    imageBuilder: (context, provider) =>
                                        Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 20.h,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 13.0),
                                      decoration: BoxDecoration(
                                        color: AppTheme.green,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: provider, fit: BoxFit.fill),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        skeletons.SkeletonLine(
                                      style: skeletons.SkeletonLineStyle(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 20.h),
                                    ),
                                    imageUrl: ad.images ?? "",
                                  );
                                },
                              ),
                            );
                          }
                        }

                        return const SizedBox();
                      },
                      builderDelegate: PagedChildBuilderDelegate<Offer>(
                        itemBuilder: (context, item, index) =>
                            SectorsOfferWidget(
                          offer: item,
                          refresh: () => pagingController.refresh(),
                        ),
                        firstPageErrorIndicatorBuilder: (context) =>
                            (pagingController.error as ErrorState).when(
                                networkError: (_) => NetworkErrorWidget(
                                    tryAgain: () => pagingController.refresh()),
                                other: (_) => error.ErrorWidget(
                                    tryAgain: () =>
                                        pagingController.refresh())),
                        noItemsFoundIndicatorBuilder: (context) => NoDataWidget(
                          tryAgain: () => pagingController.refresh(),
                          message: "no_offers_found",
                        ),
                        firstPageProgressIndicatorBuilder: (context) => Column(
                          children: [
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 0.5,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    skeletons.SkeletonItem(
                                      child: Container(
                                        height: 17.h,
                                        width: 25.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 60,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        skeletons.SkeletonItem(
                                          child: Container(
                                            width: 120,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 40,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            skeletons.SkeletonItem(
                                              child: Container(
                                                width: 100,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        newPageProgressIndicatorBuilder: (context) =>
                            const Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                        newPageErrorIndicatorBuilder: (context) =>
                            GestureDetector(
                                onTap: () {
                                  pagingController.retryLastFailedRequest();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "try_again".tr(),
                                      style: TextStyle(fontSize: 14.dp),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Icon(
                                      Icons.refresh_rounded,
                                      size: 20,
                                    )
                                  ],
                                )),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension LISTINDEX on List {
  bool hasIndex(int index) {
    if (length > index) {
      return true;
    }

    return false;
  }
}
