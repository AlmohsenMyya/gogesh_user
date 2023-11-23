import 'dart:io';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../../data/local_data_source/db_provider.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../data/remote_data_source/auth_data_source/auth_data_source.dart';
import '../../entities/locationEntity/city_entity.dart';

class GetCityUseCase extends UseCase<List<Datacity>, Filter> {
  final DBProvider dbProvider;

  GetCityUseCase({required this.dbProvider});

  @override
  Future<Result<List<Datacity>, Exceptions>> call(Filter params) async {
    try {
      final result =
          await dbProvider.getCities(regionId: params.id ?? 1, name: params.q);
      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
