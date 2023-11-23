import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../entities/ad/ad_entity.dart';
import '../../repositories/ads_repository.dart';

class GetHomeFlashAdUseCase implements UseCase<Ad, NoParams> {
  final AdRepository _repository;

  GetHomeFlashAdUseCase(this._repository);

  @override
  Future<Result<Ad, Exceptions>> call(NoParams params) async {
    return _repository.fetchHomeFlachAds();
  }
}
