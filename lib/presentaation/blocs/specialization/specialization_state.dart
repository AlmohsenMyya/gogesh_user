part of 'specialization_bloc.dart';

@freezed
class SpecializationState with _$SpecializationState {
  const factory SpecializationState.dataLoaded(
      {required SpecializationsData data}) = _DataLoaded;
  const factory SpecializationState.initial() = _Initial;
  const factory SpecializationState.error() = _Error;
  const factory SpecializationState.empty() = _Empty;
  const factory SpecializationState.itemChanged(
      {required Specialization item,
      required List<Specialization> data}) = _ItemChanged;
}

class SpecializationsData {
  final List<Specialization> data;

  SpecializationsData({required this.data});
}
