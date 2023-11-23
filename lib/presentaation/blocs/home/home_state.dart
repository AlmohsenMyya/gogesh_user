part of 'home_bloc.dart';

@freezed
class SlidAdsState with _$SlidAdsState {
  const factory SlidAdsState.adsLoaded({required List<Ad> data}) = _AdsLoades;
  const factory SlidAdsState.adsLoading() = _AdsLoading;
  const factory SlidAdsState.empty() = _Empty;
  const factory SlidAdsState.loadingMore() = _LoadingMore;
  const factory SlidAdsState.loadingMoreError() = _LoadingMoreError;
  const factory SlidAdsState.error({required ErrorState errorState}) = _Error;
}
