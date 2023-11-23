part of 'section_bloc.dart';

@freezed
class SectionState with _$SectionState {
  const factory SectionState.initial() = _Initial;
  const factory SectionState.dataLoaded({required SectionsData data}) =
      _DataLoaded;
}

class SectionsData {
  final List<SectionEntity> data;

  SectionsData(this.data);
}
