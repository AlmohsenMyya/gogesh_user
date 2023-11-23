part of 'specialization_bloc.dart';

@freezed
class SpecializationEvent with _$SpecializationEvent {
  const factory SpecializationEvent.load(
      {required int id, required int page, String? searchKey}) = _Load;
  const factory SpecializationEvent.changeItem({required Specialization item}) =
      _ChangeItem;
}
