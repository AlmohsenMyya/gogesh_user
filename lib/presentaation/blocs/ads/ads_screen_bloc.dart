import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/domain/entities/ad/ad_entity.dart';
import 'package:commercial_directory_users/domain/usecases/ads/fetch_ads_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/fillters/filter.dart';
import '../sector/sector_bloc.dart';

part 'ads_screen_event.dart';

part 'ads_screen_state.dart';

part 'ads_screen_bloc.freezed.dart';

class AdsScreenBloc extends Bloc<AdsScreenEvent, AdsScreenState> {
  AdsScreenBloc(this._adsUseCase) : super(const AdsScreenState.initial()) {
    on<AdsScreenEvent>(_mapEventToState, transformer: droppable());
  }

  final PagingController<int, Ad> pagingController =
      PagingController(firstPageKey: 1);
  final FetchAdsUseCase _adsUseCase;

  FutureOr _mapEventToState(
      AdsScreenEvent event, Emitter<AdsScreenState> emit) {
    return event.map(
        load: (load) async {
          emit(const AdsScreenState.loading());
          final result = await _adsUseCase(load.filter);
          return emit(result.when(failure: (failure) {
            return failure!.maybeMap(
                orElse: () => const AdsScreenState.error(
                    error: ErrorState.other(message: "something_went_wrong")),
                network: (message) => AdsScreenState.error(
                    error: ErrorState.networkError(message: message.message)));
          }, success: (success) {
            if (success!.data.isEmpty) {
              return const AdsScreenState.dataLoaded(data: [], pageKey: 0);
            }

            if (success.meta.currentPage! == success.meta.lastPage) {
              return AdsScreenState.lastPageLoaded(
                data: success.data,
              );
            }
            return AdsScreenState.dataLoaded(
                data: success.data,
                pageKey:
                    success.meta.nextPage ?? success.meta.currentPage! + 1);
          }));
        },
        offerDetails: (offerDetails) async {});
  }
}
