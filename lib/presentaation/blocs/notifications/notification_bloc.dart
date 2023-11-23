import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/fillters/filter.dart';
import '../../../domain/entities/notification_entity/notification_entity.dart';
import '../../../domain/usecases/notification/notification_usecase.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationUseCase getNotificationUseCase;
  NotificationBloc(this.getNotificationUseCase)
      : super(const NotificationState.initial()) {
    on<NotificationEvent>(_mapEventToState);
  }
  final pagingController =
      PagingController<int, NotificationEntity>(firstPageKey: 1);
  FutureOr _mapEventToState(
      NotificationEvent event, Emitter<NotificationState> emit) {
    return event.map(
      loadNotification: (value) async {
        emit(const NotificationState.loading());
        final result = await getNotificationUseCase(value.filter);
        return emit(result.when(failure: (failure) {
          return failure!.maybeWhen(
            orElse: () => const NotificationState.error(
              ErrorState.other(message: ""),
            ),
            network: (message) => const NotificationState.error(
                ErrorState.networkError(message: '')),
          );
        }, success: (success) {
          if (success!.data.isEmpty) {
            return const NotificationState.loaded(notification: []);
          }

          if (success.meta.currentPage! == success.meta.lastPage) {
            return NotificationState.lastPageLoaded(notification: success.data);
          }
          return NotificationState.loaded(
              notification: success.data,
              pageKey: success.meta.nextPage ?? success.meta.currentPage! + 1);
        }));
      },
    );
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
