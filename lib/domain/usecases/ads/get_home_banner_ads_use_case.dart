import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/ads/ads_paginated.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../repositories/ads_repository.dart';

class GetHomeBannerAdsUseCase implements UseCase<AdsPaginated, Filter> {
  final AdRepository _repository;

  GetHomeBannerAdsUseCase(this._repository);

  @override
  Future<Result<AdsPaginated, Exceptions>> call(Filter params) async {
    return _repository.fetchHomeBannerAds(params.toJson());
  }
}
