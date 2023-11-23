import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/model_id.dart';
import '../../../domain/entities/locationEntity/region_entity.dart';
import '../../../domain/usecases/location/gat_region_use_case.dart';

part 'region_event.dart';
part 'region_state.dart';
part 'region_bloc.freezed.dart';

class RegionBloc extends Bloc<RegionEvent, RegionState> {
  final GetRegionUseCase getRegionUseCase;

  RegionBloc({required this.getRegionUseCase})
      : super(const RegionState.initial()) {
    on<RegionEvent>(_mapEventToState);
  }

  var data = <DataRegion>[];
  //Sector? value;

  FutureOr<dynamic> _mapEventToState(
      RegionEvent event, Emitter<RegionState> emit) async {
    return event.map(
      load: (e) async {
        emit(const RegionState.loading());
        var result = await getRegionUseCase(Filter(id: e.id));

        return emit(result.when(
            failure: (error) => const RegionState.initial(),
            success: (s) {
              data = s!;

              return RegionState.dataLoaded(data: s);
            }));
      },
      changeItem: (e) =>
          emit(RegionState.itemChanged(item: e.item, data: data)),
    );
  }
}
