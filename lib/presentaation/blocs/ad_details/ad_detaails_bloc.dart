import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/domain/entities/ad/ad_entity.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_ads_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/bloc/bloc_errors/error.dart';
import '../../../core/utils/model_id.dart';

part 'ad_detaails_event.dart';

part 'ad_detaails_state.dart';

part 'ad_detaails_bloc.freezed.dart';

class AdDetailsBloc extends Bloc<AdDetailsEvent, AdDetailsState> {
  AdDetailsBloc(this._adsDetailsUseCase)
      : super(const AdDetailsState.loading()) {
    on<AdDetailsEvent>(_mapEventToState);
  }

  final GetAdsDetailsUseCase _adsDetailsUseCase;

  FutureOr _mapEventToState(
      AdDetailsEvent event, Emitter<AdDetailsState> emit) {
    return event.map(load: (load) async {
      emit(const AdDetailsState.loading());

      final result = await _adsDetailsUseCase(ModelID(id: load.id));
      return emit(result.when(
          failure: (failure) => failure!.maybeMap(
              orElse: () => const AdDetailsState.error(
                  error: ErrorState.other(message: "")),
              network: (message) => AdDetailsState.error(
                  error: ErrorState.networkError(message: message.message))),
          success: (success) => AdDetailsState.adDetailsLoaded(ad: success!)));
    });
  }
}
