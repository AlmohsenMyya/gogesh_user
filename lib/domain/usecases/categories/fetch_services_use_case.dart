import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/local_data_source/db_provider.dart';
import '../../entities/service/service_entity.dart';

class FetchServicesUseCase implements UseCase<List<ServiceEntity>, Filter> {
  final DBProvider dbProvider;

  FetchServicesUseCase(this.dbProvider);

  @override
  Future<Result<List<ServiceEntity>, Exceptions>> call(Filter params) async {
    try {
      final result = await dbProvider.getServices(
        name: params.q,
        page: params.page ?? 1,
      );
      return Result.success(data: result);
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
