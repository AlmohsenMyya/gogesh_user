part of 'seller_info_bloc.dart';

@freezed
class SellerInfoState with _$SellerInfoState {
  const factory SellerInfoState.loading() = _Loading;
  const factory SellerInfoState.error({required ErrorState errorState}) =
      _Error;
  const factory SellerInfoState.loaded({required SellerProfile sellerProfile}) =
      _Loaded;
}
