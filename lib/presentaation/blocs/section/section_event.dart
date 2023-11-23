part of 'section_bloc.dart';

@freezed
class SectionEvent with _$SectionEvent {
  const factory SectionEvent.load(
      {required int serviceId, required int page, String? searchKey}) = _Load;
}
