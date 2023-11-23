import 'dart:async';

import 'package:commercial_directory_users/domain/entities/ad/ad_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_response.freezed.dart';
part 'ad_response.g.dart';

FutureOr<AdResponse> deserializeAdResponse(Map<String, dynamic> json) =>
    AdResponse.fromJson(json);

@freezed
class AdResponse with _$AdResponse {
  const factory AdResponse({
    required Ad data,
  }) = _AdResponse;

  factory AdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdResponseFromJson(json);
}
