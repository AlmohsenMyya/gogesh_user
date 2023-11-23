import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class ErrorState with _$ErrorState {
  const factory ErrorState.networkError({required String message}) =
      _networkError;
  const factory ErrorState.other({required String message}) = _other;
}
