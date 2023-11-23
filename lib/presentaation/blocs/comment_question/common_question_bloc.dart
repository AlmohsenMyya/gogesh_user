import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/domain/entities/common_question/common_question_entity.dart';
import 'package:commercial_directory_users/domain/usecases/common_question/get_common_question_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_question_event.dart';

part 'common_question_state.dart';

part 'common_question_bloc.freezed.dart';

class CommonQuestionBloc
    extends Bloc<CommonQuestionEvent, CommonQuestionState> {
  CommonQuestionBloc(this._questionUseCase)
      : super(const CommonQuestionState.loading()) {
    on<CommonQuestionEvent>(_mapEventToState);
  }
  final GetCommonQuestionUseCase _questionUseCase;
  FutureOr _mapEventToState(
      CommonQuestionEvent event, Emitter<CommonQuestionState> emit) {
    return event.map(load: (loaded) async {
      final result =
          await _questionUseCase(Filter(type: "Customer", page: loaded.page));
      return emit(result.when(
          failure: (failure) => failure!.maybeMap(
              orElse: () => const CommonQuestionState.error(
                  error: ErrorState.other(message: "")),
              network: (message) => CommonQuestionState.error(
                  error: ErrorState.networkError(message: message.message))),
          success: (success) {
            if (success!.data.isEmpty) {
              return const CommonQuestionState.dataLoaded(data: [], page: 0);
            }

            if (success.meta.currentPage! == success.meta.lastPage) {
              return CommonQuestionState.lastPageLoaded(
                data: success.data,
              );
            }
            return CommonQuestionState.dataLoaded(
              data: success.data,
              page: success.meta.nextPage ?? success.meta.currentPage! + 1,
            );
          }));
    });
  }
}
