import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/service/service_entity.dart';
import '../../../domain/usecases/categories/fetch_services_use_case.dart';

part 'service_event.dart';

part 'service_state.dart';

part 'service_bloc.freezed.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc(this._servicesUseCase) : super(const ServiceState.initial()) {
    on<ServiceEvent>(_mapEventToState);
  }

  final FetchServicesUseCase _servicesUseCase;

  FutureOr _mapEventToState(ServiceEvent event, Emitter<ServiceState> emit) {
    return event.map(load: (load) async {
      final result =
          await _servicesUseCase(Filter(page: load.page, q: load.searchKey));
      return emit(result.when(
          failure: (failure) => const ServiceState.initial(),
          success: (success) =>
              ServiceState.dataLoaded(data: ServicesData(success!))));
    });
  }
}
