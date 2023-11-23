part of 'sector_bloc.dart';

@Freezed(copyWith: false)
class SectorState with _$SectorState {
  const factory SectorState.dataLoaded(
      {required List<Sector> data, required int pageKey}) = _DataLoaded;
  const factory SectorState.lastPageLoaded({required List<Sector> data}) =
      _LastPageLoaded;

  const factory SectorState.loading() = _Loading;
  const factory SectorState.initial() = _Initial;
  const factory SectorState.error(ErrorState error) = _Error;
  const factory SectorState.empty() = _Empty;

  const factory SectorState.itemChanged(
      {required Sector item, required List<Sector> data}) = _ItemChanged;
}
