import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/data/local_data_source/db_provider.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../entities/specialization_entity.dart';

class FetchSpecializationsUseCase
    implements UseCase<List<Specialization>, Filter> {
  final DBProvider dbProvider;

  FetchSpecializationsUseCase(this.dbProvider);

  @override
  Future<Result<List<Specialization>, Exceptions>> call(Filter params) async {
    try {
      final result = await dbProvider.getSpecialities(
        name: params.q,
        page: params.page ?? 1,
        activityId: params.id,
      );
      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
