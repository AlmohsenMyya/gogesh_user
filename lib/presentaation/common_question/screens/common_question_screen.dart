import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/domain/entities/common_question/common_question_entity.dart';
import 'package:commercial_directory_users/presentaation/common_question/widgets/commen_question_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error;
import 'package:skeletons/skeletons.dart';
import '../../../app/locator.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/hooks/pagination_controller.dart';
import '../../blocs/comment_question/common_question_bloc.dart';
import '../../widgets/network_error_widget.dart';
import '../../widgets/no_data_widget.dart';

class CommonQuestionScreen extends HookWidget {
  const CommonQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = CommonQuestionBloc(sl());
    final pagingController =
        usePagingController<int, CommonQuestion>(firstPageKey: 1);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(CommonQuestionEvent.load(page: pageKey));
    });
    return BlocProvider(
      create: (context) => bloc,
      child: BlocListener<CommonQuestionBloc, CommonQuestionState>(
        listener: (context, state) {
          state.whenOrNull(
              dataLoaded: (
                data,
                pageKey,
              ) =>
                  pagingController.appendPage(data, pageKey),
              lastPageLoaded: (
                data,
              ) =>
                  pagingController.appendLastPage(data),
              error: (error) => pagingController.error = error);
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("common_questions").tr(),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PagedListView(
                pagingController: pagingController,
                builderDelegate: PagedChildBuilderDelegate<CommonQuestion>(
                  itemBuilder: (context, item, index) {
                    return CommonQuestionWidget(
                        question: item.question, answer: item.answer);
                  },
                  firstPageProgressIndicatorBuilder: (context) => Column(
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SkeletonItem(
                          child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 1.5.h,
                      ),
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
                    message: "no_question_found",
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
                )),
          ),
        ),
      ),
    );
  }
}
