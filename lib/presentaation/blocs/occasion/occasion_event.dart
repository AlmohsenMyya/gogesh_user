part of 'occasion_bloc.dart';

@freezed
class OccasionEvent with _$OccasionEvent {
  const factory OccasionEvent.load({required int page, String? searchKey}) =
      _Load;
  const factory OccasionEvent.changeItem({required SeasonAndOccasion item}) =
      _ChangeItem;
}
