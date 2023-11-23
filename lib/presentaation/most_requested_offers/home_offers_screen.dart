import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/domain/entities/offer/offer_entity.dart';
import 'package:commercial_directory_users/presentaation/blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/network_error_widget.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:go_router/go_router.dart';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

import '../../app/locator.dart';
import '../../assets.dart';
import '../../core/hooks/pagination_controller.dart';
import '../blocs/offer/offer_bloc.dart';
import '../home/widgets/offer_widget.dart';
import '../widgets/costume_button.dart';
import '../widgets/no_data_widget.dart';

class HomeOffersScreen extends HookWidget {
  const HomeOffersScreen({required this.type, Key? key}) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    final bloc = OfferBloc(sl(), sl(), sl(), sl());
    final pagingController = usePagingController<int, Offer>(firstPageKey: 1);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(OfferEvent.load(filter: Filter(type: type, page: pageKey)));
    });

    return BlocProvider(
      create: (context) => bloc,
      child: MultiBlocListener(
        listeners: [
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
            title: Text(type).tr(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: RefreshIndicator(
                color: AppTheme.secondaryColor,
                onRefresh: () async {
                  pagingController.refresh();
                },
                child: PagedListView<int, Offer>(
                  physics: const BouncingScrollPhysics(),
                  pagingController: pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Offer>(
                    itemBuilder: (context, item, index) => OfferWidget(
                      offer: item,
                      reload: () => pagingController.refresh(),
                    ),
                    firstPageProgressIndicatorBuilder: (context) => Column(
                      children: [
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade100,
                          highlightColor: Colors.grey.shade50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Flexible(
                                    flex: 0,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      width: double.infinity,
                                      child: CostumeButton(
                                          onPressed: () {},
                                          child: const SizedBox()),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade200,
                          highlightColor: Colors.grey.shade50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Flexible(
                                    flex: 0,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      width: double.infinity,
                                      child: CostumeButton(
                                          onPressed: () {},
                                          child: const SizedBox()),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade200,
                          highlightColor: Colors.grey.shade50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Flexible(
                                    flex: 0,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      width: double.infinity,
                                      child: CostumeButton(
                                          onPressed: () {},
                                          child: const SizedBox()),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade200,
                          highlightColor: Colors.grey.shade50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Stack(
                        //     children: [
                        //       Positioned(
                        //         bottom: 0,
                        //         right: 0,
                        //         child: Shimmer.fromColors(
                        //           baseColor: Colors.grey.shade200,
                        //           highlightColor: Colors.grey.shade50,
                        //           child: Column(
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.start,
                        //             children: [
                        //               Container(
                        //                 width: 100,
                        //                 height: 10.0,
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.white,
                        //                     borderRadius:
                        //                         BorderRadius.circular(10)),
                        //               ),
                        //               const SizedBox(
                        //                 height: 5.0,
                        //                 width: double.infinity,
                        //               ),
                        //               Container(
                        //                 width: 50,
                        //                 height: 10.0,
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.white,
                        //                     borderRadius:
                        //                         BorderRadius.circular(10)),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //       Positioned(
                        //           bottom: 0,
                        //           right: 0,
                        //           child: Container(
                        //             color: Colors.green,
                        //             height: 23,
                        //           )),
                        //       Shimmer.fromColors(
                        //         baseColor: Colors.grey.shade200,
                        //         highlightColor: Colors.grey.shade50,
                        //         child: Container(
                        //           height: 130,
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(20),
                        //               color: Colors.red),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                    firstPageErrorIndicatorBuilder: (context) =>
                        (pagingController.error as ErrorState).when(
                            networkError: (_) => NetworkErrorWidget(
                                tryAgain: () => pagingController.refresh()),
                            other: (_) => error.ErrorWidget(
                                tryAgain: () => pagingController.refresh())),
                    noItemsFoundIndicatorBuilder: (context) => NoDataWidget(
                      tryAgain: () => pagingController.refresh(),
                      message: "no_offers_found",
                    ),
                    newPageProgressIndicatorBuilder: (context) => const Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                        ),
                      ),
                    ),
                    newPageErrorIndicatorBuilder: (context) => GestureDetector(
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
