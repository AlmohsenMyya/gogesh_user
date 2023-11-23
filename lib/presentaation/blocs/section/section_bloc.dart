import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_section_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/fillters/filter.dart';
import '../../../domain/entities/service/section.dart';

part 'section_event.dart';
part 'section_state.dart';
part 'section_bloc.freezed.dart';

class SectionBloc extends Bloc<SectionEvent, SectionState> {
  SectionBloc(this._sectionUseCase) : super(const SectionState.initial()) {
    on<SectionEvent>(_mapEventToState);
  }

  final FetchSectionUseCase _sectionUseCase;

  FutureOr _mapEventToState(SectionEvent event, Emitter<SectionState> emit) {
    return event.map(load: (load) async {
      final result = await _sectionUseCase(
          Filter(page: load.page, q: load.searchKey, id: load.serviceId));
      return emit(result.when(
          failure: (failure) => const SectionState.initial(),
          success: (success) =>
              SectionState.dataLoaded(data: SectionsData(success!))));
    });
  }
}
