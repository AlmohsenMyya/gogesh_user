part of 'seller_info_bloc.dart';

@freezed
class SellerInfoEvent with _$SellerInfoEvent {
  const factory SellerInfoEvent.load({required int sellerId}) = _Load;
}
