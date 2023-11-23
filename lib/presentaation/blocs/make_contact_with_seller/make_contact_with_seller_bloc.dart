import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:commercial_directory_users/domain/usecases/chat/make_ad_contact_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/chat/make_offer_contact_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_contact_with_seller_event.dart';
part 'make_contact_with_seller_state.dart';
part 'make_contact_with_seller_bloc.freezed.dart';

class MakeContactWithSellerBloc
    extends Bloc<MakeContactWithSellerEvent, MakeContactWithSellerState> {
  final MakeOfferContactUseCase makeOfferContactUseCase;
  final MakeAdContactUseCase makeAdContactUseCase;
  MakeContactWithSellerBloc(
      {required this.makeOfferContactUseCase,
      required this.makeAdContactUseCase})
      : super(const _Initial()) {
    on<MakeContactWithSellerEvent>(_mapEventToState);
  }
  FutureOr<dynamic> _mapEventToState(MakeContactWithSellerEvent event,
      Emitter<MakeContactWithSellerState> emit) async {
    return event.map(
      makeOfferContact: (value) async {
        emit(MakeContactWithSellerState.loading(id: value.offerId));

        var result = await makeOfferContactUseCase(ModelID(id: value.offerId));
        return emit(result.when(
            failure: (error) =>
                MakeContactWithSellerState.error(error!.localizedErrorMessage),
            success: (s) =>
                MakeContactWithSellerState.succes(conversation: s!)));
      },
      makeAdContact: (value) async {
        emit(MakeContactWithSellerState.loading(id: value.adId));

        var result = await makeAdContactUseCase(ModelID(id: value.adId));
        return emit(result.when(
            failure: (error) =>
                MakeContactWithSellerState.error(error!.localizedErrorMessage),
            success: (s) =>
                MakeContactWithSellerState.succes(conversation: s!)));
      },
    );
  }
}
