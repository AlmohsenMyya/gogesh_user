import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:exchange_rate/exchange_rate.dart';
import 'package:geocoding/geocoding.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/local_data_source/currencies.dart';
import '../location/determine_location_use_case.dart';

class DetermineCurrencyUseCase implements UseCase<void, NoParams> {
  DetermineCurrencyUseCase(this._locationUseCase, this._localDataSource);
  final DetermineLocationUseCase _locationUseCase;
  final LocalDataSource _localDataSource;
  @override
  Future<Result<void, Exceptions>> call(NoParams params) async {
    if (_localDataSource.getValue(LocalDataKeys.currency) == null) {
      final location = await _locationUseCase(NoParams());
      location.when(failure: (_) async {
        await _localDataSource.setValue(
            LocalDataKeys.currency,
            Currency.fromJson({
              'countryCode': 'US',
              'currencyCode': 'USD',
              'flag': '🇺🇸',
              'currencyName': {
                'en': 'United States Dollar',
                'ar': 'دولار الولايات المتحدة'
              }
            }));
      }, success: (data) async {
        List<Placemark> placemarks =
            await placemarkFromCoordinates(data!.latitude, data.longitude);
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
            })));
      });
      final rate = await ExchangeRate.getRate(
          to: _localDataSource
                  .getValue<Currency>(LocalDataKeys.currency)
                  ?.currencyCode ??
              "USD");
      await _localDataSource.setValue(LocalDataKeys.exchangeRate, rate);
      return const Result.success();
    }
    final rate = await ExchangeRate.getRate(
        to: _localDataSource
            .getValue<Currency>(LocalDataKeys.currency)!
            .currencyCode);
    await _localDataSource.setValue(LocalDataKeys.exchangeRate, rate);
    return const Result.success();
  }
}
