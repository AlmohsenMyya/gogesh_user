import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/presentaation/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletons/skeletons.dart';

class ConversationItem extends StatelessWidget {
  const ConversationItem({required this.conversation, this.type, Key? key})
      : super(key: key);
  final ConversationEntity conversation;
  final String? type;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.pushNamed(Routes.chat.name,
            extra: conversation, queryParameters: {"type": type ?? ""});
      },
      leading: SizedBox(
        width: 6.h,
        height: 6.h,
        child: CachedNetworkImage(
          imageUrl: conversation.avatar ?? "",
          imageBuilder: (_, imageProvider) {
            return Container(
              width: 6.h,
              height: 6.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  )),
            );
          },
          errorWidget: (context, url, error) => ProfileAvatar(
              width: 6.h,
              height: 6.h,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.white),
              firstName: conversation.name?.split(" ")[0] ?? " ",
              lastName: conversation.name?.split(" ")[1] ?? " "),
          placeholder: (_, __) => Center(
            child: SkeletonItem(
                child: Container(
              width: 6.h,
              height: 6.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Theme.of(context).colorScheme.background),
            )),
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 1.h),
        child: Text(
          conversation.name!,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
        ),
      ),
      subtitle: Text(
        conversation.lastMessage ?? '',
        style: TextStyle(
            color: conversation.unread == 0 ? Colors.grey : Colors.black26,
            fontSize: 13.sp),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
