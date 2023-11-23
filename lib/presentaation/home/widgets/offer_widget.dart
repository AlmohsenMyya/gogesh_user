import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:commercial_directory_users/presentaation/blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/auth_builder.dart';
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

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../assets.dart';
import '../../../core/fillters/filter.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../blocs/offer/fav/fav_cubit.dart';
import '../../blocs/offer/offer_bloc.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({required this.offer, this.reload, Key? key})
      : super(key: key);
  final Offer offer;
  final Function()? reload;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(sl(), sl(), fav: offer.fav),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(
            Routes.offerDetails.name,
            pathParameters: {"id": offer.id.toString()},
          ).then((value) {
            if (value != null) {
              reload != null ? reload!.call() : null;
            }
          });
        },
        onLongPress: () {
          SmartDialog.show(
            backDismiss: false,
            builder: (context) {
              return Container(
                height: 500,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "${offer.title}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.dp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // content
                      CachedNetworkImage(
                        imageUrl: offer.images?.first ?? "",
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            height: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "${offer.description}",
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: CostumeButton(
                          onPressed: () => SmartDialog.dismiss(),
                          child: const Text('show_more_details').tr(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: offer.images?.first ?? "",
                    imageBuilder: (ctx, imageProvider) {
                      return Container(
                        height: 130,
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
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                    ),
                  ),
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        final userType = sl<LocalDataSource>()
                            .getValue(LocalDataKeys.userType);
                        final isGuest = userType == UserType.gust;
                        if (isGuest) {
                          SmartDialog.showToast(
                            "please_log_in_first".tr(),
                          );
                          return;
                        }
                        if (context.read<FavCubit>().state) {
                          context.read<FavCubit>().removeOfferFav(offer.id);
                        } else {
                          context.read<FavCubit>().addToFav(offer.id);
                        }
                      },
                      child: BlocBuilder<FavCubit, bool>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: SvgPicture.asset(
                                state
                                    ? Assets.assets_icons_fav_filled_svg
                                    : Assets.assets_icons_fav_svg,
                                width: 20,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "${offer.title}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.dp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            () {
                              final currency = sl<LocalDataSource>()
                                  .getValue<Currency>(LocalDataKeys.currency);
                              return "${(offer.price! * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                            }(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.dp,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              BlocBuilder<MakeContactWithSellerBloc,
                  MakeContactWithSellerState>(
                buildWhen: (previous, current) {
                  return current.maybeWhen(
                    orElse: () => false,
                    error: (_) => true,
                    loading: (id) => id == offer.id,
                  );
                },
                builder: (context, state) {
                  return Flexible(
                    flex: 0,
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: CostumeButton(
                          onPressed: () {
                            isGuest()
                                ? context.pushNamed(Routes.logIn.name)
                                : context.read<MakeContactWithSellerBloc>().add(
                                      MakeContactWithSellerEvent
                                          .makeOfferContact(
                                        offerId: offer.id,
                                      ),
                                    );
                          },
                          child: state.maybeWhen(
                            orElse: () => AuthBuilder(
                              builder: (context) => const Text("contact").tr(),
                              gustBuilder: (context) =>
                                  const Text("log_in_contact").tr(),
                            ),
                            loading: (_) =>
                                LoadingAnimationWidget.prograssiveDots(
                                    color: AppTheme.primaryColor, size: 20.sp),
                          )),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
