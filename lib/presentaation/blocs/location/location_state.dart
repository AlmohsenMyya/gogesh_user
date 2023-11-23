part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.serviceUnEnabled() = _ServiceUnEnabled;
  const factory LocationState.loadingLocation() = _LoadingLocation;
  const factory LocationState.locationPicked() = _LocationPicked;
  const factory LocationState.error(String error) = _Error;
  const factory LocationState.locationFounded(
      {required String country,
      required String city,
      required String region}) = _LocationFounded;
  const factory LocationState.manually() = _Manually;
}
