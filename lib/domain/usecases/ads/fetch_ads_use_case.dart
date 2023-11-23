import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/ads/ads_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/ads_repository.dart';

import '../../../core/excptions/exceptions.dart';

class FetchAdsUseCase implements UseCase<AdsPaginated, Filter> {
  final AdRepository _adRepository;

  FetchAdsUseCase(this._adRepository);

  @override
  Future<Result<AdsPaginated, Exceptions>> call(Filter params) {
    return _adRepository.fetchAds(params.toJson());
  }
}
