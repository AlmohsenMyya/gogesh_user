part of 'service_bloc.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.initial() = _Initial;
  const factory ServiceState.dataLoaded({required ServicesData data}) =
      _DataLoaded;
}

class ServicesData {
  final List<ServiceEntity> data;

  ServicesData(this.data);
}
