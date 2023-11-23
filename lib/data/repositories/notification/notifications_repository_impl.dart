import 'package:commercial_directory_users/data/repositories/offer_repository.dart';
import 'package:dio/dio.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/paginated/notificaton_paginated/notification_paginated.dart';
import '../../../core/result/result.dart';
import '../../../domain/repositories/notification_repository.dart';
import '../../remote_data_source/notifications_data_source/notifications_data_source.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationsRemoteDataSource remoteDataSource;
  NotificationRepositoryImpl(
    this.remoteDataSource,
  );

  @override
  Future<Result<NotificationPaginated, Exceptions>> fetchNotification(
      Map<String, dynamic> filter) async {
    try {
      final res = await remoteDataSource.getNotification(
        queries: filter,
      );

      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }
}
