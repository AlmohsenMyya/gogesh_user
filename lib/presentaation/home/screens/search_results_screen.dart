import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/presentaation/blocs/home/home_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/offer/offer_bloc.dart';
import 'package:commercial_directory_users/presentaation/home/widgets/offer_widget.dart';
import 'package:commercial_directory_users/presentaation/home/widgets/results_bar_widget.dart';
import 'package:commercial_directory_users/presentaation/sectors/screens/sector_details_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart' as shimmer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:skeletons/skeletons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/hooks/pagination_controller.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../../domain/request/chat/offer_contact_request.dart';
import '../../blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import '../../blocs/offer/fav/fav_cubit.dart';
import '../../blocs/search_result/show_mode_cubit.dart';
import '../../widgets/auth_builder.dart';
import '../../widgets/costume_button.dart';
import '../../widgets/network_error_widget.dart';
import '../../widgets/no_data_widget.dart';

class SearchResultsScreen extends HookWidget {
  SearchResultsScreen(
      {required this.filter, required this.activityName, Key? key})
      : super(key: key);
  final Filter filter;
  final String activityName;
  final bloc = OfferBloc(sl(), sl(), sl(), sl());

  @override
  Widget build(BuildContext context) {
    final adsBloc = SearchResultAdsBloc(
      sl(),
    );
    final pagingController = usePagingController<int, Offer>(firstPageKey: 1);
    pagingController.addPageRequestListener((pageKey) async {
      bloc.add(OfferEvent.load(filter: filter.copyWith(page: pageKey)));
      adsBloc.add(SlidAdsEvent.loadAds(filter: Filter(page: pageKey)));
    });
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => bloc,
        ),
        BlocProvider(
          create: (context) => ViewModeCubit(),
        ),
      ],
      child: BlocListener<OfferBloc, OfferState>(
        listener: (context, state) {
          state.whenOrNull(
              loaded: (data, pageKey, _) =>
                  pagingController.appendPage(data, pageKey),
              lastPageLoaded: (data, _) =>
                  pagingController.appendLastPage(data),
              error: (error) => pagingController.error = error);
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("search_results").tr(),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ResultsBarWidget(
                  title: activityName,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: RefreshIndicator(
                    color: AppTheme.secondaryColor,
                    onRefresh: () async {
                      pagingController.refresh();
                    },
                    child: BlocBuilder<ViewModeCubit, ViewMode>(
                      builder: (context, state) {
                        return state == ViewMode.grid
                            ? PagedListView<int, Offer>.separated(
                                pagingController: pagingController,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  if (adsBloc.data.hasIndex(index)) {
                                    if (index != 0 && index % 6 == 0) {
                                      final int adIndex =
                                          (index / 6 - 1).toInt();
                                      final ad = adsBloc.getAd(adIndex);

                                      return GestureDetector(
                                        onLongPress: () {
                                          SmartDialog.show(
                                            backDismiss: false,
                                            builder: (context) {
                                              return Container(
                                                height: 55.h,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white,
                                                ),
                                                alignment: Alignment.topCenter,
                                                child: SingleChildScrollView(
                                                  physics:
                                                      const BouncingScrollPhysics(),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // content
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                              ad.images ?? "",
                                                          imageBuilder: (context,
                                                              imageProvider) {
                                                            return Container(
                                                              height: 300,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                image: DecorationImage(
                                                                    image:
                                                                        imageProvider,
                                                                    fit: BoxFit
                                                                        .cover),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          ad.title,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 20.dp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          () {
                                                            final currency = sl<
                                                                    LocalDataSource>()
                                                                .getValue<
                                                                        Currency>(
                                                                    LocalDataKeys
                                                                        .currency);
                                                            return "${(ad.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                                          }(),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 14.dp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          ad.description,
                                                          textAlign:
                                                              TextAlign.center,
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
                                            await launchUrl(
                                                Uri.parse(ad.url ?? ""));
                                          } else {
                                            context.pushNamed(
                                                Routes.adDetails.name,
                                                pathParameters: {
                                                  "id": "${ad.id}"
                                                });
                                          }
                                        },
                                        child: Builder(
                                          builder: (BuildContext context) {
                                            return CachedNetworkImage(
                                              imageBuilder:
                                                  (context, provider) =>
                                                      Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 20.h,
                                                // margin:
                                                //     const EdgeInsets.symmetric(
                                                //         horizontal: 13.0),
                                                decoration: BoxDecoration(
                                                  color: AppTheme.green,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                      image: provider,
                                                      fit: BoxFit.fill),
                                                ),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      SkeletonLine(
                                                style: SkeletonLineStyle(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
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
                                builderDelegate:
                                    PagedChildBuilderDelegate<Offer>(
                                  itemBuilder: (context, item, index) {
                                    final index2 = index * 4;
                                    final offers = pagingController.itemList
                                            ?.getRange(index2, index2 + 3)
                                            .toList() ??
                                        [];
                                    return GridView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: offers.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              childAspectRatio: .8,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10),
                                      itemBuilder: (context, index) =>
                                          OfferWidget(
                                        offer: offers[index],
                                        reload: () =>
                                            pagingController.refresh(),
                                      ),
                                    );
                                  },
                                  firstPageErrorIndicatorBuilder: (context) =>
                                      (pagingController.error as ErrorState)
                                          .when(
                                              networkError: (_) =>
                                                  NetworkErrorWidget(
                                                      tryAgain: () =>
                                                          pagingController
                                                              .refresh()),
                                              other: (_) => error.ErrorWidget(
                                                  tryAgain: () =>
                                                      pagingController
                                                          .refresh())),
                                  noItemsFoundIndicatorBuilder: (context) =>
                                      NoDataWidget(
                                    tryAgain: () => pagingController.refresh(),
                                    message: "no_offers_found",
                                  ),
                                  firstPageProgressIndicatorBuilder:
                                      (context) => Column(
                                    children: [
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
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
                                            pagingController
                                                .retryLastFailedRequest();
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "try_again".tr(),
                                                style:
                                                    TextStyle(fontSize: 14.dp),
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
                              )
                            : PagedListView<int, Offer>.separated(
                                pagingController: pagingController,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  if (adsBloc.data.hasIndex(index)) {
                                    if (index != 0 && index % 6 == 0) {
                                      final int adIndex =
                                          (index / 6 - 1).toInt();
                                      final ad = adsBloc.getAd(adIndex);

                                      return GestureDetector(
                                        onLongPress: () {
                                          SmartDialog.show(
                                            backDismiss: false,
                                            builder: (context) {
                                              return Container(
                                                height: 55.h,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white,
                                                ),
                                                alignment: Alignment.topCenter,
                                                child: SingleChildScrollView(
                                                  physics:
                                                      const BouncingScrollPhysics(),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // content
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                              ad.images ?? "",
                                                          imageBuilder: (context,
                                                              imageProvider) {
                                                            return Container(
                                                              height: 300,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                image: DecorationImage(
                                                                    image:
                                                                        imageProvider,
                                                                    fit: BoxFit
                                                                        .cover),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          ad.title,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 20.dp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          () {
                                                            final currency = sl<
                                                                    LocalDataSource>()
                                                                .getValue<
                                                                        Currency>(
                                                                    LocalDataKeys
                                                                        .currency);
                                                            return "${(ad.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                                          }(),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 14.dp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          ad.description,
                                                          textAlign:
                                                              TextAlign.center,
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
                                            await launchUrl(
                                                Uri.parse(ad.url ?? ""));
                                          } else {
                                            context.pushNamed(
                                                Routes.adDetails.name,
                                                pathParameters: {
                                                  "id": "${ad.id}"
                                                });
                                          }
                                        },
                                        child: Builder(
                                          builder: (BuildContext context) {
                                            return CachedNetworkImage(
                                              imageBuilder:
                                                  (context, provider) =>
                                                      Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 20.h,
                                                // margin:
                                                //     const EdgeInsets.symmetric(
                                                //         horizontal: 13.0),
                                                decoration: BoxDecoration(
                                                  color: AppTheme.green,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                      image: provider,
                                                      fit: BoxFit.fill),
                                                ),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      SkeletonLine(
                                                style: SkeletonLineStyle(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
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
                                builderDelegate:
                                    PagedChildBuilderDelegate<Offer>(
                                  itemBuilder: (context, item, index) =>
                                      OfferWidget(
                                    offer: item,
                                    reload: () => pagingController.refresh(),
                                  ),
                                  firstPageErrorIndicatorBuilder: (context) =>
                                      (pagingController.error as ErrorState)
                                          .when(
                                              networkError: (_) =>
                                                  NetworkErrorWidget(
                                                      tryAgain: () =>
                                                          pagingController
                                                              .refresh()),
                                              other: (_) => error.ErrorWidget(
                                                  tryAgain: () =>
                                                      pagingController
                                                          .refresh())),
                                  noItemsFoundIndicatorBuilder: (context) =>
                                      NoDataWidget(
                                    tryAgain: () => pagingController.refresh(),
                                    message: "no_offers_found",
                                  ),
                                  firstPageProgressIndicatorBuilder:
                                      (context) => Column(
                                    children: [
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SkeletonItem(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 130,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    width: double.infinity,
                                                    child: CostumeButton(
                                                        onPressed: () {},
                                                        child:
                                                            const SizedBox()),
                                                  ))
                                            ],
                                          ),
                                        ),
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
                                            pagingController
                                                .retryLastFailedRequest();
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "try_again".tr(),
                                                style:
                                                    TextStyle(fontSize: 14.dp),
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
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OffersGridSimulatoer extends StatelessWidget {
  const OffersGridSimulatoer(
      {required this.offer1, required this.offer2, super.key});

  final Offer offer1;
  final Offer offer2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: BlocProvider(
              create: (context) => FavCubit(sl(), sl(), fav: offer1.fav),
              child: GestureDetector(
                onTap: () => context.pushNamed(Routes.offerDetails.name,
                    pathParameters: {"id": offer1.id.toString()}),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: offer1.images?.first ?? "",
                            imageBuilder: (ctx, imageProvider) {
                              return Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    )),
                              );
                            },
                            placeholder: (_, __) => shimmer.Shimmer.fromColors(
                              baseColor: Colors.grey.shade200,
                              highlightColor: Colors.grey.shade50,
                              child: Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Builder(builder: (context) {
                            return InkWell(
                              onTap: () {
                                final userType = sl<LocalDataSource>()
                                    .getValue(LocalDataKeys.userType);
                                final isGuest = userType == UserType.gust;
                                if (isGuest) {
                                  SmartDialog.showToast(
                                    "please_log_in_first".tr(),
                                  );
                                  return;
                                }
                                if (context.read<FavCubit>().state) {
                                  context
                                      .read<FavCubit>()
                                      .removeOfferFav(offer1.id);
                                } else {
                                  context.read<FavCubit>().addToFav(offer1.id);
                                }
                              },
                              child: BlocBuilder<FavCubit, bool>(
                                builder: (context, state) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SvgPicture.asset(
                                        state
                                            ? Assets.assets_icons_fav_filled_svg
                                            : Assets.assets_icons_fav_svg,
                                        width: 20,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      "${offer1.title}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.dp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    () {
                                      final currency = sl<LocalDataSource>()
                                          .getValue<Currency>(
                                              LocalDataKeys.currency);
                                      return "${(offer1.price! * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                    }(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.dp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        flex: 0,
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: CostumeButton(
                              onPressed: () {},
                              child: const Text("contact").tr()),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocProvider(
              create: (context) => FavCubit(sl(), sl(), fav: offer2.fav),
              child: GestureDetector(
                onTap: () => context.pushNamed(Routes.offerDetails.name,
                    pathParameters: {"id": offer2.id.toString()}),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: offer2.images?.first ?? "",
                            imageBuilder: (ctx, imageProvider) {
                              return Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    )),
                              );
                            },
                            placeholder: (_, __) => shimmer.Shimmer.fromColors(
                              baseColor: Colors.grey.shade200,
                              highlightColor: Colors.grey.shade50,
                              child: Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Builder(builder: (context) {
                            return InkWell(
                              onTap: () {
                                final userType = sl<LocalDataSource>()
                                    .getValue(LocalDataKeys.userType);
                                final isGuest = userType == UserType.gust;
                                if (isGuest) {
                                  SmartDialog.showToast(
                                    "please_log_in_first".tr(),
                                  );
                                  return;
                                }
                                if (context.read<FavCubit>().state) {
                                  context
                                      .read<FavCubit>()
                                      .removeOfferFav(offer2.id);
                                } else {
                                  context.read<FavCubit>().addToFav(offer2.id);
                                }
                              },
                              child: BlocBuilder<FavCubit, bool>(
                                builder: (context, state) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SvgPicture.asset(
                                        state
                                            ? Assets.assets_icons_fav_filled_svg
                                            : Assets.assets_icons_fav_svg,
                                        width: 20,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      "${offer2.title}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.dp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    () {
                                      final currency = sl<LocalDataSource>()
                                          .getValue<Currency>(
                                              LocalDataKeys.currency);
                                      return "${(offer2.price! * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                    }(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.dp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        flex: 0,
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: CostumeButton(
                              onPressed: () {},
                              child: const Text("contact").tr()),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
