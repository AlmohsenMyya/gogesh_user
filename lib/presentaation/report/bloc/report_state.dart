part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _loading;

  const factory ReportState.succes(String? msg) = _succes;
  const factory ReportState.error(String? error) = _error;
}
