import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/locator.dart';
import '../../../assets.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/entities/ad/ad_entity.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({required this.ad, Key? key}) : super(key: key);
  final Ad ad;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.adDetails.name,
            pathParameters: {"id": ad.id.toString()});
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: ad.images ?? "",
              imageBuilder: (ctx, imageProvider) {
                return Container(
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     child: SvgPicture.asset(
            //       Assets.assets_icons_fav_filled_svg,
            //       width: 20,
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      child: Text(
                        ad.title,
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
                        return "${(ad.price * sl<LocalDataSource>().getValue<double>(LocalDataKeys.exchangeRate, defaultValue: 1.0)!).toStringAsFixed(3)}  ${currency?.currencyCode}";
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
      ),
    );
  }
}
