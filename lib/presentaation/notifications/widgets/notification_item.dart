import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/domain/entities/notification_entity/notification_entity.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({required this.notificationEntity, Key? key})
      : super(key: key);
  final NotificationEntity notificationEntity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: CachedNetworkImage(
          imageUrl: '',
          imageBuilder: (_, imageProvider) {
            return Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: imageProvider)),
            );
          },
          placeholder: (_, __) => Shimmer.fromColors(
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade50,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ),
      title: Text(
        "${notificationEntity.title}",
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        "${notificationEntity.content}",
        style: const TextStyle(color: Colors.grey, fontSize: 13),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
