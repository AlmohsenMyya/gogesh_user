part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.addEventManually() = _AddEventManually;
  const factory LocationEvent.gps() = _GPS;
  const factory LocationEvent.pickLocation() = _PickLocation;
}
