import 'dart:async';

import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/use_case/use_case.dart';
import '../../../domain/entities/locationEntity/city_entity.dart';
import '../../../domain/entities/locationEntity/country_entity.dart';
import '../../../domain/usecases/location/get_country_use_case.dart';

part 'country_event.dart';
part 'country_state.dart';
part 'country_bloc.freezed.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountryUseCase getCountryUseCase;
  CountryBloc({required this.getCountryUseCase})
      : super(const CountryState.initial()) {
    on<CountryEvent>(_mapEventToState);
  }

  var data = <Datacountry>[];
  // ServiceType? value;
  FutureOr<dynamic> _mapEventToState(
      CountryEvent event, Emitter<CountryState> emit) async {
    return event.map(
        load: (e) async {
          emit(const CountryState.loading());
          var result = await getCountryUseCase(
            Filter(q: e.query),
          );

          return emit(result.when(
              failure: (error) => const CountryState.initial(),
              success: (s) {
                data = s!;
                return CountryState.dataLoaded(
                  data: s,
                );
              }));
        },
        changeItem: (e) =>
            emit(CountryState.itemChanged(item: e.item, data: data)));
  }
}
