part of 'occasion_bloc.dart';

@freezed
class OccasionState with _$OccasionState {
  const factory OccasionState.dataLoaded({required OccasionsData data}) =
      _DataLoaded;
  const factory OccasionState.initial() = _Initial;
  const factory OccasionState.error() = _Error;
  const factory OccasionState.empty() = _Empty;
  const factory OccasionState.itemChanged(
      {required SeasonAndOccasion item,
      required List<SeasonAndOccasion> data}) = _ItemChanged;
}

class OccasionsData {
  final List<SeasonAndOccasion> data;

  OccasionsData({required this.data});
}
