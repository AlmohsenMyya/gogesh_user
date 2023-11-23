import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/paginated/ads/ads_paginated.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../core/utils/model_id.dart';
import '../../repositories/ads_repository.dart';

class GetSectorBannerAdsUseCase implements UseCase<AdsPaginated, Filter> {
  final AdRepository _repository;

  GetSectorBannerAdsUseCase(this._repository);

  @override
  Future<Result<AdsPaginated, Exceptions>> call(Filter params) async {
    return _repository.fetchSectorBannerAds(params.toJson());
  }
}
