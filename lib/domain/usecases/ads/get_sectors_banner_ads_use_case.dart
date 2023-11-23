import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/paginated/ads/ads_paginated.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../repositories/ads_repository.dart';

class GetSectorsBannerAdsUseCase implements UseCase<AdsPaginated, Filter> {
  final AdRepository _repository;

  GetSectorsBannerAdsUseCase(this._repository);

  @override
  Future<Result<AdsPaginated, Exceptions>> call(Filter params) async {
    return _repository.fetchSectorsBannerAds(params.toJson());
  }
}
