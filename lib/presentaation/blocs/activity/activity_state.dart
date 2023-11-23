part of 'activity_bloc.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.dataLoaded({required ActivityData data}) =
      _DataLoaded;
  const factory ActivityState.error() = _Error;
  const factory ActivityState.empty() = _Empty;
  const factory ActivityState.initial() = _Initial;
  const factory ActivityState.itemChanged(
      {required Activity item, required List<Activity> data}) = _ItemChanged;
}

class ActivityData {
  final List<Activity> data;

  ActivityData({required this.data});
}
