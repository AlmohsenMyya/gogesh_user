import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/db_provider.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../entities/activity_entity.dart';

class FetchActivitiesUseCase implements UseCase<List<Activity>, Filter> {
  final DBProvider dbProvider;

  FetchActivitiesUseCase(this.dbProvider);

  @override
  Future<Result<List<Activity>, Exceptions>> call(Filter params) async {
    try {
      final result = await dbProvider.getActivities(
          name: params.q, page: params.page ?? 1);
      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
