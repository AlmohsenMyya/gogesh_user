part of 'city_bloc.dart';

@freezed
class CityEvent with _$CityEvent {
 const factory CityEvent.load({required int id}) = _Load;
  const factory CityEvent.loadMore() = _LoadMore;
  const factory CityEvent.refresh() = _Refresh;
  const factory CityEvent.changeItem({required Datacity item}) = _ChangeItem;}