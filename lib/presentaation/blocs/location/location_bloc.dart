import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:commercial_directory_users/domain/usecases/location/determine_location_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc(
    this._locationUseCase,
  ) : super(const LocationState.initial()) {
    on<LocationEvent>(_mapEventToState, transformer: droppable());
  }

  final DetermineLocationUseCase _locationUseCase;

  FutureOr _mapEventToState(LocationEvent event, Emitter<LocationState> emit) {
    return event.map(addEventManually: (addEventManually) {
      return emit(const LocationState.manually());
    }, gps: (gps) async {
      emit(const LocationState.loadingLocation());
      final result = await _locationUseCase.getLocationData();
      return result.when(failure: (failure) {
        emit(const LocationState.initial());
        return emit(failure!.maybeWhen(
            orElse: () =>
                const LocationState.error("can't_determine_your_location"),
            locationServiceNotEnabled: (_) =>
                const LocationState.serviceUnEnabled()));
      }, success: (data) async {
        return emit(LocationState.locationFounded(
            country: data!.country, city: data.city, region: data.region));
      });
    }, pickLocation: (_PickLocation value) {
      return emit(const LocationState.locationPicked());
    });
  }
}
