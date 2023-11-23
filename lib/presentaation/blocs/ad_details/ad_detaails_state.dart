part of 'ad_detaails_bloc.dart';

@freezed
class AdDetailsState with _$AdDetailsState {
  const factory AdDetailsState.loading() = _Loading;
  const factory AdDetailsState.error({required ErrorState error}) = _Error;

  const factory AdDetailsState.adDetailsLoaded(
      {required Ad ad,}) = _AdDetailsLoaded;
}
