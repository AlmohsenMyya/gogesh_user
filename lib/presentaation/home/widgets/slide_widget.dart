import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/presentaation/blocs/home/home_bloc.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart' as shimmer;
import 'package:skeletons/skeletons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/locator.dart';
import '../../../assets.dart';
import '../../../core/bloc/bloc_errors/error.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    final ads = [
      Assets.assets_ads_home_banner_png,
      Assets.assets_ads_home_banner_1_png,
      Assets.assets_ads_home_banner_2_png,
      Assets.assets_ads_home_banner_3_png,
    ];

    return BlocBuilder<HomeSlidAdsBloc, SlidAdsState>(
      buildWhen: (previous, current) => current.maybeWhen(
          orElse: () => false,
          adsLoaded: (_) => true,
          adsLoading: () => true,
          error: (_) => true,
          empty: () => true),
      builder: (context, state) {
        //  final AdsIndicatorCubit adsIndicatorCubit = AdsIndicatorCubit();
        return state.maybeWhen(
            adsLoaded: (state) => CarouselSlider(
                  carouselController: controller,
                  options: CarouselOptions(
                      // autoPlay: true,
                      aspectRatio: 4.5 / 2,
                      onPageChanged: (index, _) {
                        if (index + 5 == state.length) {
                          context
                              .read<HomeSlidAdsBloc>()
                              .add(const SlidAdsEvent.loadMore(page: 1));
                        }
                        //adsIndicatorCubit.changeIndex(index);
                      },
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      enableInfiniteScroll: false),
                  items: [
                    ...state.map((i) {
                      return GestureDetector(
                        onLongPress: () {
                          SmartDialog.show(
                            backDismiss: false,
                            builder: (context) {
                              return Container(
                                height: 55.h,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                alignment: Alignment.topCenter,
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // content
                                        CachedNetworkImage(
                                          imageUrl: i.images ?? "",
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return Container(
                                              height: 300,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: imageProvider,
                                                    fit: BoxFit.cover),
                                              ),
                                            );
                                          },
                                          errorWidget: (context, url, error) =>
                                              Container(
                                            height: 300,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          i.title,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20.dp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          () {
                                            final currency =
                                                sl<LocalDataSource>()
                                                    .getValue<Currency>(
                                                        LocalDataKeys.currency);
                                            return "${(i.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${context.locale.languageCode == "ar" ? currency?.currencyNameAr : currency?.currencyNameEn}";
                                          }(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14.dp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          i.description,
                                          textAlign: TextAlign.center,
                                        ),

                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        onTap: () async {
                          if (i.url != null) {
                            await launchUrl(Uri.parse(i.url ?? ""));
                          } else {
                            context.pushNamed(Routes.adDetails.name,
                                pathParameters: {"id": "${i.id}"});
                          }
                        },
                        child: Builder(
                          builder: (BuildContext context) {
                            return CachedNetworkImage(
                              imageBuilder: (context, provider) => Container(
                                width: MediaQuery.of(context).size.width,
                                // margin: const EdgeInsets.symmetric(
                                //     horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: AppTheme.green,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: provider, fit: BoxFit.fill),
                                ),
                              ),
                              imageUrl: i.images ?? "",
                            );
                          },
                        ),
                      );
                    }).toList(),
                    ...ads.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              i,
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                    BlocBuilder<HomeSlidAdsBloc, SlidAdsState>(
                        buildWhen: (previous, current) => current.maybeWhen(
                            orElse: () => false, loadingMore: () => true),
                        builder: (context, state) => state.maybeWhen(
                              orElse: () => const SizedBox(),
                              loadingMore: () => const SizedBox(
                                height: 10,
                                width: 10,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: AppTheme.secondaryColor,
                                    strokeWidth: 5,
                                  ),
                                ),
                              ),
                            )),
                    BlocBuilder<HomeSlidAdsBloc, SlidAdsState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                          orElse: () => false, loadingMoreError: () => true),
                      builder: (context, state) => state.maybeWhen(
                          orElse: () => const SizedBox(),
                          loadingMoreError: () => SizedBox(
                              height: 10,
                              width: 10,
                              child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      context.read<HomeSlidAdsBloc>().add(
                                          const SlidAdsEvent.loadMore(page: 1));
                                    },
                                    icon: const Icon(Icons.refresh)),
                              ))),
                    ),
                  ],
                ),
            adsLoading: () => shimmer.Shimmer.fromColors(
                  baseColor: Colors.grey.shade200,
                  highlightColor: Colors.grey.shade50,
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          // height: 170.0,
                          aspectRatio: 4.5 / 2,

                          enlargeCenterPage: true,
                          scrollPhysics: const NeverScrollableScrollPhysics(),
                          enlargeFactor: 0.2,
                        ),
                        items: [
                          1,
                          2,
                          3,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'text $i',
                                    style: TextStyle(fontSize: 16.0),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // DotsIndicator(
                      //   dotsCount: 3,
                      //   position: 1,
                      //   decorator: const DotsDecorator(
                      //     color: Color(0xffcbcbcb), // Inactive color
                      //     activeColor: AppTheme.green,
                      //   ),
                      // )
                    ],
                  ),
                ),
            error: (ErrorState errorState) {
              return AspectRatio(
                aspectRatio: 4.5 / 2,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          Assets.assets_icons_network_error_svg,
                          width: 80,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "there_is_no_internet_connection",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ).tr(),
                      ],
                    )),
              );
            },
            empty: () {
              return CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                    aspectRatio: 4.5 / 2,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    enableInfiniteScroll: false),
                items: [
                  ...ads.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          i,
                          fit: BoxFit.fill,
                          frameBuilder:
                              (context, child, frame, wasSynchronouslyLoaded) =>
                                  ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: child,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ],
              );
            },
            orElse: () => const SizedBox());
      },
    );
  }
}

class AdsIndicatorCubit extends Cubit<int> {
  AdsIndicatorCubit() : super(0);

  changeIndex(int index) {
    emit(index);
  }
}
