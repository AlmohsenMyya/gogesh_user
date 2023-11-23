import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/offers/offer_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';

import '../../../core/excptions/exceptions.dart';
import '../../entities/offer/offer_entity.dart';
import '../../repositories/offer_repository.dart';

class FetchOffersUseCase implements UseCase<OfferPaginated, Filter> {
  final OfferRepository _offerRepository;

  FetchOffersUseCase(this._offerRepository);

  @override
  Future<Result<OfferPaginated, Exceptions>> call(Filter params) {
    return _offerRepository.fetchOffers(params.toJson());
  }
}
