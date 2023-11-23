import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/domain/entities/activity_entity.dart';
import 'package:commercial_directory_users/domain/entities/service/section.dart';
import 'package:commercial_directory_users/presentaation/blocs/occasion/occasion_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/section/section_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/specialization/specialization_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/auth_builder.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:searchable_paginated_dropdown/searchable_dropdown_controller.dart';
import 'package:searchable_paginated_dropdown/searchable_paginated_dropdown.dart';

import '../../../domain/entities/season_entity.dart';
import '../../../domain/entities/service/service_entity.dart';
import '../../../domain/entities/specialization_entity.dart';
import '../../../domain/enums/enums.dart';
import '../../blocs/activity/activity_bloc.dart';
import '../../blocs/main/side_menu_cubit.dart';
import '../../blocs/sector/sector_bloc.dart';
import '../../blocs/service/service_bloc.dart';
import '../../widgets/costume_button.dart';
import '../widgets/home_filter_widget.dart';
import '../widgets/search_dropdown_widget.dart';
import '../widgets/slide_widget.dart';

Activity? activity;
int? sectionId;
int? occasionId;
int? specialityId;
ServiceEntity? serviceEntity;

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final SearchableDropdownController<ServiceEntity> serviceController =
      SearchableDropdownController();
  final SearchableDropdownController<SectionEntity> sectionController =
      SearchableDropdownController();
  final SearchableDropdownController<Activity> activityController =
      SearchableDropdownController();
  final SearchableDropdownController<Specialization> specializationController =
      SearchableDropdownController();
  final SearchableDropdownController<SeasonAndOccasion>
      seasonAndOccasionController = SearchableDropdownController();
  @override
  Widget build(BuildContext context) {
    serviceController.addListener((p, searchKey) {
      context
          .read<ServiceBloc>()
          .add(ServiceEvent.load(page: p, searchKey: searchKey));
    });

    sectionController.addListener((p, searchKey) {
      context.read<SectionBloc>().add(SectionEvent.load(
          serviceId: serviceEntity?.id ?? 1, page: p, searchKey: searchKey));
    });

    activityController.addListener((p, searchKey) {
      context
          .read<ActivityBloc>()
          .add(ActivityEvent.load(page: p, searchKey: searchKey));
    });

    specializationController.addListener((p, searchKey) {
      context.read<SpecializationBloc>().add(SpecializationEvent.load(
          id: activity?.id ?? 1, page: p, searchKey: searchKey));
    });

    seasonAndOccasionController.addListener((p, searchKey) {
      context
          .read<SeasonAndOccasionBloc>()
          .add(OccasionEvent.load(page: p, searchKey: searchKey));
    });

    ServiceTypeEnum? service;
    return MultiBlocListener(
      listeners: [
        BlocListener<ServiceBloc, ServiceState>(
          listener: (context, state) {
            state.whenOrNull(dataLoaded: (data) {
              serviceController.appendNewPage(
                  _mapDataToDropDownItem<ServiceEntity>(data.data));
            });
          },
        ),
        BlocListener<SectionBloc, SectionState>(
          listener: (context, state) {
            state.whenOrNull(dataLoaded: (data) {
              sectionController.appendNewPage(
                  _mapDataToDropDownItem<SectionEntity>(data.data));
            });
          },
        ),
        BlocListener<ActivityBloc, ActivityState>(
          listener: (context, state) {
            state.whenOrNull(dataLoaded: (data) {
              activityController
                  .appendNewPage(_mapDataToDropDownItem<Activity>(data.data));
            });
          },
        ),
        BlocListener<SpecializationBloc, SpecializationState>(
          listener: (context, state) {
            state.whenOrNull(dataLoaded: (data) {
              specializationController.appendNewPage(
                  _mapDataToDropDownItem<Specialization>(data.data));
            });
          },
        ),
        BlocListener<SeasonAndOccasionBloc, OccasionState>(
          listener: (context, state) {
            state.whenOrNull(dataLoaded: (data) {
              seasonAndOccasionController.appendNewPage(
                  _mapDataToDropDownItem<SeasonAndOccasion>(data.data));
            });
          },
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        // appBar: AppBar(
        //   leading: IconButton(
        //       onPressed: () {
        //         context.read<SideMenuCubit>().sideMenuActionTaken();
        //       },
        //       icon: const Icon(Icons.menu)),
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
        //   centerTitle: true,
        //   title: const Text("filtering").tr(),
        // ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: LayoutBuilder(builder: (context, c) {
            return Column(
              children: [
                SizedBox(height: 1.h),
                const SliderWidget(),
                SizedBox(height: 1.h),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        StatefulBuilder(builder: (context, setState) {
                          return HomeFilterWidget<ServiceTypeEnum>(
                            title: 'service_request_from',
                            hint: 'service_request_from',
                            data: ServiceTypeEnum.values,
                            value: service,
                            onChange: (v) {
                              setState(() {
                                service = v;
                              });
                            },
                          );
                        }),
                        Builder(builder: (context) {
                          bool sectionVisible = false;
                          return StatefulBuilder(
                            builder: (context, setState) {
                              return Column(
                                children: [
                                  SearchDropDownWidget<ServiceEntity>(
                                    controller: serviceController,
                                    onChanged: (item) {
                                      setState(() {
                                        serviceEntity = item;
                                        sectionVisible =
                                            item?.hasSections ?? false;
                                      });
                                    },
                                    noRecordText: "there_is_no_service",
                                    hint: "search_for",
                                    title: "search_for",
                                  ),
                                  sectionVisible
                                      ? Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            SearchDropDownWidget<SectionEntity>(
                                              controller: sectionController,
                                              onChanged: (item) {
                                                sectionId = item?.id;
                                              },
                                              noRecordText:
                                                  "there_is_no_section",
                                              hint: "section",
                                              title: "section",
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                ],
                              );
                            },
                          );
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        SearchDropDownWidget<Activity>(
                          controller: activityController,
                          onChanged: (item) {
                            activity = item;
                          },
                          noRecordText: "there_is_no_section",
                          hint: "commercial_activity",
                          title: "commercial_activity",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SearchDropDownWidget<Specialization>(
                          controller: specializationController,
                          onChanged: (item) {
                            specialityId = item?.id;
                          },
                          noRecordText: "there_is_no_specialization",
                          hint: "specialization",
                          title: "specialization",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SearchDropDownWidget<SeasonAndOccasion>(
                          controller: seasonAndOccasionController,
                          onChanged: (item) {
                            occasionId = item?.id;
                          },
                          noRecordText: "there_is_no_occasions",
                          hint: "occasions",
                          title: "occasions",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CostumeButton(
                            onPressed: () {
                              context.goNamed(Routes.searchResults.name,
                                  queryParameters: {
                                    "type": service?.name.toString(),
                                    "service": serviceEntity?.id.toString(),
                                    "section": sectionId.toString(),
                                    "activity": activity?.id.toString(),
                                    "specialization": "$specialityId",
                                    "occasion": "$occasionId",
                                    "activity_name": activity?.name,
                                  });
                            },
                            child: Text("search".tr()),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ActionChip(
                              label: const Text(
                                "the_most_requested_offers",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w200),
                              ).tr(),
                              onPressed: () {
                                context.goNamed(Routes.homeOffers.name,
                                    pathParameters: {
                                      "type": "the_most_requested_offers"
                                    });
                              },
                              backgroundColor: Colors.transparent,
                              shape: const StadiumBorder(
                                  side: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              )),
                            ),
                            ActionChip(
                              label: const Text(
                                "new_offers",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w200),
                              ).tr(),
                              onPressed: () {
                                context.pushNamed(Routes.homeOffers.name,
                                    pathParameters: {"type": "new_offers"});
                              },
                              backgroundColor: Colors.transparent,
                              shape: const StadiumBorder(
                                  side: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              )),
                            ),
                            ActionChip(
                              label: const Text(
                                "seasonal_offers",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w200),
                              ).tr(),
                              onPressed: () {
                                context.pushNamed(Routes.homeOffers.name,
                                    pathParameters: {
                                      "type": "seasonal_offers"
                                    });
                              },
                              backgroundColor: Colors.transparent,
                              shape: const StadiumBorder(
                                  side: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 85,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  List<SearchableDropdownMenuItem<T>> _mapDataToDropDownItem<T extends dynamic>(
      List<T> data) {
    return data
        .map((e) => SearchableDropdownMenuItem<T>(
            value: e, label: e.name ?? '', child: Text(e.name ?? '')))
        .toList();
  }
}
