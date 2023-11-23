import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/domain/entities/sector_entity.dart';
import 'package:commercial_directory_users/presentaation/chat/screen/chat%20screen.dart';
import 'package:commercial_directory_users/presentaation/common_question/screens/common_question_screen.dart';
import 'package:commercial_directory_users/presentaation/most_requested_offers/home_offers_screen.dart';
import 'package:commercial_directory_users/presentaation/profile/screens/change_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentaation/ads/screens/ad_details_screen.dart';
import '../presentaation/ads/screens/ads_screen.dart';
import '../presentaation/auth/screens/auth_screen.dart';
import '../presentaation/auth/screens/complete_profile_screen.dart';
import '../presentaation/auth/screens/fill_profile_screen.dart';
import '../presentaation/auth/screens/forget_password_screen.dart';
import '../presentaation/auth/screens/login_screen.dart';
import '../presentaation/auth/screens/new_password_screen.dart';
import '../presentaation/auth/screens/email_confirmation_screen.dart';
import '../presentaation/auth/screens/reset_password_code_screen.dart';
import '../presentaation/auth/screens/signup_screen.dart';
import '../presentaation/chat/screen/conversatios_screen.dart';
import '../presentaation/contactus/screens/contact_us_screens.dart';
import '../presentaation/favorites/secreen/favorites_screen.dart';
import '../presentaation/home/screens/home_screen.dart';
import '../presentaation/home/screens/offer_details_screen.dart';
import '../presentaation/home/screens/search_results_screen.dart';
import '../presentaation/last_visited_offers/screens/last_visited_offers.dart';
import '../presentaation/main/main_screen.dart';
import '../presentaation/notifications/screens/notifications_screen.dart';
import '../presentaation/on_boarding/screens/on_boarding_screen.dart';
import '../presentaation/privacy_policy/screen/privacy_policy_screen.dart';
import '../presentaation/profile/screens/change_email.dart';
import '../presentaation/profile/screens/edit_profile_screen.dart';
import '../presentaation/profile/screens/profile_screen.dart';
import '../presentaation/profile/screens/security_screen.dart';
import '../presentaation/report/screens/report_screen.dart';
import '../presentaation/sectors/screens/sector_details_screen.dart';
import '../presentaation/sectors/screens/sectors_screen.dart';
import '../presentaation/seller_profile/screens/seller_profille_screen.dart';
import 'locator.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();

String _initialLocation() {
  var userType = sl<LocalDataSource>().getValue(
    LocalDataKeys.userType,
  );
  if (userType == UserType.authenticated || userType == UserType.gust) {
    return Routes.home.path;
  } else if (userType == UserType.onboarding) {
    return Routes.auth.path;
  } else {
    return Routes.onBoarding.path;
  }
}

GoRouter router = GoRouter(
  initialLocation: _initialLocation(),
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  routes: _routes,
  redirect: (context, state) {
    ProfileEntity? user = sl<LocalDataSource>().getValue(
      LocalDataKeys.profile,
    );

    if (user != null) {
      final completed = user.completed ?? false;
      if (!completed) {
        return router.namedLocation(Routes.completeProfile.name,
            queryParameters: {
              "first_name": user.firstName,
              "last_name": user.lastName,
              "email": user.email
            });
      }
    }
    return null;
  },
);

List<RouteBase> get _routes => <RouteBase>[
      GoRoute(
          path: Routes.sellerProfile.path,
          name: Routes.sellerProfile.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => SellerProfileScreen(
                id: int.parse(state.queryParameters["id"] ?? "1"),
              )),
      GoRoute(
          path: Routes.completeProfile.path,
          name: Routes.completeProfile.name,
          parentNavigatorKey: _rootNavigatorKey,
          redirect: (context, state) {
            ProfileEntity? user = sl<LocalDataSource>().getValue(
              LocalDataKeys.profile,
            );

            if (user != null) {
              final completed = user.completed ?? false;
              if (completed) {
                return router.namedLocation(
                  Routes.home.name,
                );
              }
            }
            return null;
          },
          builder: (context, state) => CompleteProfileScreen(
              firstName: state.queryParameters["first_name"] ?? "",
              lastName: state.queryParameters["last_name"] ?? "",
              email: state.queryParameters["email"] ?? "")),
      GoRoute(
          path: Routes.commonQuestion.path,
          name: Routes.commonQuestion.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const CommonQuestionScreen()),
      GoRoute(
          path: Routes.notification.path,
          name: Routes.notification.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const NotificationsScreen()),
      GoRoute(
          path: Routes.report.path,
          name: Routes.report.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => ReportScreen()),
      GoRoute(
        path: Routes.conversationsScreen.path,
        name: Routes.conversationsScreen.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const ConversationsScreen(),
      ),
      GoRoute(
          path: Routes.lastVisited.path,
          name: Routes.lastVisited.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const LastVisitedOffers()),
      GoRoute(
          path: Routes.contactUs.path,
          name: Routes.contactUs.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const ContactUsScreen()),
      GoRoute(
          path: Routes.privacyPolicy.path,
          name: Routes.privacyPolicy.name,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const PrivacyPolicy()),
      GoRoute(
        path: Routes.offerDetails.path,
        name: Routes.offerDetails.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => OfferDetailScreen(
          id: int.parse(state.pathParameters["id"] ?? "1"),
        ),
      ),
      GoRoute(
          path: Routes.adDetails.path,
          name: Routes.adDetails.name,
          builder: (_, state) => AdDetailsScreen(
                id: int.parse(state.pathParameters["id"] ?? "0"),
              ),
          parentNavigatorKey: _rootNavigatorKey),
      GoRoute(
          path: Routes.chat.path,
          name: Routes.chat.name,
          builder: (context, state) => ChatScreen(
                conversation: state.extra as ConversationEntity,
                type: state.queryParameters["type"] == ""
                    ? null
                    : state.queryParameters["type"],
              ),
          parentNavigatorKey: _rootNavigatorKey),
      ShellRoute(
          builder: (context, state, child) {
            String name = "";
            if (state.queryParameters["name"] != null) {
              name = state.queryParameters["name"]!;
            } else {
              name = "filtering";
            }
            return MainScreen(
              name: name,
              child: child,
            );
          },
          routes: [
            GoRoute(
                path: Routes.home.path,
                name: Routes.home.name,
                builder: (context, state) => HomeScreen(),
                //parentNavigatorKey: _shellNavigatorKey,
                routes: [
                  /// expect filter paramiters in state
                  GoRoute(
                    path: Routes.searchResults.path,
                    name: Routes.searchResults.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final params = state.queryParameters;
                      return SearchResultsScreen(
                        filter: Filter(
                            serviceType: params["type"]!,
                            service: params["service"]!,
                            section: params["section"]!,
                            activity: params["activity"]!,
                            speciality: params["specialization"]!,
                            occasion: params["occasion"]!),
                        activityName: params["activity_name"] ?? "",
                      );
                    },
                  ),

                  GoRoute(
                      path: Routes.homeOffers.path,
                      name: Routes.homeOffers.name,
                      parentNavigatorKey: _rootNavigatorKey,
                      builder: (context, state) => HomeOffersScreen(
                            type: state.pathParameters["type"] ?? "",
                          )),
                ]),
            GoRoute(
                path: Routes.sector.path,
                name: Routes.sector.name,
                builder: (context, state) => const SectorsScreen(),
                // parentNavigatorKey: _shellNavigatorKey,
                routes: [
                  GoRoute(
                    path: Routes.sectorDetails.path,
                    name: Routes.sectorDetails.name,
                    builder: (_, state) => SectorDetailsScreen(
                      sector: (state.extra as Sector),
                    ),
                    parentNavigatorKey: _rootNavigatorKey,
                  )
                ]),
            GoRoute(
              path: Routes.favorite.path,
              name: Routes.favorite.name,
              builder: (context, state) => const FavoritesScreen(),
              //parentNavigatorKey: _shellNavigatorKey,
            ),
            GoRoute(
              path: Routes.ads.path,
              name: Routes.ads.name,
              builder: (context, state) => const AdsScreen(),
              //parentNavigatorKey: _shellNavigatorKey,
            ),
            GoRoute(
                path: Routes.me.path,
                name: Routes.me.name,
                builder: (context, state) => const ProfileScreen(),
                //  parentNavigatorKey: _shellNavigatorKey,
                routes: [
                  GoRoute(
                      path: Routes.changePassword.path,
                      name: Routes.changePassword.name,
                      builder: (context, state) => const ChangePasswordScreen(),
                      parentNavigatorKey: _rootNavigatorKey),
                ]),
          ]),
      GoRoute(
          path: Routes.editProfile.path,
          name: Routes.editProfile.name,
          builder: (context, state) => const EditProfileScreen(),
          parentNavigatorKey: _rootNavigatorKey),
      GoRoute(
          path: Routes.auth.path,
          name: Routes.auth.name,
          builder: (_, __) => const AuthScreen(),
          routes: [
            GoRoute(
              path: Routes.signUp.path,
              name: Routes.signUp.name,
              builder: (context, state) => SignUpScreen(),
              parentNavigatorKey: _rootNavigatorKey,
            ),
            GoRoute(
                path: Routes.fillProfile.path,
                name: Routes.fillProfile.name,
                builder: (context, state) => FillProfileScreen(
                    email: state.queryParameters["email"] ?? "",
                    password: state.queryParameters["password"] ?? "",
                    passwordConfirmation:
                        state.queryParameters["passwordConfirmation"] ?? ""),
                parentNavigatorKey: _rootNavigatorKey),
            GoRoute(
                path: Routes.logIn.path,
                name: Routes.logIn.name,
                builder: (context, state) => LogInScreen(),
                parentNavigatorKey: _rootNavigatorKey,
                routes: [
                  GoRoute(
                      path: Routes.resetPassword.path,
                      name: Routes.resetPassword.name,
                      builder: (context, state) => const ForgetPasswordScreen(),
                      routes: [
                        GoRoute(
                            path: Routes.resetPasswordCode.path,
                            name: Routes.resetPasswordCode.name,
                            builder: (context, state) =>
                                ResetPasswordCodeScreen(
                                  email: state.queryParameters["email"] ?? "",
                                ),
                            routes: [
                              GoRoute(
                                path: Routes.newPassword.path,
                                name: Routes.newPassword.name,
                                builder: (context, state) => NewPasswordScreen(
                                  code: state.queryParameters["code"] ?? "",
                                ),
                              )
                            ]),
                      ]),
                ]),
          ]),
      GoRoute(
          path: Routes.onBoarding.path,
          name: Routes.onBoarding.name,
          builder: (context, state) => const OnBoardingScreen(),
          parentNavigatorKey: _rootNavigatorKey),
      GoRoute(
          path: Routes.emailConfirmation.path,
          name: Routes.emailConfirmation.name,
          builder: (context, state) => EmailConfirmationScreen(
                email: state.queryParameters["email"] ?? "",
                password: state.queryParameters["password"] ?? "",
              ),
          parentNavigatorKey: _rootNavigatorKey),
      GoRoute(
          path: Routes.editEmail.path,
          name: Routes.editEmail.name,
          builder: (context, state) => ChangeEmailScreen(
                email: state.extra as String,
              ),
          parentNavigatorKey: _rootNavigatorKey),
      GoRoute(
        path: Routes.securityScreen.path,
        name: Routes.securityScreen.name,
        builder: (context, state) => SecurityScreen(
          email: state.extra as String,
        ),
        parentNavigatorKey: _rootNavigatorKey,
      ),
    ];

enum Routes {
  auth('auth', '/login'),
  logIn('login_page', 'login'),
  onBoarding('on_boarding', '/on_boarding'),
  signUp('signup_page', 'signup'),
  notification('notification', '/notification'),
  report('report', '/report'),
  home('home', '/home'),
  sectorDetails('sector_details', 'sector_details'),
  offerDetails('offer_details', '/offer_details/:id'),
  lastVisited('last_visited', '/last_visited'),
  homeOffers('home_offers', 'home_offers/:type'),
  contactUs('contact_ud', '/contact_us'),
  privacyPolicy('privacy_policy', '/privacy_policy'),
  adDetails('ad_details', '/ad_details/:id'),
  searchResults('search_results', 'search_results'),
  sector('sector', '/sector'),
  favorite('fav', '/fav'),
  ads('ads', '/ads'),
  me('me', '/me'),
  commonQuestion('common_queestion', '/common_question'),
  conversationsScreen('list_chat', '/list_chat'),
  editProfile('edit_profile', '/edit_profile'),
  chat('chat', '/chat'),
  fillProfile('fill_profile', 'fill_profile'),
  completeProfile('complete_profile', '/complete_profile'),
  resetPassword('reset_password', 'reset_password'),
  resetPasswordCode('reset_password_code', 'reset_password_code'),
  newPassword('new_password', 'new_password'),
  changePassword('change_password', 'change_password'),
  sellerProfile('seller_profile', '/seller_profile'),
  emailConfirmation('email_confirmation', '/email_confirmation'),
  editEmail('editEmail', '/editEmail'),
  securityScreen('SecurityScreen', '/SecurityScreen'),
  ;

  const Routes(this.name, this.path);

  final String name;
  final String path;
}
