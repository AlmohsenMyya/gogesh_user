import 'dart:async';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/locator.dart' as di;
import 'app/app.dart';
import 'core/bootstrap/bootstrap.dart';
import 'package:commercial_directory_users/app/pusher.dart' as pusher;
import 'core/notification/notification.dart';
import 'firebase_options.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await di.init();
  await NotificationSetUp.init();
  await pusher.init();
  bootstrap(const MyApp());
}
