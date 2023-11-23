part of 'region_bloc.dart';

@freezed
class RegionState with _$RegionState {
 const factory RegionState.dataLoaded({required List<DataRegion> data}) =
      _DataLoaded;
  const factory RegionState.initial() = _Initial;
  const factory RegionState.loading() = _Loading;
  const factory RegionState.error() = _Error;
  const factory RegionState.empty() = _Empty;
  const factory RegionState.networkError() = _NetworkError;
  const factory RegionState.loadingMore({required List<DataRegion> data}) =
      _LoadingMore;
  const factory RegionState.itemChanged(
      {required DataRegion item, required List <DataRegion> data}) = _ItemChanged;}
