part of 'sector_bloc.dart';

@freezed
class SectorEvent with _$SectorEvent {
  const factory SectorEvent.load({required Filter filter}) = _Load;
  const factory SectorEvent.changeItem({required Sector item}) = _ChangeItem;
}
