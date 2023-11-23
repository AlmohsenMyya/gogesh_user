part of 'offer_bloc.dart';

@freezed
class OfferState with _$OfferState {
  const factory OfferState.loading() = _Loading;
  const factory OfferState.error({required ErrorState error}) = _Error;

  const factory OfferState.empty() = _Empty;
  const factory OfferState.offerDetailsLoaded(
      {required Offer offer,
      required List<Offer> relatedResults}) = _OfferDetailsLoaded;
  const factory OfferState.networkError() = _NetworkError;
  const factory OfferState.lastPageLoaded(
      {required List<Offer> offers, int? dataCount}) = _LastPageLoaded;
  const factory OfferState.loaded(
      {required List<Offer> offers, pageKey, int? dataCount}) = _Loaded;
}
