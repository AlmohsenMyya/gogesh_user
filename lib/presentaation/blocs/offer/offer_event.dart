part of 'offer_bloc.dart';

@freezed
class OfferEvent with _$OfferEvent {
  const factory OfferEvent.load({required Filter filter}) = _Load;
  const factory OfferEvent.offerDetails({required int id}) = _OfferDetails;
  const factory OfferEvent.loadRequestedOffers({required Filter filter}) =
      _LoadRequestedOffers;

  const factory OfferEvent.loadFavorite({required Filter filter}) =
      _LoadFavoriteOffers;
}
