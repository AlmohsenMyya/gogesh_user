import 'package:commercial_directory_users/data/local_data_source/db_provider.dart';
import 'package:commercial_directory_users/domain/entities/service/section.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';

class FetchSectionUseCase implements UseCase<List<SectionEntity>, Filter> {
  final DBProvider dbProvider;

  FetchSectionUseCase(this.dbProvider);

  @override
  Future<Result<List<SectionEntity>, Exceptions>> call(Filter params) async {
    try {
      final result = await dbProvider.getSections(
          name: params.q, page: params.page ?? 1, serviceId: params.id ?? 1);
      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
