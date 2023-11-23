import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/domain/entities/sector_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class SectorWidget extends StatelessWidget {
  const SectorWidget({required this.sector, Key? key}) : super(key: key);
  final Sector sector;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(Routes.sectorDetails.name, extra: sector);
      },
      child: Stack(
        children: [
          CachedNetworkImage(
              imageUrl: sector.image ??
                  "https://images.wikimotors.org/cargo-ship-hauling-intermodel-containers.jpg",
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
                  )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                sector.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 1,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
