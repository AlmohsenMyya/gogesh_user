part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _initial;
  
    const factory NotificationState.loading() = _Loading;
  const factory NotificationState.error(ErrorState error) = _Error;
  const factory NotificationState.empty() = _Empty;
  const factory NotificationState.networkError() = _NetworkError;
  const factory NotificationState.lastPageLoaded({required List<NotificationEntity> notification}) =
      _LastPageLoaded;
  const factory NotificationState.loaded({required List<NotificationEntity> notification, pageKey}) =
      _Loaded;

}
