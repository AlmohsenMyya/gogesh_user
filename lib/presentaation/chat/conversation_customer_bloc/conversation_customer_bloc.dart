import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/app/locator.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/usecases/chat/get_conversation_customer_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

part 'conversation_customer_event.dart';

part 'conversation_customer_state.dart';

part 'conversation_customer_bloc.freezed.dart';

class ConversationCustomerBloc
    extends Bloc<ConversationCustomerEvent, ConversationCustomerState> {
  final GetConversationCustomerUseCase getConversationCustomerUseCase;

  ConversationCustomerBloc({required this.getConversationCustomerUseCase})
      : super(const ConversationCustomerState.initial()) {
    on<ConversationCustomerEvent>(_mapEventToState);
  }

  PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();

  FutureOr<dynamic> _mapEventToState(ConversationCustomerEvent event,
      Emitter<ConversationCustomerState> emit) async {
    return event.map(addNewConversationOurUPdate: (value) async {
      emit(const ConversationCustomerState.loading());
      var result = await getConversationCustomerUseCase(value.filter);
      return emit(
        result.when(failure: (failure) {
          return failure!.maybeWhen(
            orElse: () => const ConversationCustomerState.error(
              ErrorState.other(message: ""),
            ),
            network: (message) => const ConversationCustomerState.error(
                ErrorState.networkError(message: '')),
          );
        }, success: (success) {
          return ConversationCustomerState.addedNewConversationOurUPdate(
              conversation: success!.data, pageKey: 1);
        }),
      );
    }, loadConversationSeller: (value) async {
      emit(const ConversationCustomerState.loading());
      var result = await getConversationCustomerUseCase(value.filter);
      return emit(
        result.when(failure: (failure) {
          return failure!.maybeWhen(
            orElse: () => const ConversationCustomerState.error(
              ErrorState.other(message: ""),
            ),
            network: (message) => const ConversationCustomerState.error(
                ErrorState.networkError(message: '')),
          );
        }, success: (success) {
          // listChat.addAll(success!.data);
          // meta = success.meta;
          if (success!.data.isEmpty) {
            return const ConversationCustomerState.loaded(conversation: []);
          }

          if (success.meta!.currentPage! == success.meta!.lastPage) {
            return ConversationCustomerState.lastPageLoaded(
                conversation: success.data);
          }

          return ConversationCustomerState.loaded(
              conversation: success.data,
              pageKey:
                  success.meta!.nextPage ?? success.meta!.currentPage! + 1);
        }),
      );
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
