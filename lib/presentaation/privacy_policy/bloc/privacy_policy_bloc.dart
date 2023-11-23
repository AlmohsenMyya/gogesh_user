import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/usecases/privacy/fetch_privacy_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy_event.dart';
part 'privacy_policy_state.dart';
part 'privacy_policy_bloc.freezed.dart';

class PrivacyPolicyBloc extends Bloc<PrivacyPolicyEvent, PrivacyPolicyState> {
  final GetPrivacyUseCase getPrivacyUseCase;
  PrivacyPolicyBloc({required this.getPrivacyUseCase})
      : super(PrivacyPolicyState.initial()) {
    on<PrivacyPolicyEvent>(_mapEventToState);
  }
  FutureOr _mapEventToState(
      PrivacyPolicyEvent event, Emitter<PrivacyPolicyState> emit) {
    return event.map(
      load: (load) async {
        emit(const PrivacyPolicyState.loading());
        final result = await getPrivacyUseCase(NoParams());
        return emit(result.when(failure: (failure) {
          /// TODO: handle the failure
          return const PrivacyPolicyState.error();
        }, success: (success) {
          return PrivacyPolicyState.dataloaded(privacy: success!);
        }));
      },
    );
  }
}
