import 'dart:async';

import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/meta.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_search_banner_ads_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_sector_banner_ads_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_sectors_banner_ads_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ad/ad_entity.dart';
import '../../../domain/usecases/ads/get_home_banner_ads_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeSlidAdsBloc extends Bloc<SlidAdsEvent, SlidAdsState> {
  HomeSlidAdsBloc(this._adsUseCase) : super(const SlidAdsState.adsLoading()) {
    on<SlidAdsEvent>(_mapEventToState);
  }

  final GetHomeBannerAdsUseCase _adsUseCase;
  Meta? meta;
  final List<Ad> data = [];

  FutureOr<dynamic> _mapEventToState(
    SlidAdsEvent event,
    Emitter<SlidAdsState> emit,
  ) {
    return event.map(loadAds: (e) async {
      final result = await _adsUseCase(Filter(page: meta?.nextPage ?? 1));
      return emit(result.when(failure: (failure) {
        return failure!.maybeMap(
            orElse: () => const SlidAdsState.error(
                errorState: ErrorState.other(message: "")),
            network: (message) => SlidAdsState.error(
                errorState: ErrorState.networkError(message: message.message)));
      }, success: (success) {
        data.clear();

        if (success!.data.isEmpty) {
          return const SlidAdsState.empty();
        }
        data.addAll(success.data);
        meta = success.meta;
        return SlidAdsState.adsLoaded(data: data.toList());
      }));
    }, loadMore: (_LoadMoreAds value) async {
      emit(const SlidAdsState.loadingMore());
      final result = await _adsUseCase(
          Filter(page: meta?.nextPage ?? meta!.currentPage! + 1));
      return emit(result.when(failure: (failure) {
        return const SlidAdsState.loadingMoreError();
      }, success: (success) {
        data.addAll(success!.data);
        meta = success.meta;
        return SlidAdsState.adsLoaded(data: data.toList());
      }));
    });
  }
}

class SectorsSlidAdsBloc extends Bloc<SlidAdsEvent, SlidAdsState> {
  SectorsSlidAdsBloc(this._adsUseCase)
      : super(const SlidAdsState.adsLoading()) {
    on<SlidAdsEvent>(_mapEventToState);
  }

  final GetSectorsBannerAdsUseCase _adsUseCase;
  Meta? meta;
  final List<Ad> data = [];

  FutureOr<dynamic> _mapEventToState(
    SlidAdsEvent event,
    Emitter<SlidAdsState> emit,
  ) {
    return event.map(loadAds: (e) async {
      final result = await _adsUseCase(Filter(page: meta?.nextPage ?? 1));
      return emit(result.when(failure: (failure) {
        return failure!.maybeMap(
            orElse: () => const SlidAdsState.error(
                errorState: ErrorState.other(message: "")),
            network: (message) => SlidAdsState.error(
                errorState: ErrorState.networkError(message: message.message)));
      }, success: (success) {
        data.clear();
        data.addAll(success!.data);
        meta = success.meta;
        return SlidAdsState.adsLoaded(data: data.toList());
      }));
    }, loadMore: (_LoadMoreAds value) async {
      emit(const SlidAdsState.loadingMore());
      final result = await _adsUseCase(
          Filter(page: meta?.nextPage ?? meta!.currentPage! + 1));
      return emit(result.when(failure: (failure) {
        return const SlidAdsState.loadingMoreError();
      }, success: (success) {
        data.addAll(success!.data);
        meta = success.meta;
        return SlidAdsState.adsLoaded(data: data.toList());
      }));
    });
  }
}

class SectorSlidAdsBloc extends Bloc<SlidAdsEvent, SlidAdsState> {
  SectorSlidAdsBloc(this._adsUseCase) : super(const SlidAdsState.adsLoading()) {
    on<SlidAdsEvent>(_mapEventToState);
  }

  final GetSectorBannerAdsUseCase _adsUseCase;
  List<Ad> data = [];

  FutureOr<dynamic> _mapEventToState(
    SlidAdsEvent event,
    Emitter<SlidAdsState> emit,
  ) {
    return event.map(loadAds: (e) async {
      if (e.filter!.page! <= 1) {
        data.clear();
      }
      final result = await _adsUseCase(e.filter!);
      return emit(result.when(failure: (failure) {
        return failure!.maybeMap(
            orElse: () => const SlidAdsState.error(
                errorState: ErrorState.other(message: "")),
            network: (message) => SlidAdsState.error(
                errorState: ErrorState.networkError(message: message.message)));
      }, success: (success) {
        data.addAll(success!.data);
        return const SlidAdsState.adsLoaded(data: []);
      }));
    }, loadMore: (_LoadMoreAds value) async {
      return emit(const SlidAdsState.loadingMore());
    });
  }

  Ad getAd(int index) {
    return data[index];
  }
}

class SearchResultAdsBloc extends Bloc<SlidAdsEvent, SlidAdsState> {
  SearchResultAdsBloc(this._adsUseCase)
      : super(const SlidAdsState.adsLoading()) {
    on<SlidAdsEvent>(_mapEventToState);
  }

  final GetSearchBannerAdsUseCase _adsUseCase;
  List<Ad> data = [];

  FutureOr<dynamic> _mapEventToState(
    SlidAdsEvent event,
    Emitter<SlidAdsState> emit,
  ) {
    return event.map(loadAds: (e) async {
      if (e.filter!.page! <= 1) {
        data.clear();
      }
      final result = await _adsUseCase(e.filter!);
      return emit(result.when(failure: (failure) {
        return failure!.maybeMap(
            orElse: () => const SlidAdsState.error(
                errorState: ErrorState.other(message: "")),
            network: (message) => SlidAdsState.error(
                errorState: ErrorState.networkError(message: message.message)));
      }, success: (success) {
        data.addAll(success!.data);
        return const SlidAdsState.adsLoaded(data: []);
      }));
    }, loadMore: (_LoadMoreAds value) async {
      return emit(const SlidAdsState.loadingMore());
    });
  }

  Ad getAd(int index) {
    return data[index];
  }
}
