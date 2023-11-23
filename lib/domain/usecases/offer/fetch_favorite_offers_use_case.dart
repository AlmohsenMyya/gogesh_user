import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/paginated/offers/offer_paginated.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../entities/offer/offer_entity.dart';
import '../../repositories/offer_repository.dart';

class FetchFavoriteOffersUseCase implements UseCase<OfferPaginated, Filter> {
  final OfferRepository _repository;

  FetchFavoriteOffersUseCase(this._repository);

  @override
  Future<Result<OfferPaginated, Exceptions>> call(Filter params) {
    return _repository.fetchFavoriteOffers(params.page ?? 1);
  }
}
