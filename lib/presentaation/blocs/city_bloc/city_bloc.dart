import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/model_id.dart';
import '../../../domain/entities/locationEntity/city_entity.dart';
import '../../../domain/usecases/location/get_city_use_case.dart';

part 'city_event.dart';
part 'city_state.dart';
part 'city_bloc.freezed.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final GetCityUseCase getCityUseCase;

  CityBloc({required this.getCityUseCase}) : super(const CityState.initial()) {
    on<CityEvent>(_mapEventToState);
  }

  var data = <Datacity>[];
  //Sector? value;

  FutureOr<dynamic> _mapEventToState(
      CityEvent event, Emitter<CityState> emit) async {
    return event.map(
        load: (e) async {
          emit(const CityState.loading());
          var result = await getCityUseCase(
            Filter(id: e.id),
          );

          return emit(result.when(
              failure: (error) => const CityState.initial(),
              success: (s) {
                data = s ?? [];

                return CityState.dataLoaded(data: s ?? []);
              }));
        },
        changeItem: (e) =>
            emit(CityState.itemChanged(item: e.item, data: data)),
        loadMore: (_LoadMore value) {},
        refresh: (_Refresh value) {});
  }
}
