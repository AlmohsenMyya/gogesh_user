import 'dart:math';

import 'package:commercial_directory_users/presentaation/blocs/notifications/notification_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;
import 'package:skeletons/skeletons.dart';
import '../../../assets.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/fillters/filter.dart';
import '../../../domain/entities/notification_entity/notification_entity.dart';
import '../../widgets/network_error_widget.dart';
import '../widgets/notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NotificationBloc>();
    bloc.pagingController.addPageRequestListener((pageKey) {
      bloc.add(NotificationEvent.loadNotification(
          filter: Filter(
        page: pageKey,
      )));
    });
    return BlocListener<NotificationBloc, NotificationState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error) => bloc.pagingController.error = error,
          loaded: (notification, pageKey) {
            bloc.pagingController.appendPage(notification, pageKey);
          },
          lastPageLoaded: (notification) {
            bloc.pagingController.appendLastPage(
              notification,
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("notifications").tr(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PagedListView<int, NotificationEntity>(
            pagingController: bloc.pagingController,
            builderDelegate: PagedChildBuilderDelegate<NotificationEntity>(
              itemBuilder: (context, item, index) => NotificationItem(
                notificationEntity: item,
              ),
              firstPageErrorIndicatorBuilder: (context) =>
                  (bloc.pagingController.error as ErrorState).when(
                      networkError: (message) => NetworkErrorWidget(
                          tryAgain: () => bloc.pagingController.refresh()),
                      other: (message) => error_widget.ErrorWidget(
                            tryAgain: () => bloc.pagingController.refresh(),
                          )),
              noItemsFoundIndicatorBuilder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.assets_icons_no_data_svg,
                    width: 150,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "no_notification_found",
                    style: TextStyle(fontSize: 18),
                  ).tr()
                ],
              ),
              firstPageProgressIndicatorBuilder: (context) => Column(
                children: [
                  for (int i = 1; i < 15; i++)
                    SkeletonItem(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:
                                    Theme.of(context).colorScheme.background),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Random().nextInt(150).toDouble(),
                                height: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: Random().nextInt(180).toDouble(),
                                height: 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                ],
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
                    bloc.pagingController.retryLastFailedRequest();
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
        ),
      ),
    );
  }
}
