import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/use_case/use_case.dart';
import '../../../domain/entities/season_entity.dart';
import '../../../domain/usecases/categories/fetch_occasions_usecase.dart';

part 'occasion_event.dart';
part 'occasion_state.dart';
part 'occasion_bloc.freezed.dart';

class SeasonAndOccasionBloc extends Bloc<OccasionEvent, OccasionState> {
  SeasonAndOccasion? value;
  SeasonAndOccasionBloc(this._occasionsUseCase)
      : super(const OccasionState.initial()) {
    on<OccasionEvent>(_mapEventToState);
  }
  var data = <SeasonAndOccasion>[];

  final FetchOccasionsUseCase _occasionsUseCase;

  FutureOr _mapEventToState(OccasionEvent event, Emitter<OccasionState> emit) {
    return event.map(load: (load) async {
      final result =
          await _occasionsUseCase(Filter(page: load.page, q: load.searchKey));
      return emit(result.when(
          failure: (failure) => const OccasionState.error(),
          success: (success) {
            if (success!.isEmpty) {
              return OccasionState.dataLoaded(data: OccasionsData(data: []));
            }
            data = success;
            return OccasionState.dataLoaded(data: OccasionsData(data: success));
          }));
    }, changeItem: (e) {
      value = e.item;
      return emit(OccasionState.itemChanged(item: e.item, data: data));
    });
  }
}
