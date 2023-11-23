import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/offers/offer_paginated.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/offer_repository.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';

class FetchRequestedOffers implements UseCase<OfferPaginated, Filter> {
  final OfferRepository _repository;

  FetchRequestedOffers(this._repository);

  @override
  Future<Result<OfferPaginated, Exceptions>> call(params) {
    return _repository.getRequestedOffers(params.toJson());
  }
}
