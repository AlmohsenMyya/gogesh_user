import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/seller_profile/seller_profille.dart';
import '../../../domain/usecases/seller/get_seller_profile_use_case.dart';

part 'seller_info_event.dart';

part 'seller_info_state.dart';

part 'seller_info_bloc.freezed.dart';

class SellerInfoBloc extends Bloc<SellerInfoEvent, SellerInfoState> {
  SellerInfoBloc(this._profileUseCase)
      : super(const SellerInfoState.loading()) {
    on<SellerInfoEvent>(_mapEventToState);
  }

  final GetSellerProfileUseCase _profileUseCase;

  FutureOr _mapEventToState(
      SellerInfoEvent event, Emitter<SellerInfoState> emit) {
    return event.map(load: (load) async {
      final result = await _profileUseCase(ModelID(id: load.sellerId));
      return emit(result.when(
          failure: (failure) {
            return failure!.maybeMap(
                orElse: () => const SellerInfoState.error(
                    errorState:
                        ErrorState.other(message: "something_went_wrong")),
                network: (message) => SellerInfoState.error(
                    errorState:
                        ErrorState.networkError(message: message.message)));
          },
          success: (success) =>
              SellerInfoState.loaded(sellerProfile: success!)));
    });
  }
}
