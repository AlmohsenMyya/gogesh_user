import 'dart:io';

import 'package:bubble/bubble.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../../app/theme.dart';
import '../chat_bloc/chat_bloc.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.message,
  });

  final ChatEntity message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10.0,
      ),
      child: Column(
        crossAxisAlignment:
            !message.isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message.name ?? "",
            style: const TextStyle(
              fontSize: 13.0,
              color: Colors.black38,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: !message.isMe!
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              message.isMe!
                  ? BlocBuilder<ChatBloc, ChatState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        orElse: () => false,
                        messageSent: () => true,
                        sendingMessage: (id) => message.id! == id,
                        canNotSendMessage: (id) => message.id! == id,
                      ),
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          canNotSendMessage: (id) => InkWell(
                            onTap: () {
                              // context
                              //     .read<ChatBloc>()
                              //     .add(ChatEvent.resendMessage(messageId: id));
                            },
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                          sendingMessage: (id) => const SizedBox(
                            width: 15,
                            height: 15,
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          ),
                        );
                      },
                    )
                  : const SizedBox(),
              ////////////
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 250,
                ),
                child: Bubble(
                  nip: !message.isMe! ? BubbleNip.leftTop : BubbleNip.rightTop,
                  color: !message.isMe!
                      ? Colors.grey.shade100
                      : AppTheme.secondaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 1.0,
                      horizontal: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        message.message != null
                            ? Text(
                                message.message!,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: !message.isMe!
                                      ? Colors.black87
                                      : Colors.white,
                                ),
                              )
                            : const SizedBox(),
                        message.attachment != null
                            ? message.id == -1
                                ? Image.file(
                                    File(message.attachment!),
                                    frameBuilder: (context, child, frame,
                                            wasSynchronouslyLoaded) =>
                                        ClipRRect(
                                      child: child,
                                    ),
                                    width: 20.h,
                                    height: 20.h,
                                  )
                                : CachedNetworkImage(
                                    imageUrl: message.attachment!,
                                    imageBuilder: (_, imageProvider) {
                                      return Container(
                                        width: 20.h,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.fill,
                                            )),
                                      );
                                    },
                                    placeholder: (_, __) => const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ),
              ),
              ////////////
              message.isMe!
                  ? const SizedBox()
                  : BlocBuilder<ChatBloc, ChatState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        orElse: () => false,
                        messageSent: () => true,
                        sendingMessage: (id) => message.id! == id,
                        canNotSendMessage: (id) => message.id! == id,
                      ),
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          canNotSendMessage: (id) => InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                          sendingMessage: (id) => const SizedBox(
                            width: 15,
                            height: 15,
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          ),
                        );
                      },
                    ),
            ],
          )
        ],
      ),
    );
  }
}
