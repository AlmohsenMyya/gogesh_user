import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';

import '../observers/bloc_observer.dart';

// void bootstrap(Widget app) {
//   // FlutterError.onError = (details) {
//   //   developer.log(details.exceptionAsString(), stackTrace: details.stack);
// };
//
// Bloc.observer = AppBlocObserver();

//   runApp(app);
// }
void bootstrap(Widget app) {
  // FlutterError.onError = (details) {
  //   developer.log(details.exceptionAsString(), stackTrace: details.stack);
  // };
  if (Platform.isIOS) {
    FirebaseMessaging.instance.requestPermission();
  }
  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: app),
  );
  (error, stackTrace) =>
      developer.log(error.toString(), stackTrace: stackTrace);
}
