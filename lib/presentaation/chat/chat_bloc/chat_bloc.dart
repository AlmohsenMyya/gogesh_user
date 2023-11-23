import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/Utils.dart';
import 'package:commercial_directory_users/app/locator.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/extensions/string_extensions.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/meta.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/domain/entities/pusher/message_response.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:commercial_directory_users/domain/usecases/chat/get_chat_usecase.dart';
import 'package:commercial_directory_users/domain/usecases/chat/send_message_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../../domain/request/chat/send_message_request.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetChatUseCase getChatUseCase;
  final SendMessageUseCase sendMessageUseCase;
  // final StreamController<ChatEntity> eventController =
  //     StreamController<ChatEntity>();

  ChatBloc(
      {required this.conversationId,
      required this.getChatUseCase,
      required this.sendMessageUseCase,
      required this.type})
      : super(const ChatState.initial()) {
    on<ChatEvent>(
      _mapEventToState,
    );
    pusherListener();
  }
  final localDataSource =
      sl<LocalDataSource>().getValue<ProfileEntity>(LocalDataKeys.profile);
  final String type;
  Meta? meta;
  bool lastPage = false;
  PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
  int? conversationId;
  List<ChatEntity> listChat = [];

  FutureOr<dynamic> _mapEventToState(
      ChatEvent event, Emitter<ChatState> emit) async {
    return event.map(
        uploadImage: (value) async {
          var result = await pickImage(value.source);
          if (result != null) {
            return emit(
              ChatState.imageLoaded(
                image: result,
              ),
            );
          } else {
            return emit(const ChatState.initial());
          }
        },
        back: (value) => emit(const ChatState.initial()),
        sendMessage: (value) async {
          final messageId =
              DateTime.now().microsecond * Random.secure().nextInt(1000);
          listChat.insert(
              0,
              ChatEntity(
                  isMe: true,
                  conversationId: value.request.contactId,
                  id: messageId,
                  attachment: value.request.attachement,
                  name:
                      "${localDataSource?.firstName} ${localDataSource?.lastName}",
                  message: value.request.message,
                  createdAt: "createdAt"));
          emit(
            ChatState.loaded(chat: List.of(listChat), lastPage: lastPage),
          );
          await Future.delayed(const Duration(milliseconds: 500));
          emit(ChatState.sendingMessage(id: messageId));

          final result = await sendMessageUseCase(SendMessageRequest(
              contactId: value.request.contactId,
              message: value.request.message,
              attachement: value.request.attachement,
              type: value.request.type,
              socketID: await pusher.getSocketId()));
          return emit(result.when(
            failure: (failure) {
              return ChatState.canNotSendMessage(id: messageId);
            },
            success: (data) => const ChatState.messageSent(),
          ));
        },
        loadChat: (value) async {
          listChat.clear();
          emit(const ChatState.loading());
          var result =
              await getChatUseCase(value.filter.copyWith(id: conversationId));

          return emit(
            result.when(failure: (failure) {
              return failure!.maybeWhen(
                orElse: () => const ChatState.error(
                  ErrorState.other(message: ""),
                ),
                network: (message) =>
                    const ChatState.error(ErrorState.networkError(message: '')),
              );
            }, success: (success) {
              meta = success!.meta;
              if (success.data.isEmpty) {
                return const ChatState.empty();
              }

              listChat.addAll(success.data);

              lastPage = success.meta.currentPage! == success.meta.lastPage;

              return ChatState.loaded(
                  chat: success.data,
                  pageKey:
                      success.meta.nextPage ?? success.meta.currentPage! + 1,
                  lastPage: lastPage);
            }),
          );
        },
        loadMore: (_LoadMore value) async {
          emit(const ChatState.loading());
          var result =
              await getChatUseCase(value.filter.copyWith(id: conversationId));

          return emit(
            result.when(failure: (failure) {
              return const ChatState.loadingMoreFailed();
            }, success: (success) {
              meta = success!.meta;
              if (success.data.isEmpty) {
                return const ChatState.empty();
              }
              listChat.addAll(success.data);

              lastPage = success.meta.currentPage! == success.meta.lastPage;
              return ChatState.loaded(
                  chat: success.data,
                  pageKey:
                      success.meta.nextPage ?? success.meta.currentPage! + 1,
                  lastPage: lastPage);
            }),
          );
        },
        addNewMessage: (_AddNewMessage value) {
          listChat.insert(0, value.message);
          return emit(
              ChatState.loaded(chat: List.of(listChat), lastPage: lastPage));
        },
        resendMessage: (_ReendMessage value) async {
          // emit(ChatState.sendingMessage(id: value.messageId));
          // final message =
          //     listChat.firstWhere((element) => element.id == value.messageId);
          // final result = await sendMessageUseCase(SendMessageRequest(
          //     contactId: message.conversationId ?? 0,
          //     message: message.message ?? "",
          //     attachement: message.attachment ?? "",
          //     type: type,
          //     socketID: await pusher.getSocketId()));
          // return emit(result.when(
          //   failure: (failure) {
          //     return ChatState.canNotSendMessage(id: value.messageId);
          //   },
          //   success: (data) => const ChatState.messageSent(),
          // ));
        });
  }

  Future<void> pusherListener() async {
    await pusher.connect();

    final myChannel = await pusher.subscribe(
      channelName: "$type.$conversationId",
      onEvent: (dynamic event) {
        event as PusherEvent;
        if (event.eventName != "pusher:subscription_succeeded") {
          try {
            final messageJson = jsonDecode(event.data)["message"];
            final message = ChatEntity(
                isMe: false,
                conversationId: messageJson["contact_id"],
                id: messageJson["id"],
                name: messageJson["name"],
                attachment: messageJson["attachment"],
                message: messageJson["message"],
                createdAt: messageJson["created_at"]);
            // eventController.sink.add(message);

            add(
              ChatEvent.addNewMessage(
                message: message,
              ),
            );
          } catch (e) {
            e.log();
          }
        }
      },
    );
  }

  @override
  Future<void> close() async {
    await pusher.unsubscribe(channelName: 'chat$conversationId');
    // listChat.clear();
    return super.close();
  }
}
