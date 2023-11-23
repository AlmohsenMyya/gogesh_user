import 'package:commercial_directory_users/domain/entities/ad/ad_entity.dart';
import 'package:commercial_directory_users/domain/enums/enums.dart';
import 'package:commercial_directory_users/presentaation/blocs/ads/ads_screen_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shimmer/shimmer.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;
import 'package:skeletons/skeletons.dart';
import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../assets.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/fillters/filter.dart';
import '../../blocs/filter/filter_cubit.dart';
import '../../blocs/main/side_menu_cubit.dart';
import '../../sectors/widgets/filter_widgts.dart';
import '../../widgets/auth_builder.dart';
import '../../widgets/network_error_widget.dart';
import '../../widgets/no_data_widget.dart';
import '../widgets/ad_widget.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final adsBloc = context.read<AdsScreenBloc>();
    final filterCubit = context.read<AdsFilter<ServiceTypeEnum>>();
    adsBloc.pagingController.addPageRequestListener((pageKey) async {
      await Future.delayed(const Duration(milliseconds: 500));

      adsBloc.add(
        AdsScreenEvent.load(
          filter: Filter(page: pageKey, serviceType: filterCubit.state?.name),
        ),
      );
    });
    return MultiBlocListener(
      listeners: [
        BlocListener<AdsFilter<ServiceTypeEnum>, ServiceTypeEnum?>(
          listener: (context, state) {
            adsBloc.pagingController.refresh();
          },
        ),
        BlocListener<AdsScreenBloc, AdsScreenState>(
          listener: (context, state) {
            state.whenOrNull(
                dataLoaded: (data, pageKey) =>
                    adsBloc.pagingController.appendPage(data, pageKey),
                lastPageLoaded: (data) =>
                    adsBloc.pagingController.appendLastPage(data),
                error: (error) => adsBloc.pagingController.error = error);
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
        //   title: const Text("commercial_ads").tr(),
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
              adsBloc.pagingController.refresh();
            },
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 5)),
                const SliverToBoxAdapter(
                    child: FilterWidget<AdsFilter<ServiceTypeEnum>>()),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverToBoxAdapter(
                  child: const Text("latest_ads",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15))
                      .tr(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 5)),
                PagedSliverGrid<int, Ad>(
                  showNewPageErrorIndicatorAsGridChild: false,
                  showNewPageProgressIndicatorAsGridChild: false,
                  showNoMoreItemsIndicatorAsGridChild: false,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  pagingController: adsBloc.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Ad>(
                    itemBuilder: (context, item, index) => AdWidget(
                      ad: item,
                    ),
                    firstPageErrorIndicatorBuilder: (context) =>
                        (adsBloc.pagingController.error as ErrorState).when(
                            networkError: (message) => NetworkErrorWidget(
                                tryAgain: () =>
                                    adsBloc.pagingController.refresh()),
                            other: (message) => error_widget.ErrorWidget(
                                  tryAgain: () =>
                                      adsBloc.pagingController.refresh(),
                                )),
                    noItemsFoundIndicatorBuilder: (context) => NoDataWidget(
                      message: "there_is_no_ads",
                      tryAgain: () {
                        adsBloc.pagingController.refresh();
                      },
                    ),
                    firstPageProgressIndicatorBuilder: (context) => Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: SkeletonItem(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    newPageProgressIndicatorBuilder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                          ),
                        ),
                      ),
                    ),
                    newPageErrorIndicatorBuilder: (context) => GestureDetector(
                        onTap: () {
                          adsBloc.pagingController.retryLastFailedRequest();
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
        ),
      ),
    );
  }
}
