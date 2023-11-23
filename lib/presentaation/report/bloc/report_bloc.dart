import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:commercial_directory_users/domain/usecases/chat/make_chat_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/request/chat/support_request.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final MakeChatUseCase makeChatUseCase;
  ReportBloc({required this.makeChatUseCase}) : super(ReportState.initial()) {
    on<ReportEvent>(_mapEventToState);
  }
  FutureOr<dynamic> _mapEventToState(
      ReportEvent event, Emitter<ReportState> emit) async {
    return event.map(
      makeChat: (value) async {
        emit(const ReportState.loading());

        var result = await makeChatUseCase(value.request);
        return emit(result.when(
            failure: (error) => ReportState.error(error!.localizedErrorMessage),
            success: (s) => ReportState.succes(s)));
      },
    );
  }
}
