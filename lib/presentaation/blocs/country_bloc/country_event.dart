part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.load({String? query}) = _Load;
  const factory CountryEvent.changeItem({required Datacountry item}) =
      _ChangeItem;
}
