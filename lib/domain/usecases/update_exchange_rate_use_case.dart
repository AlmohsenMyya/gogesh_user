import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:exchange_rate/exchange_rate.dart';

import '../../core/excptions/exceptions.dart';
import '../../core/result/result.dart';
import '../../core/use_case/use_case.dart';
import '../../data/local_data_source/local_data_keys.dart';

class DetermineCurrencyExchangeRateUseCase implements UseCase<void, Filter> {
  final LocalDataSource _localDataSource;

  DetermineCurrencyExchangeRateUseCase(
      {required LocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  @override
  Future<Result<void, Exceptions>> call(Filter params) async {
    try {
      final rate = await ExchangeRate.getRate(to: params.type ?? "");
      await _localDataSource.setValue(LocalDataKeys.exchangeRate, rate);
      return const Result.success();
    } catch (e) {
      return const Result.failure();
    }
  }
}
