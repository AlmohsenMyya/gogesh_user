// service locator
import 'dart:async';

import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/remote_data_source/ads_data_source/ads_remote_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/categories_data_source/categories_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/chat_data_source/chat_remote_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/notifications_data_source/notifications_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/privacy_policy_data_source/privacy_policy_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/seller_data_source/seller_remote_data_source.dart';
import 'package:commercial_directory_users/data/repositories/ad_repository.dart';
import 'package:commercial_directory_users/data/repositories/catgories/categories_repository.dart';
import 'package:commercial_directory_users/data/repositories/chat_repository.dart';
import 'package:commercial_directory_users/data/repositories/common_question_repository_impl.dart';
import 'package:commercial_directory_users/data/repositories/notification/notifications_repository_impl.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';
import 'package:commercial_directory_users/data/repositories/privacy_repository.dart';
import 'package:commercial_directory_users/data/repositories/profile_repository.dart';
import 'package:commercial_directory_users/data/repositories/seller_repository.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:commercial_directory_users/domain/repositories/ads_repository.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';
import 'package:commercial_directory_users/domain/repositories/notification_repository.dart';
import 'package:commercial_directory_users/domain/repositories/privacy_policy_repository.dart';
import 'package:commercial_directory_users/domain/repositories/profile_repository.dart';
import 'package:commercial_directory_users/domain/repositories/seller_repository.dart';
import 'package:commercial_directory_users/domain/usecases/ads/fetch_ads_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_home_banner_ads_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_search_banner_ads_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_sector_flash_ad_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_sectors_banner_ads_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/auth/complete_profile_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_activities_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_section_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_sectors_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/get_chat_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/get_conversation_customer_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/get_conversation_support_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/make_ad_contact_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/chat/make_chat_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/make_offer_contact_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/send_message_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/currency/determine_currency_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/email/confirm_email_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/email/resend_email_confirmation_code_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/notification/notification_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/offer/add_offfer_to_favorit_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/offer/fetch_favorite_offers_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/offer/fetch_requested_offers.dart';
import 'package:commercial_directory_users/domain/usecases/offer/remove_offfer_from_favorit_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/privacy/fetch_privacy_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/profile/edit_profile_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/seller/get_seller_profile_use_case.dart';
import 'package:commercial_directory_users/presentaation/blocs/dialog_ads/dialog_ad_bloc.dart';
import 'package:commercial_directory_users/presentaation/blocs/offer/offer_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/custom_interceptor.dart';
import '../data/local_data_source/db_provider.dart';
import '../data/local_data_source/local_data_source.dart';
import '../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../data/remote_data_source/common_question_data_source/common_question_data_source.dart';
import '../data/remote_data_source/offers_data_source/offers_remote_data_source.dart';
import '../data/remote_data_source/profile_data_source/profile_remote_data_source.dart';
import '../data/repositories/locations/location_repository.dart';
import '../domain/repositories/common_question_repository.dart';
import '../domain/repositories/offer_repository.dart';
import '../domain/usecases/ads/get_ads_details.dart';
import '../domain/usecases/ads/get_home_flash_ad_use_case.dart';
import '../domain/usecases/ads/get_sector_banner_ads_use_case.dart';
import '../domain/usecases/auth/check_password_use_case.dart';
import '../domain/usecases/auth/forget_password_use_case.dart';
import '../domain/usecases/auth/login_use_case.dart';
import '../domain/usecases/auth/register_use_case.dart';
import '../domain/usecases/auth/reset_password_use_case.dart';
import '../domain/usecases/auth/sign_in_with_apple_use_case.dart';
import '../domain/usecases/auth/sign_in_with_facebook_use_case.dart';
import '../domain/usecases/auth/sign_in_with_google_use_case.dart';
import '../domain/usecases/categories/fetch_occasions_usecase.dart';
import '../domain/usecases/categories/fetch_services_use_case.dart';
import '../domain/usecases/categories/fetch_specializations_usecase.dart';
import '../domain/usecases/common_question/get_common_question_use_case.dart';
import '../domain/usecases/location/determine_location_use_case.dart';
import '../domain/usecases/location/gat_region_use_case.dart';
import '../domain/usecases/location/get_city_use_case.dart';
import '../domain/usecases/location/get_country_use_case.dart';
import '../domain/usecases/offer/fetch_offers_use_case.dart';
import '../domain/usecases/offer/get_offer_details.dart';
import '../domain/usecases/profile/change_password_use_case.dart';
import '../domain/usecases/profile/get_profile_use_case.dart';
import '../domain/usecases/update_exchange_rate_use_case.dart';
import '../presentaation/blocs/auth/auth_bloc.dart';
import '../presentaation/main/main_screen.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await Hive.initFlutter();
  final box = await LocalDataSourceImpl.init();
  await DBProvider.db.initDB();
  await DBProvider.db.clear();
  sl
    // // external
    ..registerLazySingleton<Box<dynamic>>(
      () => box,
    )
    ..registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(sl()),
    )
    ..registerLazySingleton<DBProvider>(() => DBProvider.db)

    /// ------------ DataSource-------------------////
    ..registerLazySingleton<Dio>(
      () => Dio(BaseOptions(
          // connectTimeout: Duration(microseconds: 10),
          // sendTimeout: Duration(milliseconds: 8),
          //   receiveTimeout: Duration(microseconds: 8),
          contentType: 'application/json',
          headers: {
            'Accept': 'application/json',
            "Authorization":
                "Bearer ${sl<LocalDataSource>().getValue(LocalDataKeys.accessToken)}",
            "Accept-Language":
                sl<LocalDataSource>().getValue(LocalDataKeys.languageKey),
          }))
        ..interceptors.add(CustomInterceptor()),
    )
    // notifications
    ..registerLazySingleton<NotificationsRemoteDataSource>(
        () => NotificationsRemoteDataSource(sl()))
    // notifications
    //auth
    ..registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSource(sl()))
//Profile
    ..registerLazySingleton<ProfileRemoteDataSource>(
        () => ProfileRemoteDataSource(sl()))
    //Profile
    //privacyPolicy
    ..registerLazySingleton<PrivacyPolicyRemoteDataSource>(
        () => PrivacyPolicyRemoteDataSource(sl()))
    //privacyPolicy

    /// offer
    ..registerLazySingleton<OffersRemoteDataSource>(
        () => OffersRemoteDataSource(sl()))

    /// offer
    ///Chat
    ..registerLazySingleton<ChatRemoteDataSource>(
        () => ChatRemoteDataSource(sl()))

    ///Chat

    /// Ads
    ..registerLazySingleton<AdsRemoteDataSource>(
        () => AdsRemoteDataSource(sl()))

    /// Ads
    /// Categories
    ..registerLazySingleton(() => CategoriesRemoteDataSource(sl()))

    /// Seller
    ..registerLazySingleton(() => SellerDataSource(sl()))

    /// Common question
    ..registerLazySingleton(() => CommonQuestionRemoteDataSource(sl()))

    /// Common question

    /// Seller

    /// Categories
    /// ------------ DataSource-------------------////

    /// ------------ Repositories--------------------///
    /// Location local
    ..registerSingletonAsync<LocationRepository>(() async {
      final repo = LocationRepository(dbProvider: sl(), dataSource: sl());
      unawaited(repo.updateCitiesLocal());
      unawaited(repo.updateRegionsLocal());
      unawaited(repo.updateCountriesLocal());
      return repo;
    })

    /// Location local
    /// Categories local
    ..registerSingletonAsync<CategoriesRepository>(() async {
      final repo = CategoriesRepository(dbProvider: sl(), dataSource: sl());
      unawaited(repo.updateActivities());
      unawaited(repo.updateSpecialization());
      unawaited(repo.updateServices());
      unawaited(repo.updateSection());
      unawaited(repo.updateOccasions());
      return repo;
    })

    /// Categories local

    /// Notifications
    ..registerLazySingleton<NotificationRepository>(
        () => NotificationRepositoryImpl(sl()))

    /// Notifications

    /// Offer
    ..registerLazySingleton<OfferRepository>(
        () => OfferRepositoryImpl(sl(), sl()))
    //privacyPolicy//
    ..registerLazySingleton<PrivacyRepository>(
        () => PrivacyRepositoryImpl(sl(), sl()))
    //privacyPolicy//
    ///chat
    ..registerLazySingleton<ChatRepository>(
        () => ChatRepositoryImpl(dataSource: sl(), localDataSource: sl()))

    ///chat
    //profile
    ..registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(dataSource: sl(), localDataSource: sl()))
    //profile

    /// Offer
    /// Ads
    ..registerLazySingleton<AdRepository>(() => AdRepositoryImpl(sl(), sl()))

    /// Ads

    /// Categories
    /// Seller
    ..registerLazySingleton<SellerRepository>(() => SellerRepositoryImpl(sl()))

    /// Seller

    /// Common question

    ..registerLazySingleton<CommonQuestionRepository>(
        () => CommonQuestionRepositoryImpl(sl()))

    /// Common question

    /// Seller
    /// ------------ Repositories--------------------///
    //use case
    //auth
    ..registerLazySingleton(
        () => SignInGoogleUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => SignInFacebookUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => SignInWithAppleUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(() => ConfirmEmailUseCase(sl(), sl()))
    ..registerLazySingleton(() => ResendEmailConfirmationCodeUseCase(
          sl(),
        ))

    /// ---------------UseCases---------------------///
    ..registerLazySingleton(
        () => CheckPasswordUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => ResetPasswordUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => ForgetPasswordUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => LoginUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => RegisterUseCase(dataSource: sl(), localDataSource: sl()))
    ..registerLazySingleton(
        () => CompleteProfileUseCase(dataSource: sl(), localDataSource: sl()))

    /// Locations

    ..registerLazySingleton(() => DetermineLocationUseCase(sl()))
    ..registerLazySingleton(() => GetCountryUseCase(
          dbProvider: sl(),
        ))
    ..registerLazySingleton(() => GetCityUseCase(
          dbProvider: sl(),
        ))
    ..registerLazySingleton(() => GetRegionUseCase(
          dbProvider: sl(),
        ))

    /// Locations
    /// Currency
    ..registerLazySingleton(() => DetermineCurrencyUseCase(sl(), sl()))
    ..registerLazySingleton(
        () => DetermineCurrencyExchangeRateUseCase(localDataSource: sl()))

    /// Currency
    /// Categories
    ..registerLazySingleton(() => FetchSectorsUseCase(sl()))
    ..registerLazySingleton(() => FetchActivitiesUseCase(sl()))
    ..registerLazySingleton(() => FetchSpecializationsUseCase(sl()))
    ..registerLazySingleton(() => FetchOccasionsUseCase(sl()))
    ..registerLazySingleton(() => FetchServicesUseCase(sl()))
    ..registerLazySingleton(() => FetchSectionUseCase(sl()))

    /// Categories
    /// Common question
    ..registerLazySingleton(() => GetCommonQuestionUseCase(sl()))

    /// Common question
    //Profile
    ..registerLazySingleton(() => GetProfileUseCase(profileRepository: sl()))
    ..registerLazySingleton(() => EditProfileUseCase(profileRepository: sl()))
    ..registerLazySingleton(
        () => ChangePasswordUseCase(profileRepository: sl()))

    /// Offers
    ..registerLazySingleton(() => FetchOffersUseCase(sl()))
    ..registerLazySingleton(() => GetOfferDetailsUseCase(sl()))
    ..registerLazySingleton(() => FetchFavoriteOffersUseCase(sl()))
    ..registerLazySingleton(() => AddOfferToFavoriteUseCase(sl()))
    ..registerLazySingleton(() => RemoveOfferFromFavoriteUseCase(sl()))
    ..registerLazySingleton(() => FetchRequestedOffers(sl()))

    /// Offers
    //privacyPolicy
    ..registerLazySingleton(() => GetPrivacyUseCase(privacyRepository: sl()))
    //privacyPolicy

    /// Ads
    ..registerLazySingleton(() => FetchAdsUseCase(sl()))
    ..registerLazySingleton(() => GetHomeFlashAdUseCase(sl()))
    ..registerLazySingleton(() => GetHomeBannerAdsUseCase(sl()))
    ..registerLazySingleton(() => GetSectorFlashAdUseCase(sl()))
    ..registerLazySingleton(() => GetSectorsBannerAdsUseCase(sl()))
    ..registerLazySingleton(() => GetSectorBannerAdsUseCase(sl()))
    ..registerLazySingleton(() => GetSearchBannerAdsUseCase(sl()))
    ..registerLazySingleton(() => GetAdsDetailsUseCase(sl()))

    /// Ads

    ///Chat
    ..registerLazySingleton(() => SendMessageUseCase(chatRepository: sl()))
    ..registerLazySingleton(() => MakeChatUseCase(chatRepository: sl()))
    ..registerLazySingleton(
        () => GetConversationSupportUseCase(chatRepository: sl()))
    ..registerLazySingleton(
        () => GetConversationCustomerUseCase(chatRepository: sl()))
    ..registerLazySingleton(() => GetChatUseCase(chatRepository: sl()))
    ..registerLazySingleton(() => MakeOfferContactUseCase(chatRepository: sl()))
    ..registerLazySingleton(() => MakeAdContactUseCase(chatRepository: sl()))

    ///Chat
    ///Seller
    ..registerLazySingleton(() => GetSellerProfileUseCase(sl()))

    ///Seller
    /// Notifications
    ..registerLazySingleton(
        () => GetNotificationUseCase(notificationRepository: sl()))

    /// Notifications
    /// ---------------UseCases---------------------///

    ///-----------------Blocs------------------------///
    /// Auth
    ..registerLazySingleton(
      () => AuthBloc(
          registerUseCase: sl(),
          loginUseCase: sl(),
          checkPasswordUseCase: sl(),
          forgetPasswordUseCase: sl(),
          resetPasswordUseCase: sl(),
          completeProfileUseCase: sl(),
          signInGoogleUseCase: sl(),
          signInFacebookUseCase: sl(),
          confirmEmailUseCase: sl(),
          resendEmailConfirmationCodeUseCase: sl(),
          signInWithAppleUseCase: sl()),
    )

    /// Auth
    /// Favorite
    ..registerLazySingleton(() => OfferBloc(sl(), sl(), sl(), sl()))
    ..registerSingleton(DialogAdBloc(
      sl(),
    ))
    ..registerSingleton<Counter>(Counter());

  if (sl<LocalDataSource>().getValue(LocalDataKeys.userType) != null) {
    sl<DialogAdBloc>().add(const DialogAdEvent.getHomeAd());
  }

  /// Favorite
  ///-----------------Blocs------------------------///
}
