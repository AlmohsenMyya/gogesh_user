part of 'activity_bloc.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.load({required int page, String? searchKey}) =
      _Load;
  const factory ActivityEvent.changeItem({required Activity item}) =
      _ChangeItem;
}
