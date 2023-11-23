part of 'make_contact_with_seller_bloc.dart';

@freezed
class MakeContactWithSellerState with _$MakeContactWithSellerState {
  const factory MakeContactWithSellerState.initial() = _Initial;
  const factory MakeContactWithSellerState.loading({required int id}) =
      _loading;

  const factory MakeContactWithSellerState.succes(
      {required ConversationEntity conversation}) = _succes;
  const factory MakeContactWithSellerState.error(String? error) = _error;
}
