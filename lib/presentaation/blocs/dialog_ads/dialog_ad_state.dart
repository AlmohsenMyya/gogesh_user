part of 'dialog_ad_bloc.dart';

@freezed
class DialogAdState with _$DialogAdState {
  const factory DialogAdState.initial() = _Initial;
  const factory DialogAdState.homeAdLoaded({required Ad ad}) = _HomeAdLoaded;
  const factory DialogAdState.homeLocalAd(
      {required String ad, required int random}) = _HomeLocalAdLoaded;
}
