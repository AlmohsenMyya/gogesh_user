import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/db_provider.dart';
import 'package:commercial_directory_users/domain/entities/season_entity.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';

class FetchOccasionsUseCase
    implements UseCase<List<SeasonAndOccasion>, Filter> {
  final DBProvider dbProvider;

  FetchOccasionsUseCase(this.dbProvider);

  @override
  Future<Result<List<SeasonAndOccasion>, Exceptions>> call(
      Filter params) async {
    try {
      final result =
          await dbProvider.getOccasion(name: params.q, page: params.page ?? 1);
      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
