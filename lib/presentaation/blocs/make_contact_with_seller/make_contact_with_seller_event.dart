part of 'make_contact_with_seller_bloc.dart';

@freezed
class MakeContactWithSellerEvent with _$MakeContactWithSellerEvent {
  const factory MakeContactWithSellerEvent.makeOfferContact(
      {required int offerId}) = _MakeOfferContact;

  const factory MakeContactWithSellerEvent.makeAdContact({required int adId}) =
      _MakeAdContact;
}
