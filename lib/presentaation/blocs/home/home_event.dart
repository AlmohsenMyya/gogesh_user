part of 'home_bloc.dart';

@freezed
class SlidAdsEvent with _$SlidAdsEvent {
  const factory SlidAdsEvent.loadAds({Filter? filter}) = _LoadAds;
  const factory SlidAdsEvent.loadMore({required int page}) = _LoadMoreAds;
}
