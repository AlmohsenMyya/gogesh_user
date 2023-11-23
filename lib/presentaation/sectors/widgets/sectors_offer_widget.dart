import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../assets.dart';
import '../../../core/fillters/filter.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../../domain/request/chat/offer_contact_request.dart';
import '../../blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import '../../blocs/offer/fav/fav_cubit.dart';
import '../../blocs/offer/offer_bloc.dart';
import '../../widgets/auth_builder.dart';

/// offer that being accessed from sectors screen
class SectorsOfferWidget extends StatelessWidget {
  const SectorsOfferWidget({this.refresh, required this.offer, Key? key})
      : super(key: key);
  final Offer offer;
  final Function()? refresh;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(sl(), sl(), fav: offer.fav),
      child: LayoutBuilder(builder: (context, constraints) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(Routes.offerDetails.name,
                pathParameters: {"id": offer.id.toString()}).then((value) {
              if (value != null) {
                refresh != null ? refresh!.call() : null;
              }
            });
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    CachedNetworkImage(
                        imageUrl: offer.images?.first ?? "",
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            height: 17.h,
                            width: constraints.maxWidth / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                        placeholder: (_, __) => Shimmer.fromColors(
                              baseColor: Colors.grey.shade200,
                              highlightColor: Colors.grey.shade50,
                              child: Container(
                                height: 17.h,
                                width: constraints.maxWidth / 4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                              ),
                            )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(child: SizedBox()),
                              const Icon(
                                Icons.timelapse,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                timeago.format(offer.data,
                                    locale: context.locale.languageCode),
                                style: TextStyle(fontSize: 12.dp),
                              ),
                              Builder(builder: (context) {
                                return BlocBuilder<FavCubit, bool>(
                                  builder: (context, state) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          final userType = sl<LocalDataSource>()
                                              .getValue(LocalDataKeys.userType);
                                          final isGuest =
                                              userType == UserType.gust;
                                          if (isGuest) {
                                            SmartDialog.showToast(
                                              "please_log_in_first".tr(),
                                            );
                                            return;
                                          }
                                          if (context.read<FavCubit>().state) {
                                            context
                                                .read<FavCubit>()
                                                .removeOfferFav(offer.id);
                                          } else {
                                            context
                                                .read<FavCubit>()
                                                .addToFav(offer.id);
                                          }
                                        },
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: state
                                              ? const Icon(
                                                  Icons.favorite_outlined,
                                                  color: AppTheme.orange,
                                                )
                                              : const Icon(
                                                  Icons
                                                      .favorite_outline_rounded,
                                                ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }),
                            ],
                          ),
                          Text(
                            "${offer.title}",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppTheme.green,
                                fontWeight: (offer.bold ?? false)
                                    ? FontWeight.w900
                                    : null),
                          ),
                          Text(() {
                            final currency = sl<LocalDataSource>()
                                .getValue<Currency>(LocalDataKeys.currency);
                            return "${(offer.price! * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                          }()),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.remove_red_eye_outlined),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${offer.views}",
                                style: TextStyle(color: Colors.grey.shade700),
                              ),
                              const Expanded(child: SizedBox()),
                              SizedBox(
                                width: constraints.maxWidth / 3,
                                height: 30,
                                child: BlocBuilder<MakeContactWithSellerBloc,
                                    MakeContactWithSellerState>(
                                  buildWhen: (previous, current) {
                                    return current.maybeWhen(
                                      orElse: () => false,
                                      error: (_) => true,
                                      succes: (_) => true,
                                      loading: (id) => id == offer.id,
                                    );
                                  },
                                  builder: (context, state) {
                                    return CostumeButton(
                                        onPressed: () {
                                          isGuest()
                                              ? context
                                                  .pushNamed(Routes.logIn.name)
                                              : context
                                                  .read<
                                                      MakeContactWithSellerBloc>()
                                                  .add(
                                                    MakeContactWithSellerEvent
                                                        .makeOfferContact(
                                                      offerId: offer.id,
                                                    ),
                                                  );
                                        },
                                        child: state.maybeWhen(
                                          orElse: () => AuthBuilder(
                                            builder: (context) =>
                                                const Text("contact").tr(),
                                            gustBuilder: (context) =>
                                                const Text("log_in_contact")
                                                    .tr(),
                                          ),
                                          loading: (_) => LoadingAnimationWidget
                                              .prograssiveDots(
                                                  color: AppTheme.primaryColor,
                                                  size: 20.sp),
                                        ));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
