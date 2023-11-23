part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.selectCurrency({required String currency}) =
      _SelectCurrency;
  const factory AppEvent.selectTheme({required String currency}) = _SelectTheme;
}
