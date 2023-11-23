import 'dart:developer' as developer;

extension AnonStringExtension on String? {
  String get emptyIfNull => this ?? 'Empty';
}

extension Log on Object {
  void log({String? name, StackTrace? stackTrace}) {
    developer.log(toString(), name: name ?? 'LOG', stackTrace: stackTrace);
  }
}
