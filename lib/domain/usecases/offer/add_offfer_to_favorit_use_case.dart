import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';

import '../../../core/utils/model_id.dart';
import '../../repositories/offer_repository.dart';

class AddOfferToFavoriteUseCase implements UseCase<void, ModelID> {
  final OfferRepository _repository;

  AddOfferToFavoriteUseCase(this._repository);
  @override
  Future<Result<void, Exception>> call(ModelID params) {
    return _repository.addToFavorite(params.id);
  }
}
