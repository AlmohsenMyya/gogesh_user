import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../data/local_data_source/currencies.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';

class DetermineLocationUseCase extends UseCase<Position, NoParams> {
  final LocalDataSource _localDataSource;

  DetermineLocationUseCase(this._localDataSource);

  @override
  Future<Result<Position, Exception>> call(NoParams params) async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return const Result.failure(
          error: Exceptions.other('Location services are disabled.'));
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const Result.failure(
            error: Exceptions.other('Location permissions are denied'));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return const Result.failure(
          error: Exceptions.other(
              'Location permissions are permanently denied, we cannot request permissions.'));
    }
    final location = await Geolocator.getCurrentPosition();

    return Result.success(data: location);
  }

  Future<Result<LocationData, Exceptions>> getLocationData() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return const Result.failure(
          error: Exceptions.locationServiceNotEnabled(
              'Location services are disabled.'));
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const Result.failure(
            error: Exceptions.other('Location permissions are denied'));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return const Result.failure(
          error: Exceptions.other(
              'Location permissions are permanently denied, we cannot request permissions.'));
    }

    final location = await Geolocator.getCurrentPosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(location.latitude, location.longitude);

    final country = placemarks.first.country;
    final region = ((placemarks.first.subAdministrativeArea?.isEmpty) ?? true)
        ? placemarks.first.administrativeArea
        : placemarks.first.subAdministrativeArea;
    final city = placemarks.first.locality;
    await _localDataSource.setValue(
        LocalDataKeys.currency,
        await _localDataSource.setValue(
            LocalDataKeys.currency,
            Currency.fromJson(currencies.firstWhere(
                (element) =>
                    element["countryCode"] ==
                    (placemarks.first.isoCountryCode ?? "US"), orElse: () {
              return {
                'countryCode': 'US',
                'currencyCode': 'USD',
                'flag': '🇺🇸',
                'currencyName': {
                  'en': 'United States Dollar',
                  'ar': 'دولار الولايات المتحدة'
                }
              };
            }))));

    return Result.success(
        data: LocationData(country ?? "", city ?? "", region ?? ""));
  }
}

class LocationData extends Equatable {
  final String country;
  final String city;
  final String region;

  const LocationData(this.country, this.city, this.region);

  @override
  List<Object?> get props => [country, city, region];
}
