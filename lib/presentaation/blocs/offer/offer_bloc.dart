import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/meta.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../app/locator.dart';
import '../../../core/use_case/use_case.dart';
import '../../../domain/entities/offer/offer_entity.dart';
import '../../../domain/usecases/location/determine_location_use_case.dart';
import '../../../domain/usecases/offer/fetch_favorite_offers_use_case.dart';
import '../../../domain/usecases/offer/fetch_offers_use_case.dart';
import '../../../domain/usecases/offer/fetch_requested_offers.dart';
import '../../../domain/usecases/offer/get_offer_details.dart';

part 'offer_event.dart';

part 'offer_state.dart';

part 'offer_bloc.freezed.dart';

class OfferBloc extends Bloc<OfferEvent, OfferState> {
  OfferBloc(this._fetchOffersUseCase, this._offerDetailsUseCase,
      this._favoriteOffersUseCase, this._fetchRequestedOffers)
      : super(const OfferState.loading()) {
    on<OfferEvent>(_mapEventToState, transformer: droppable());
  }

  final data = <Offer>[];

  final FetchOffersUseCase _fetchOffersUseCase;
  final GetOfferDetailsUseCase _offerDetailsUseCase;
  final FetchFavoriteOffersUseCase _favoriteOffersUseCase;
  final FetchRequestedOffers _fetchRequestedOffers;

  FutureOr _mapEventToState(OfferEvent event, Emitter<OfferState> emit) {
    return event.map(
      load: (load) async {
        if (load.filter.page! == 1) {
          data.clear();
        }
        emit(const OfferState.loading());
        final result = await _fetchOffersUseCase(load.filter);
        return emit(result.when(failure: (failure) {
          return failure!.maybeMap(
              orElse: () =>
                  const OfferState.error(error: ErrorState.other(message: "")),
              network: (message) => OfferState.error(
                  error: ErrorState.networkError(message: message.message)));
        }, success: (success) {
          if (success!.data.isEmpty) {
            return const OfferState.loaded(offers: []);
          }
          data.addAll(success.data);

          if (success.meta.currentPage! == success.meta.lastPage) {
            return OfferState.lastPageLoaded(
                offers: success.data, dataCount: success.meta.total);
          }
          return OfferState.loaded(
              offers: success.data,
              pageKey: success.meta.nextPage ?? success.meta.currentPage! + 1,
              dataCount: success.meta.total);
        }));
      },
      offerDetails: (_OfferDetails value) async {
        emit(const OfferState.loading());

        final result = await _offerDetailsUseCase(ModelID(id: value.id));
        return emit(result.when(
            failure: (failure) => failure!.maybeMap(
                orElse: () => const OfferState.error(
                    error: ErrorState.other(message: "")),
                network: (message) => OfferState.error(
                    error: ErrorState.networkError(message: message.message))),
            success: (success) => OfferState.offerDetailsLoaded(
                offer: success!.data, relatedResults: success.relatedResults)));
      },
      loadFavorite: (_LoadFavoriteOffers value) async {
        emit(const OfferState.loading());
        final result = await _favoriteOffersUseCase(value.filter);
        return emit(result.when(failure: (failure) {
          return failure!.maybeMap(
              orElse: () =>
                  const OfferState.error(error: ErrorState.other(message: "")),
              network: (message) => OfferState.error(
                  error: ErrorState.networkError(message: message.message)));
        }, success: (success) {
          if (success!.data.isEmpty) {
            return const OfferState.loaded(offers: []);
          }

          if (success.meta.currentPage! == success.meta.lastPage) {
            return OfferState.lastPageLoaded(offers: success.data);
          }
          return OfferState.loaded(
              offers: success.data,
              pageKey: success.meta.nextPage ?? success.meta.currentPage! + 1);
        }));
      },
      loadRequestedOffers: (value) async {
        emit(const OfferState.loading());
        final result = await _fetchRequestedOffers(value.filter);
        return emit(result.when(failure: (failure) {
          return failure!.maybeMap(
              orElse: () =>
                  const OfferState.error(error: ErrorState.other(message: "")),
              network: (message) => OfferState.error(
                  error: ErrorState.networkError(message: message.message)));
        }, success: (success) {
          if (success!.data.isEmpty) {
            return const OfferState.loaded(offers: []);
          }

          if (success.meta.currentPage! == success.meta.lastPage) {
            return OfferState.lastPageLoaded(
                offers: success.data, dataCount: success.meta.total);
          }
          return OfferState.loaded(
              offers: success.data,
              pageKey: success.meta.nextPage ?? success.meta.currentPage! + 1,
              dataCount: success.meta.total);
        }));
      },
    );
  }
}
