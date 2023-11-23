import 'dart:io';

import 'package:commercial_directory_users/core/fillters/filter.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/local_data_source/db_provider.dart';

import '../../entities/locationEntity/country_entity.dart';

class GetCountryUseCase extends UseCase<List<Datacountry>, Filter> {
  final DBProvider dbProvider;

  GetCountryUseCase({required this.dbProvider});

  @override
  Future<Result<List<Datacountry>, Exceptions>> call(Filter params) async {
    try {
      final result = await dbProvider.getCountries(name: params.q);

      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
