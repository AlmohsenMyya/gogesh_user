import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/presentaation/blocs/sector/sector_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;
import 'package:ionicons/ionicons.dart';
import 'package:shimmer/shimmer.dart' as shimmer;

import 'package:commercial_directory_users/presentaation/widgets/network_error_widget.dart';
import 'package:commercial_directory_users/presentaation/widgets/no_data_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:skeletons/skeletons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../assets.dart';
import '../../../core/hooks/pagination_controller.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/entities/sector_entity.dart';
import '../../../domain/enums/enums.dart';
import '../../blocs/filter/filter_cubit.dart';
import '../../blocs/home/home_bloc.dart';
import '../../blocs/main/side_menu_cubit.dart';
import '../../home/widgets/slide_widget.dart';
import '../../widgets/auth_builder.dart';
import '../widgets/filter_widgts.dart';
import '../widgets/sector_widget.dart';

class SectorsScreen extends StatelessWidget {
  const SectorsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SectorsSectorBloc>();
    final filterBloc = context.read<SectorFilter<ServiceTypeEnum>>();
    bloc.pagingController.addPageRequestListener((pageKey) async {
      await Future.delayed(const Duration(milliseconds: 500));
      bloc.add(
        SectorEvent.load(
          filter: Filter(page: pageKey, serviceType: filterBloc.state?.name),
        ),
      );
    });
    return MultiBlocListener(
      listeners: [
        BlocListener<SectorFilter<ServiceTypeEnum>, ServiceTypeEnum?>(
          listener: (context, state) {
            bloc.pagingController.refresh();
          },
        ),
        BlocListener<SectorsSectorBloc, SectorState>(
          listener: (context, state) {
            state.whenOrNull(
                dataLoaded: (data, pageKey) =>
                    bloc.pagingController.appendPage(data, pageKey),
                lastPageLoaded: (data) =>
                    bloc.pagingController.appendLastPage(data),
                error: (error) => bloc.pagingController.error = error);
          },
        ),
      ],
      child: Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //       onPressed: () {
        //         context.read<SideMenuCubit>().sideMenuActionTaken();
        //       },
        //       icon: const Icon(Icons.menu)),
        //   centerTitle: true,
        //   title: const Text("sectors").tr(),
        //   actions: [
        //     AuthBuilder(
        //       builder: (context) => IconButton(
        //         onPressed: () {
        //           context.pushNamed(Routes.conversationsScreen.name);
        //         },
        //         icon: const Badge(
        //           label: Text(
        //             "12",
        //             style: TextStyle(fontWeight: FontWeight.w700),
        //           ),
        //           child: Icon(
        //             Ionicons.chatbubble_ellipses_outline,
        //           ),
        //         ),
        //       ),
        //       gustBuilder: (context) => const SizedBox(),
        //     ),
        //     IconButton(
        //         onPressed: () {
        //           context.pushNamed(Routes.notification.name);
        //         },
        //         icon: const Badge(
        //           label: Text(
        //             "2",
        //             style: TextStyle(fontWeight: FontWeight.w700),
        //           ),
        //           child: Icon(
        //             Ionicons.notifications_outline,
        //           ),
        //         )),
        //   ],
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RefreshIndicator(
            color: AppTheme.secondaryColor,
            onRefresh: () async {
              bloc.pagingController.refresh();
            },
            child: Column(
              children: [
                BlocBuilder<SectorsSlidAdsBloc, SlidAdsState>(
                  buildWhen: (previous, current) => current.maybeWhen(
                      orElse: () => false,
                      adsLoaded: (_) => true,
                      adsLoading: () => true,
                      error: (_) => true,
                      empty: () => true),
                  builder: (context, state) {
                    //  final AdsIndicatorCubit adsIndicatorCubit = AdsIndicatorCubit();
                    return state.maybeWhen(
                        adsLoaded: (state) => GestureDetector(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                    height: 20.h,
                                    onPageChanged: (index, _) {
                                      if (index + 5 == state.length) {
                                        context.read<SectorsSlidAdsBloc>().add(
                                            const SlidAdsEvent.loadMore(
                                                page: 1));
                                      }
                                      //adsIndicatorCubit.changeIndex(index);
                                    },
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.2,
                                    enableInfiniteScroll: false),
                                items: [
                                  ...state.map((i) {
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
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      // content
                                                      CachedNetworkImage(
                                                        imageUrl:
                                                            i.images ?? "",
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
                                                        i.title,
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
                                                          return "${(i.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${context.locale.languageCode == "ar" ? currency?.currencyNameAr : currency?.currencyNameEn}";
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
                                                        i.description,
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
                                        if (i.url != null) {
                                          await launchUrl(
                                              Uri.parse(i.url ?? ""));
                                        } else {
                                          context.pushNamed(
                                              Routes.adDetails.name,
                                              pathParameters: {
                                                "id": "${i.id}"
                                              });
                                        }
                                      },
                                      child: Builder(
                                        builder: (BuildContext context) {
                                          return CachedNetworkImage(
                                            imageBuilder: (context, provider) =>
                                                Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              // margin: const EdgeInsets.symmetric(
                                              //     horizontal: 5.0),
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
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 20.h),
                                            ),
                                            imageUrl: i.images ?? "",
                                          );
                                        },
                                      ),
                                    );
                                  }).toList(),
                                  BlocBuilder<SectorsSlidAdsBloc, SlidAdsState>(
                                      buildWhen: (previous, current) =>
                                          current.maybeWhen(
                                              orElse: () => false,
                                              loadingMore: () => true),
                                      builder: (context, state) =>
                                          state.maybeWhen(
                                            orElse: () => const SizedBox(),
                                            loadingMore: () => const SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator(
                                                  color:
                                                      AppTheme.secondaryColor,
                                                  strokeWidth: 5,
                                                ),
                                              ),
                                            ),
                                          )),
                                  BlocBuilder<SectorsSlidAdsBloc, SlidAdsState>(
                                    buildWhen: (previous, current) =>
                                        current.maybeWhen(
                                            orElse: () => false,
                                            loadingMoreError: () => true),
                                    builder: (context, state) =>
                                        state.maybeWhen(
                                            orElse: () => SizedBox(),
                                            loadingMoreError: () => SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Center(
                                                  child: IconButton(
                                                      onPressed: () {
                                                        context
                                                            .read<
                                                                SectorsSlidAdsBloc>()
                                                            .add(
                                                                const SlidAdsEvent
                                                                    .loadMore(
                                                                    page: 1));
                                                      },
                                                      icon: const Icon(
                                                          Icons.refresh)),
                                                ))),
                                  ),
                                ],
                              ),
                            ),
                        adsLoading: () => SkeletonItem(
                              child: Column(
                                children: [
                                  CarouselSlider(
                                    options: CarouselOptions(
                                      // height: 170.0,
                                      height: 20.h,

                                      enlargeCenterPage: true,
                                      scrollPhysics:
                                          const NeverScrollableScrollPhysics(),
                                      enlargeFactor: 0.2,
                                    ),
                                    items: [
                                      1,
                                      2,
                                      3,
                                    ].map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .background,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                'text $i',
                                                style:
                                                    TextStyle(fontSize: 16.0),
                                              ));
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  // DotsIndicator(
                                  //   dotsCount: 3,
                                  //   position: 1,
                                  //   decorator: const DotsDecorator(
                                  //     color: Color(0xffcbcbcb), // Inactive color
                                  //     activeColor: AppTheme.green,
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                        error: (ErrorState errorState) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 20.h,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    Assets.assets_icons_network_error_svg,
                                    width: 80,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "there_is_no_internet_connection",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ).tr(),
                                ],
                              ));
                        },
                        empty: () {
                          return const SizedBox();
                        },
                        orElse: () => const SizedBox());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const FilterWidget<SectorFilter<ServiceTypeEnum>>(),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(child: SizedBox(height: 5)),
                      // const SliverToBoxAdapter(
                      //     child: FilterWidget<SectorFilter<ServiceTypeEnum>>()),
                      const SliverToBoxAdapter(child: SizedBox(height: 10)),
                      PagedSliverGrid<int, Sector>(
                        showNewPageErrorIndicatorAsGridChild: false,
                        showNewPageProgressIndicatorAsGridChild: false,
                        showNoMoreItemsIndicatorAsGridChild: false,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 140,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        pagingController: bloc.pagingController,
                        builderDelegate: PagedChildBuilderDelegate<Sector>(
                          itemBuilder: (context, item, index) =>
                              SectorWidget(sector: item),
                          firstPageErrorIndicatorBuilder: (context) =>
                              (bloc.pagingController.error as ErrorState).when(
                                  networkError: (message) => NetworkErrorWidget(
                                      tryAgain: () =>
                                          bloc.pagingController.refresh()),
                                  other: (message) => error_widget.ErrorWidget(
                                        tryAgain: () =>
                                            bloc.pagingController.refresh(),
                                      )),
                          noItemsFoundIndicatorBuilder: (context) =>
                              NoDataWidget(
                                  message: "there_is_no_sectors",
                                  tryAgain: () {
                                    bloc.pagingController.refresh();
                                  }),
                          firstPageProgressIndicatorBuilder: (context) =>
                              Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: SkeletonItem(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  )),
                                ],
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
                                    bloc.pagingController
                                        .retryLastFailedRequest();
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
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 80)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
