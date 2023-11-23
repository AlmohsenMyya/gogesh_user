import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/ads_repository.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/utils/model_id.dart';
import '../../entities/ad/ad_entity.dart';

class GetAdsDetailsUseCase extends UseCase<Ad, ModelID> {
  final AdRepository _repository;

  GetAdsDetailsUseCase(this._repository);

  @override
  Future<Result<Ad, Exceptions>> call(ModelID params) {
    return _repository.adDetails(params.id);
  }
}
