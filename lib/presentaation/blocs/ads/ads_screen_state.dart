part of 'ads_screen_bloc.dart';

@freezed
class AdsScreenState with _$AdsScreenState {
  const factory AdsScreenState.dataLoaded(
      {required List<Ad> data, required int pageKey}) = _DataLoaded;
  const factory AdsScreenState.lastPageLoaded({required List<Ad> data}) =
      _LastPageLoaded;

  const factory AdsScreenState.loading() = _Loading;
  const factory AdsScreenState.initial() = _Initial;
  const factory AdsScreenState.error({required ErrorState error}) = _Error;
  const factory AdsScreenState.empty() = _Empty;
}
