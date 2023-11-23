import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/hooks/pagination_controller.dart';
import 'package:commercial_directory_users/core/hooks/video_player_controller.dart';
import 'package:commercial_directory_users/presentaation/widgets/network_error_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart' as shimmer;
import 'package:skeletons/skeletons.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../assets.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/request/chat/offer_contact_request.dart';
import '../../blocs/make_contact_with_seller/make_contact_with_seller_bloc.dart';
import '../../blocs/offer/fav/fav_cubit.dart';
import '../../blocs/offer/offer_bloc.dart';
import '../../widgets/auth_builder.dart';
import '../../widgets/costume_button.dart';
import '../widgets/offer_widget.dart';

class OfferDetailScreen extends StatelessWidget {
  const OfferDetailScreen({required this.id, Key? key}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    bool? isChanged;
    return BlocProvider(
      create: (context) => OfferBloc(sl(), sl(), sl(), sl())
        ..add(OfferEvent.offerDetails(id: id)),
      child: WillPopScope(
        onWillPop: () async {
          context.pop<bool?>(isChanged);
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("offer_details".tr()),
            actions: [
              BlocBuilder<OfferBloc, OfferState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      offerDetailsLoaded: (offer, _) {
                        return Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Share.shareUri(Uri.parse(
                                      'https://alphadev39.com/offer_details/$id'));

                                },
                                icon: const Icon(
                                  Icons.share,
                                  color: AppTheme.secondaryColor,
                                  size: 25,
                                )),
                            BlocProvider(
                              create: (context) =>
                                  FavCubit(sl(), sl(), fav: offer.fav),
                              child: BlocBuilder<FavCubit, bool>(
                                builder: (context, state) {
                                  return IconButton(
                                      onPressed: () {
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
                                        isChanged = state;
                                        if (state) {
                                          context
                                              .read<FavCubit>()
                                              .removeOfferFav(id);
                                        } else {
                                          context.read<FavCubit>().addToFav(id);
                                        }
                                      },
                                      icon: state
                                          ? const Icon(
                                              Icons.favorite,
                                              color: AppTheme.orange,
                                              size: 25,
                                            )
                                          : const Icon(
                                              Icons.favorite_outline_rounded,
                                              color: AppTheme.secondaryColor,
                                              size: 30,
                                            ));
                                },
                              ),
                            ),
                          ],
                        );
                      });
                },
              )
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BlocBuilder<OfferBloc, OfferState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    offerDetailsLoaded: (offer, relatedResults) {
                      return Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CarouselSlider(
                                  options: CarouselOptions(
                                    aspectRatio: 4.5 / 2,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.2,
                                    //  autoPlay: true,
                                  ),
                                  items: [
                                    if (offer.video != null)
                                      HookBuilder(
                                        builder: (BuildContext context) {
                                          final controller =
                                              useNetworkVideoPlayerController(
                                                  video: offer.video!);
                                          return FutureBuilder(
                                            future: controller
                                                .initialize()
                                                .then((value) => controller
                                                  ..setLooping(true)
                                                  ..play()),
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.done) {
                                                return ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: AspectRatio(
                                                    aspectRatio: 4.5 / 2,
                                                    child:
                                                        VideoPlayer(controller),
                                                  ),
                                                );
                                              } else {
                                                // If the VideoPlayerController is still initializing, show a
                                                // loading spinner.
                                                return const Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              }
                                            },
                                          );
                                        },
                                      ),
                                    ...?offer.images
                                        ?.map<Widget>((e) => CachedNetworkImage(
                                              imageUrl: e,
                                              imageBuilder:
                                                  (context, imageProvider) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image:
                                                              imageProvider)),
                                                );
                                              },
                                            ))
                                        .toList(),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text("${offer.title}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16)),
                                    const Expanded(child: SizedBox()),
                                    const Icon(Icons.timelapse),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(timeago.format(offer.data,
                                        locale: context.locale.languageCode)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(() {
                                      final currency = sl<LocalDataSource>()
                                          .getValue<Currency>(
                                              LocalDataKeys.currency);
                                      return "${(offer.price! * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                    }(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                    const Expanded(child: SizedBox()),
                                    const Icon(Icons.remove_red_eye_outlined),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text("${offer.views}"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // const Row(
                                //   children: [
                                //     Icon(Icons.person),
                                //     SizedBox(
                                //       width: 5,
                                //     ),
                                //     Text("person  name",
                                //         style: TextStyle(
                                //             fontWeight: FontWeight.w600,
                                //             fontSize: 15)),
                                //     Expanded(child: SizedBox()),
                                //     Icon(Icons.person),
                                //     SizedBox(
                                //       width: 5,
                                //     ),
                                //     Text("company",
                                //         style: TextStyle(
                                //             fontWeight: FontWeight.w600,
                                //             fontSize: 15)),
                                //   ],
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                Text("offer_details".tr(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17))
                                    .tr(),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "${offer.description}",
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("offer_constraints",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17))
                                    .tr(),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "${offer.condition}",
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("may_like_it",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17))
                                    .tr(),
                                const SizedBox(
                                  height: 10,
                                ),
                                GridView.builder(
                                    shrinkWrap: true,
                                    physics: const BouncingScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: .8,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10),
                                    itemCount: relatedResults.length,
                                    itemBuilder: (context, index) {
                                      return BlocProvider(
                                        create: (context) => FavCubit(
                                            sl(), sl(),
                                            fav: relatedResults[index].fav),
                                        child: GestureDetector(
                                          onTap: () => context.pushNamed(
                                              Routes.offerDetails.name,
                                              pathParameters: {
                                                "id": relatedResults[index]
                                                    .id
                                                    .toString()
                                              }),
                                          child: Card(
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    CachedNetworkImage(
                                                      imageUrl:
                                                          relatedResults[index]
                                                                  .images
                                                                  ?.first ??
                                                              "",
                                                      imageBuilder:
                                                          (ctx, imageProvider) {
                                                        return Container(
                                                          height: 130,
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  image:
                                                                      DecorationImage(
                                                                    image:
                                                                        imageProvider,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  )),
                                                        );
                                                      },
                                                      placeholder: (_, __) =>
                                                          shimmer.Shimmer
                                                              .fromColors(
                                                        baseColor: Colors
                                                            .grey.shade200,
                                                        highlightColor:
                                                            Colors.grey.shade50,
                                                        child: Container(
                                                          height: 130,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                      ),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          Container(
                                                        height: 130,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Colors.grey),
                                                      ),
                                                    ),
                                                    Builder(builder: (context) {
                                                      return InkWell(
                                                        onTap: () {
                                                          final userType = sl<
                                                                  LocalDataSource>()
                                                              .getValue(
                                                                  LocalDataKeys
                                                                      .userType);
                                                          final isGuest =
                                                              userType ==
                                                                  UserType.gust;
                                                          if (isGuest) {
                                                            SmartDialog
                                                                .showToast(
                                                              "please_log_in_first"
                                                                  .tr(),
                                                            );
                                                            return;
                                                          }
                                                          if (context
                                                              .read<FavCubit>()
                                                              .state) {
                                                            context
                                                                .read<
                                                                    FavCubit>()
                                                                .removeOfferFav(
                                                                    relatedResults[
                                                                            index]
                                                                        .id);
                                                          } else {
                                                            context
                                                                .read<
                                                                    FavCubit>()
                                                                .addToFav(
                                                                    relatedResults[
                                                                            index]
                                                                        .id);
                                                          }
                                                        },
                                                        child: BlocBuilder<
                                                            FavCubit, bool>(
                                                          builder:
                                                              (context, state) {
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  state
                                                                      ? Assets
                                                                          .assets_icons_fav_filled_svg
                                                                      : Assets
                                                                          .assets_icons_fav_svg,
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
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width: 120,
                                                              child: Text(
                                                                "${relatedResults[index].title}",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14.dp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                            ),
                                                            Text(
                                                              () {
                                                                final currency = sl<
                                                                        LocalDataSource>()
                                                                    .getValue<
                                                                            Currency>(
                                                                        LocalDataKeys
                                                                            .currency);
                                                                return "${(relatedResults[index].price! * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
                                                              }(),
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      12.dp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Flexible(
                                                  flex: 0,
                                                  child: Container(
                                                    width: double.infinity,
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    child: BlocBuilder<
                                                        MakeContactWithSellerBloc,
                                                        MakeContactWithSellerState>(
                                                      buildWhen:
                                                          (previous, current) {
                                                        return current
                                                            .maybeWhen(
                                                          orElse: () => false,
                                                          error: (_) => true,
                                                          loading: (id) =>
                                                              id ==
                                                              relatedResults[
                                                                      index]
                                                                  .id,
                                                        );
                                                      },
                                                      builder:
                                                          (context, state) {
                                                        return CostumeButton(
                                                            onPressed: () {
                                                              isGuest()
                                                                  ? context.pushNamed(
                                                                      Routes
                                                                          .logIn
                                                                          .name)
                                                                  : context
                                                                      .read<
                                                                          MakeContactWithSellerBloc>()
                                                                      .add(
                                                                        MakeContactWithSellerEvent
                                                                            .makeOfferContact(
                                                                          offerId:
                                                                              offer.id,
                                                                        ),
                                                                      );
                                                            },
                                                            child:
                                                                state.maybeWhen(
                                                              orElse: () =>
                                                                  AuthBuilder(
                                                                builder: (context) =>
                                                                    const Text(
                                                                            "contact")
                                                                        .tr(),
                                                                gustBuilder:
                                                                    (context) =>
                                                                        const Text("log_in_contact")
                                                                            .tr(),
                                                              ),
                                                              loading: (_) => LoadingAnimationWidget
                                                                  .prograssiveDots(
                                                                      color: AppTheme
                                                                          .primaryColor,
                                                                      size: 20
                                                                          .dp),
                                                            ));
                                                      },
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                width: double.infinity,
                                color: Colors.transparent,
                                child: BlocBuilder<MakeContactWithSellerBloc,
                                    MakeContactWithSellerState>(
                                  buildWhen: (previous, current) {
                                    return current.maybeWhen(
                                      orElse: () => false,
                                      error: (_) => true,
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
                                )),
                          ),
                        ],
                      );
                    },
                    loading: () => SingleChildScrollView(
                      child: Column(
                        children: [
                          SkeletonLine(
                            style: SkeletonLineStyle(
                              width: double.infinity,
                              height: 20.h,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SkeletonLine(
                                style: SkeletonLineStyle(
                                  width: 120,
                                  height: 10,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SkeletonLine(
                                style: SkeletonLineStyle(
                                  width: 80,
                                  height: 10,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SkeletonLine(
                                style: SkeletonLineStyle(
                                  width: 50,
                                  height: 10,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SkeletonLine(
                                style: SkeletonLineStyle(
                                  width: 50,
                                  height: 10,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SkeletonLine(
                            style: SkeletonLineStyle(
                              width: 100,
                              height: 15,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SkeletonParagraph(
                            style: SkeletonParagraphStyle(
                              lines: 10,
                              lineStyle: SkeletonLineStyle(
                                  height: 7,
                                  randomLength: true,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SkeletonLine(
                            style: SkeletonLineStyle(
                              width: 100,
                              height: 15,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SkeletonParagraph(
                            style: SkeletonParagraphStyle(
                              lines: 10,
                              lineStyle: SkeletonLineStyle(
                                  height: 7,
                                  randomLength: true,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    error: (error) => error.when(
                        networkError: (_) => NetworkErrorWidget(tryAgain: () {
                              context
                                  .read<OfferBloc>()
                                  .add(OfferEvent.offerDetails(id: id));
                            }),
                        other: (_) => error_widget.ErrorWidget(tryAgain: () {
                              context
                                  .read<OfferBloc>()
                                  .add(OfferEvent.offerDetails(id: id));
                            })),
                    orElse: () => error_widget.ErrorWidget(tryAgain: () {
                      context
                          .read<OfferBloc>()
                          .add(OfferEvent.offerDetails(id: id));
                    }),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
