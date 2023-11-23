import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/hooks/pagination_controller.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/presentaation/chat/conversationSupport_bloc/conversation_bloc.dart';
import 'package:commercial_directory_users/presentaation/chat/conversation_customer_bloc/conversation_customer_bloc.dart';
import 'package:commercial_directory_users/presentaation/chat/widget/chat_item.dart';
import 'package:commercial_directory_users/presentaation/chat/widget/shimmer_widget.dart';
import 'package:commercial_directory_users/presentaation/widgets/network_error_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;

class ConversationsScreen extends HookWidget {
  const ConversationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ConversationBloc>();
    final blocCustomer = context.read<ConversationCustomerBloc>();
    final conversationController =
        usePagingController<int, ConversationEntity>(firstPageKey: 1);
    final customerConversationController =
        usePagingController<int, ConversationEntity>(firstPageKey: 1);
    conversationController.addPageRequestListener((pageKey) {
      bloc.add(ConversationEvent.loadConversationSupport(
          filter: Filter(page: pageKey, type: "support")));
    });
    customerConversationController.addPageRequestListener((pageKey) {
      blocCustomer.add(ConversationCustomerEvent.loadConversationSeller(
          filter: Filter(
        page: pageKey,
      )));
    });

    return DefaultTabController(
      length: 2,
      child: MultiBlocListener(
        listeners: [
          BlocListener<ConversationBloc, ConversationState>(
            listener: (context, state) {
              state.whenOrNull(
                  addedNewConversationOurUPdate: (conversation, pageKey) {
                    conversationController.itemList?.clear();
                    return conversationController.appendPage(conversation, 1);
                  },
                  loaded: (data, pageKey) =>
                      conversationController.appendPage(data, pageKey),
                  lastPageLoaded: (data) =>
                      conversationController.appendLastPage(data),
                  error: (error) => conversationController.error = error);
            },
          ),
          BlocListener<ConversationCustomerBloc, ConversationCustomerState>(
            listener: (context, state) {
              state.whenOrNull(
                  addedNewConversationOurUPdate: (conversation, pageKey) {
                    customerConversationController.itemList?.clear();
                    return customerConversationController.appendPage(
                        conversation, 1);
                  },
                  loaded: (data, pageKey) =>
                      customerConversationController.appendPage(data, pageKey),
                  lastPageLoaded: (data) =>
                      customerConversationController.appendLastPage(data),
                  error: (error) => conversationController.error = error);
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("inbox").tr(),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 5.h,
                child: TabBar(
                  // controller: controller,
                  padding: EdgeInsets.only(left: 1.w, right: 1.w),
                  tabs: [
                    Tab(text: "chat".tr()),
                    Tab(text: 'technical_support'.tr()),
                  ],
                  indicatorColor: AppTheme.green,
                  // labelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: AppTheme.green,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  onTap: (value) {},
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  CustomScrollView(
                    slivers: [
                      PagedSliverList<int, ConversationEntity>(
                        pagingController: customerConversationController,
                        builderDelegate:
                            PagedChildBuilderDelegate<ConversationEntity>(
                          itemBuilder: (context, item, index) =>
                              ConversationItem(
                            conversation: item,
                          ),
                          firstPageErrorIndicatorBuilder: (context) =>
                              (customerConversationController.error
                                      as ErrorState)
                                  .when(
                                      networkError: (message) =>
                                          NetworkErrorWidget(
                                              tryAgain: () =>
                                                  customerConversationController
                                                      .refresh()),
                                      other: (message) =>
                                          error_widget.ErrorWidget(
                                            tryAgain: () =>
                                                customerConversationController
                                                    .refresh(),
                                          )),
                          noItemsFoundIndicatorBuilder: (context) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SvgPicture.asset(
                              //   Assets.assets_icons_no_data_svg,
                              //   width: 150,
                              // ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "no_chat_found",
                                style: TextStyle(fontSize: 18),
                              ).tr()
                            ],
                          ),
                          firstPageProgressIndicatorBuilder: (context) =>
                              const Column(
                            children: [
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
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
                                    customerConversationController
                                        .retryLastFailedRequest();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "try_again".tr(),
                                        style: TextStyle(fontSize: 14.sp),
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
                      SliverToBoxAdapter(
                        child: SizedBox(
                          //  color: Colors.transparent,
                          height: 10.h,
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      PagedSliverList<int, ConversationEntity>(
                        pagingController: conversationController,
                        builderDelegate:
                            PagedChildBuilderDelegate<ConversationEntity>(
                          itemBuilder: (context, item, index) =>
                              ConversationItem(
                            conversation: item,
                            type: "support",
                          ),
                          firstPageErrorIndicatorBuilder: (context) =>
                              (conversationController.error as ErrorState).when(
                                  networkError: (message) => NetworkErrorWidget(
                                      tryAgain: () =>
                                          conversationController.refresh()),
                                  other: (message) => error_widget.ErrorWidget(
                                        tryAgain: () =>
                                            conversationController.refresh(),
                                      )),
                          noItemsFoundIndicatorBuilder: (context) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SvgPicture.asset(
                              //   Assets.assets_icons_no_data_svg,
                              //   width: 150,
                              // ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "no_chat_found",
                                style: TextStyle(fontSize: 18),
                              ).tr()
                            ],
                          ),
                          firstPageProgressIndicatorBuilder: (context) =>
                              const Column(
                            children: [
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
                              ShimmerWidget(),
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
                                    conversationController
                                        .retryLastFailedRequest();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "try_again".tr(),
                                        style: TextStyle(fontSize: 14.sp),
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
                      SliverToBoxAdapter(
                        child: SizedBox(
                          //  color: Colors.transparent,
                          height: 10.h,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
