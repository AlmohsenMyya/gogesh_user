import 'package:commercial_directory_users/Utils.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/presentaation/blocs/ads/ads_screen_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/auth/auth_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/offer/offer_bloc.dart';
import 'package:commercial_directory_users/presentaation/chat/conversationSupport_bloc/conversation_bloc.dart';
import 'package:commercial_directory_users/presentaation/chat/conversation_customer_bloc/conversation_customer_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/section/section_bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../domain/enums/enums.dart';
import '../presentaation/blocs/activity/activity_bloc.dart';
import '../presentaation/blocs/dialog_ads/dialog_ad_bloc.dart';
import '../presentaation/blocs/filter/filter_cubit.dart';
import '../presentaation/blocs/home/home_bloc.dart';
import '../presentaation/blocs/location/location_bloc.dart';
import '../presentaation/blocs/main/bottom_nav_cubit.dart';
import '../presentaation/blocs/main/side_menu_cubit.dart';
import 'package:flutter_dropdown_alert/dropdown_alert.dart';

import '../presentaation/blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import '../presentaation/blocs/notifications/notification_bloc.dart';
import '../presentaation/blocs/occasion/occasion_bloc.dart';
import '../presentaation/blocs/profile/profile_bloc.dart';
import '../presentaation/blocs/sector/sector_bloc.dart';
import '../presentaation/blocs/service/service_bloc.dart';
import '../presentaation/blocs/specialization/specialization_bloc.dart';
import 'locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    timeago.setLocaleMessages("ar", timeago.ArMessages());

    return FlutterSizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (contex) {
            saveLocale(context.locale.languageCode);

            return SideMenuCubit();
          }),
          BlocProvider(create: (context) => BottomNavCubit()),
          BlocProvider(
            create: (context) => sl<DialogAdBloc>(),
          ),
          BlocProvider(create: (context) => sl<OfferBloc>()),
          BlocProvider(
            lazy: false,
            create: (context) => ConversationBloc(
              getConversationSupportUseCase: sl(),
            ),
          ),
          BlocProvider(
              create: (context) => ConversationCustomerBloc(
                  getConversationCustomerUseCase: sl())),
          BlocProvider(create: (context) => NotificationBloc(sl())),
          BlocProvider(create: (contex) {
            saveLocale(context.locale.languageCode);

            return sl<AuthBloc>();
          }),
          BlocProvider<ServiceBloc>(
            create: (context) => ServiceBloc(sl()),
          ),
          BlocProvider<SectionBloc>(
            create: (context) => SectionBloc(sl()),
          ),
          BlocProvider<SectorsSectorBloc>(
              create: (context) => SectorsSectorBloc(sl())
              // ..add(const SectorEvent.load(
              //     filter: Filter(
              //   page: 1,
              // ))),
              ),
          BlocProvider(
            create: (context) => MakeContactWithSellerBloc(
                makeOfferContactUseCase: sl(), makeAdContactUseCase: sl()),
          ),
          BlocProvider(
            create: (context) => LocationBloc(sl()),
          ),
          BlocProvider(
            create: (context) => ProfileBloc(
                getProfileUseCase: sl(),
                editProfileUseCase: sl(),
                changePasswordUseCase: sl())
              ..add(const ProfileEvent.loadedProfile()),
          ),
          BlocProvider(
            create: (context) => SectorFilter<ServiceTypeEnum>(init: null),
          ),
          BlocProvider(
            create: (context) => AdsFilter<ServiceTypeEnum>(init: null),
          ),
          BlocProvider(
            create: (context) => AdsScreenBloc(sl()),
          ),
          BlocProvider(
            create: (context) => ActivityBloc(sl()),
          ),
          BlocProvider(
            create: (context) =>
                HomeSlidAdsBloc(sl())..add(const SlidAdsEvent.loadAds()),
          ),
          BlocProvider(
            create: (context) =>
                SectorsSlidAdsBloc(sl())..add(const SlidAdsEvent.loadAds()),
          ),
          BlocProvider(
            create: (context) => SpecializationBloc(sl()),
          ),
          BlocProvider(
            create: (context) => SeasonAndOccasionBloc(sl()),
          ),
        ],
        child: MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // useInheritedMediaQuery: true,
          //  locale: DevicePreview.locale(context),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          routerConfig: router,

          builder: (context, child) {
            final dialog = FlutterSmartDialog.init()(context, child);
            //    final app = DevicePreview.appBuilder(context, child);
            return Stack(
              children: [
                //    app,
                dialog,
                const DropdownAlert(),
              ],
            );
          },
        ),
      );
    });
  }
}
