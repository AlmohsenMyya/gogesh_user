import 'dart:io';

import 'package:commercial_directory_users/Utils.dart';
import 'package:commercial_directory_users/app/locator.dart';
import 'package:commercial_directory_users/app/router.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/presentaation/chat/chat_bloc/chat_bloc.dart';
import 'package:commercial_directory_users/presentaation/widgets/network_error_widget.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/presentaation/widgets/profile_avatar.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:commercial_directory_users/presentaation/widgets/error_widget.dart'
    as error_widget;
import '../../../app/theme.dart';
import '../../../domain/request/chat/send_message_request.dart';
import '../widget/message_bubble.dart';

String? attachement;

class ChatScreen extends HookWidget {
  const ChatScreen({required this.conversation, this.type, Key? key})
      : super(key: key);
  final ConversationEntity conversation;
  final String? type;

  @override
  Widget build(BuildContext context) {
    final bloc = ChatBloc(
        conversationId: conversation.id,
        getChatUseCase: sl(),
        sendMessageUseCase: sl(),
        type: type ?? "chat");
    bloc.add(ChatEvent.loadChat(
        filter: Filter(id: conversation.id, page: 1, type: type)));
    final scroll = useScrollController();
    final messageController = useTextEditingController();

    return BlocProvider(
      create: (context) => bloc,
      child: BlocListener<ChatBloc, ChatState>(
        listener: (context, state) {
          state.whenOrNull(errorSend: (error) {
            AlertController.show(
                "", "there_is_no_internet_connection".tr(), TypeAlert.error);
          }, imageLoaded: (image) {
            attachement = image!.path;
          }, initial: () {
            attachement = null;
          });
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(conversation.name ?? ""),
            actions: [
              MaterialButton(
                onPressed: () {
                  if (type != "support") {
                    context.pushNamed(Routes.sellerProfile.name,
                        queryParameters: {"id": "${conversation.sellerId}"});
                  }
                },
                child: CachedNetworkImage(
                  imageUrl: conversation.avatar.toImageOrEmpty(),
                  imageBuilder: (_, imageProvider) {
                    return Stack(
                      children: [
                        Container(
                          width: 9.w,
                          height: 9.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: imageProvider)),
                        ),
                        Positioned(
                          top: 3.2.h,
                          child: Container(
                            height: 1.1.h,
                            width: 1.1.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  errorWidget: (context, url, error) => ProfileAvatar(
                      width: 9.w,
                      height: 9.w,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                      firstName: conversation.name?.split(" ")[0] ?? " ",
                      lastName: conversation.name?.split(" ")[1] ?? " "),
                  placeholder: (_, __) => SizedBox(
                    height: 9.w,
                    width: 9.w,
                    child: const CircularProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: CustomScrollView(
                  controller: scroll,
                  physics: const BouncingScrollPhysics(),
                  reverse: true,
                  slivers: [
                    BlocBuilder<ChatBloc, ChatState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        orElse: () => false,
                        loaded: (chat, pageKey, lastPage) => true,
                        error: (error) => true,
                        empty: () => true,
                        loading: () => true,
                      ),
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () =>
                              const SliverToBoxAdapter(child: SizedBox()),
                          loading: () => const SliverToBoxAdapter(
                              child: Center(
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          )),
                          loaded: (chat, pageKey, lastPage) =>
                              NotificationListener<ScrollNotification>(
                            onNotification: (notification) {
                              if (notification is ScrollEndNotification) {
                                if (scroll.position.pixels ==
                                    scroll.position.maxScrollExtent) {
                                  context.read<ChatBloc>().add(
                                      const ChatEvent.loadMore(
                                          filter: Filter()));
                                }
                              }
                              return true;
                            },
                            child: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                  (context, index) => MessageBubble(
                                        message: chat[index],
                                      ),
                                  childCount: chat.length),
                            ),
                          ),
                          error: (error) => error.when(
                              networkError: (message) => SliverToBoxAdapter(
                                  child: NetworkErrorWidget(tryAgain: () {})),
                              other: (message) => SliverToBoxAdapter(
                                    child: error_widget.ErrorWidget(
                                      tryAgain: () {},
                                    ),
                                  )),
                          empty: () =>
                              const SliverToBoxAdapter(child: SizedBox()),
                        );
                      },
                    ),
                    BlocBuilder<ChatBloc, ChatState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        orElse: () => false,
                        loadingMore: () => true,
                      ),
                      builder: (context, state) {
                        return SliverToBoxAdapter(
                          child: Center(
                            child: bloc.lastPage
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                        );
                      },
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 10.h,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: conversation.avatar.toImageOrEmpty(),
                            imageBuilder: (_, imageProvider) {
                              return Container(
                                width: 15.h,
                                height: 15.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image:
                                        DecorationImage(image: imageProvider)),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 1.1.h,
                                    width: 1.1.h,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              );
                            },
                            errorWidget: (context, url, error) => ProfileAvatar(
                                width: 15.h,
                                height: 15.h,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 40),
                                firstName:
                                    conversation.name?.split(" ")[0] ?? " ",
                                lastName:
                                    conversation.name?.split(" ")[1] ?? " "),
                            placeholder: (_, __) => SizedBox(
                              width: 15.h,
                              height: 15.h,
                              child: const CircularProgressIndicator(),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            conversation.name ?? "",
                            style: TextStyle(
                                fontSize: 18.dp, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: BlocBuilder<ChatBloc, ChatState>(
                    buildWhen: (previous, current) {
                      return current.maybeWhen(
                        orElse: () => false,
                        imageLoaded: (file) => true,
                        initial: () => true,
                      );
                    },
                    builder: (contex, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          state.maybeWhen(
                            orElse: () => const SizedBox(),
                            initial: () => const SizedBox(),
                            imageLoaded: (image) => Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey.shade300,
                                  ),
                                  child: Image.file(
                                    File(
                                      image!.path,
                                    ),
                                    height: 10.h,
                                    width: 10.h,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () => contex
                                        .read<ChatBloc>()
                                        .add(const ChatEvent.back()),
                                    child: const Icon(Icons.cancel),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: messageController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.shade300,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 0),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide.none),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide.none),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide.none),
                                  ),
                                  cursorColor: AppTheme.secondaryColor,
                                  cursorHeight: 20,
                                  maxLines: null,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        // title: Text('Alert'),
                                        content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10,
                                                      horizontal: 20)),
                                              onPressed: () async {
                                                contex.read<ChatBloc>().add(
                                                    const ChatEvent.uploadImage(
                                                        source: ImageSource
                                                            .gallery));
                                                context.pop();
                                              },
                                              child: Row(
                                                children: [
                                                  const Text('Gallery').tr(),
                                                  const SizedBox(width: 5),
                                                  const Icon(Icons.photo),
                                                ],
                                              ),
                                            ),
                                            const Expanded(
                                              child: SizedBox(),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10,
                                                      horizontal: 20)),
                                              onPressed: () async {
                                                contex.read<ChatBloc>().add(
                                                    const ChatEvent.uploadImage(
                                                        source: ImageSource
                                                            .camera));
                                                context.pop();
                                              },
                                              child: Row(
                                                children: [
                                                  const Text('Camera').tr(),
                                                  const SizedBox(width: 5),
                                                  const Icon(Icons.camera),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.attach_file,
                                  color: AppTheme.secondaryColor,
                                ),
                              ),
                              IconButton(
                                  onPressed: () async {
                                    messageController.text.isEmpty &&
                                            attachement == null
                                        ? null
                                        : contex.read<ChatBloc>().add(
                                              ChatEvent.sendMessage(
                                                request: SendMessageRequest(
                                                    contactId:
                                                        conversation.id ?? 0,
                                                    message:
                                                        messageController.text,
                                                    attachement: attachement,
                                                    type: type),
                                              ),
                                            );
                                    // contex.read<ChatBloc>().add(
                                    //       const ChatEvent.back(),
                                    //     );
                                    messageController.clear();
                                  },
                                  icon: const Icon(
                                    Icons.send_rounded,
                                    color: AppTheme.secondaryColor,
                                  ))
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
