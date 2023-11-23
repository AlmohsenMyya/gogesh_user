import 'dart:io';
import 'dart:typed_data';

import 'package:commercial_directory_users/domain/repositories/notification_repository.dart';

import '../../../app/locator.dart';
import '../../../core/excptions/exceptions.dart';
import '../../../core/fillters/filter.dart';
import '../../../core/paginated/notificaton_paginated/notification_paginated.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';

class GetNotificationUseCase extends UseCase<NotificationPaginated, Filter> {
  final NotificationRepository notificationRepository;

  GetNotificationUseCase({required this.notificationRepository});
  @override
  Future<Result<NotificationPaginated, Exceptions>> call(
    Filter params,
  ) async {
    return notificationRepository.fetchNotification(params.toJson());
  }
}
