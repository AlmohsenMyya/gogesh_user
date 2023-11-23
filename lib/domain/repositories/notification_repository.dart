import '../../core/excptions/exceptions.dart';
import '../../core/paginated/notificaton_paginated/notification_paginated.dart';
import '../../core/result/result.dart';

abstract class NotificationRepository {
  Future<Result<NotificationPaginated, Exceptions>> fetchNotification(
      Map<String, dynamic> filter);
}
