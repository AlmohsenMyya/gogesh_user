import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/domain/usecases/chat/get_conversation_support_usecase.dart';
import 'package:commercial_directory_users/presentaation/main/main_screen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../../app/locator.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';

part 'conversation_event.dart';

part 'conversation_state.dart';

part 'conversation_bloc.freezed.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final GetConversationSupportUseCase getConversationSupportUseCase;

  ConversationBloc({
    required this.getConversationSupportUseCase,
  }) : super(const ConversationState.initial()) {
    on<ConversationEvent>(_mapEventToState);
    lisnerPusher();
  }

  PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();

  FutureOr<dynamic> _mapEventToState(
      ConversationEvent event, Emitter<ConversationState> emit) async {
    return event.map(addNewConversationOurUPdate: (value) async {
      emit(const ConversationState.loading());
      var result = await getConversationSupportUseCase(value.filter);
      return emit(
        result.when(failure: (failure) {
          return failure!.maybeWhen(
            orElse: () => const ConversationState.error(
              ErrorState.other(message: ""),
            ),
            network: (message) => const ConversationState.error(
                ErrorState.networkError(message: '')),
          );
        }, success: (success) {
          return ConversationState.addedNewConversationOurUPdate(
              conversation: success!.data, pageKey: 1);
        }),
      );
    }, loadConversationSupport: (value) async {
      emit(const ConversationState.loading());
      var result = await getConversationSupportUseCase(value.filter);
      return emit(
        result.when(failure: (failure) {
          return failure!.maybeWhen(
            orElse: () => const ConversationState.error(
              ErrorState.other(message: ""),
            ),
            network: (message) => const ConversationState.error(
                ErrorState.networkError(message: '')),
          );
        }, success: (success) {
          // listChat.addAll(success!.data);
          // meta = success.meta;
          if (success!.data.isEmpty) {
            return const ConversationState.loaded(conversation: []);
          }

          if (success.meta!.currentPage! == success.meta!.lastPage) {
            return ConversationState.lastPageLoaded(conversation: success.data);
          }

          return ConversationState.loaded(
              conversation: success.data,
              pageKey:
                  success.meta!.nextPage ?? success.meta!.currentPage! + 1);
        }),
      );
    });
  }

  Future<void> lisnerPusher() async {
    await pusher.connect();
    final userId = sl<LocalDataSource>()
        .getValue<ProfileEntity>(LocalDataKeys.profile)
        ?.id;
    await pusher.subscribe(
      channelName: "customer.$userId",
      onEvent: (dynamic event) {
        event as PusherEvent;
        if (event.eventName != "pusher:subscription_succeeded") {
          sl<LocalDataSource>().setValue<int>(
              LocalDataKeys.unreadMessages, sl<Counter>().state + 1);
          sl<Counter>().increment();
        }
      },
    );
  }

  @override
  Future<void> close() {
    pusher.unsubscribe(
        channelName:
            "customer.${sl<LocalDataSource>().getValue<ProfileEntity>(LocalDataKeys.profile)?.id}");

    return super.close();
  }
}
