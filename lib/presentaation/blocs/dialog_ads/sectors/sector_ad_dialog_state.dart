part of 'sector_ad_dialog_cubit.dart';

@freezed
class SectorAdDialogState with _$SectorAdDialogState {
  const factory SectorAdDialogState.initial() = _Initial;
  const factory SectorAdDialogState.sectorAdLoaded(
      {required Ad ad, required int random}) = _SectorAdLoaded;

  const factory SectorAdDialogState.sectorLocalAd(
      {required String ad, required int random}) = _SectorLocalAdLoaded;
}
