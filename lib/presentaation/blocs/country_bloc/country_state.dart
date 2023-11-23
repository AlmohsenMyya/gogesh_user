part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.dataLoaded({required List<Datacountry> data}) =
      _DataLoaded;
  const factory CountryState.initial() = _Initial;
  const factory CountryState.loading() = _Loading;

  const factory CountryState.error({required String msg}) = _Error;

  const factory CountryState.itemChanged(
      {required Datacountry item,
      required List<Datacountry> data}) = _ItemChanged;
}
