import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../entities/ad/ad_entity.dart';
import '../../entities/sector_entity.dart';
import '../../repositories/ads_repository.dart';

class GetSectorFlashAdUseCase implements UseCase<Ad, ModelID> {
  final AdRepository _repository;

  GetSectorFlashAdUseCase(this._repository);

  @override
  Future<Result<Ad, Exceptions>> call(ModelID params) async {
    return _repository.fetchSectorFlachAds(params.id);
  }
}
