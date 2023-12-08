import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../core/paginated/notificaton_paginated/notification_paginated.dart';

part 'notifications_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class NotificationsRemoteDataSource {
  factory NotificationsRemoteDataSource(Dio dio, {String baseUrl}) =
      _NotificationsRemoteDataSource;

  @GET('/seller/notification')
  Future<HttpResponse<NotificationPaginated>> getNotification({
    @Queries() required Map<String, dynamic> queries,
  });
}

FutureOr<NotificationPaginated> deserializeNotificationPaginated(
        Map<String, dynamic> json) =>
    NotificationPaginated.fromJson(json);
