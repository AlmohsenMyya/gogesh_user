part of 'ads_screen_bloc.dart';

@freezed
class AdsScreenEvent with _$AdsScreenEvent {
  const factory AdsScreenEvent.load({required Filter filter}) = _Load;
  const factory AdsScreenEvent.offerDetails({required int id}) = _AdDetails;
}
