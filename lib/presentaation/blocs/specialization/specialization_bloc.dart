import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/domain/entities/specialization_entity.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_specializations_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/model_id.dart';

part 'specialization_event.dart';
part 'specialization_state.dart';
part 'specialization_bloc.freezed.dart';

class SpecializationBloc
    extends Bloc<SpecializationEvent, SpecializationState> {
  Specialization? value;
  SpecializationBloc(this._specializationsUseCase)
      : super(const SpecializationState.initial()) {
    on<SpecializationEvent>(_mapEventToState);
  }
  var data = <Specialization>[];
  final FetchSpecializationsUseCase _specializationsUseCase;

  FutureOr _mapEventToState(
      SpecializationEvent event, Emitter<SpecializationState> emit) {
    return event.map(load: (load) async {
      emit(const SpecializationState.initial());
      final result = await _specializationsUseCase(
          Filter(id: load.id, page: load.page, q: load.searchKey));
      return emit(result.when(
          failure: (failure) => SpecializationState.dataLoaded(
              data: SpecializationsData(data: [])),
          success: (success) {
            data = success!;
            return SpecializationState.dataLoaded(
                data: SpecializationsData(data: success));
          }));
    }, changeItem: (e) {
      value = e.item;
      return emit(SpecializationState.itemChanged(item: e.item, data: data));
    });
  }
}
