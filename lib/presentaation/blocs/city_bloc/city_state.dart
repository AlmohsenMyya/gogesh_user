part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
 const factory CityState.dataLoaded({required List<Datacity> data}) =
      _DataLoaded;
  const factory CityState.initial() = _Initial;
  const factory CityState.loading() = _Loading;
  const factory CityState.error() = _Error;
  const factory CityState.empty() = _Empty;
  const factory CityState.networkError() = _NetworkError;
  const factory CityState.loadingMore({required List<Datacity> data}) =
      _LoadingMore;
  const factory CityState.itemChanged(
      {required Datacity item, required List <Datacity> data}) = _ItemChanged;}
