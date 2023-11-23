import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../entities/seller_profile/seller_profille.dart';
import '../../repositories/seller_repository.dart';

class GetSellerProfileUseCase implements UseCase<SellerProfile, ModelID> {
  final SellerRepository _repository;

  GetSellerProfileUseCase(this._repository);

  @override
  Future<Result<SellerProfile, Exceptions>> call(ModelID params) {
    return _repository.getSellerProfile(params.id);
  }
}
