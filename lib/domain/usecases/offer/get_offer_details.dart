import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/utils/model_id.dart';
import '../../../data/response/offer_details_response.dart';
import '../../entities/offer/offer_entity.dart';
import '../../repositories/offer_repository.dart';

class GetOfferDetailsUseCase extends UseCase<OfferDetailsResponse, ModelID> {
  final OfferRepository _repository;

  GetOfferDetailsUseCase(this._repository);

  @override
  Future<Result<OfferDetailsResponse, Exceptions>> call(ModelID params) {
    return _repository.offerDetails(params.id);
  }
}
