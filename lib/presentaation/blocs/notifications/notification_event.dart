part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.loadNotification({required Filter filter}) = _loadNotification;
  
}