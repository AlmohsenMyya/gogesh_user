part of 'ad_detaails_bloc.dart';

@freezed
class AdDetailsEvent with _$AdDetailsEvent {
  const factory AdDetailsEvent.load({required int id}) = _Loaded;
}
