import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/seller_profile/seller_profille.dart';

part 'seller_profile_response.freezed.dart';
part 'seller_profile_response.g.dart';

FutureOr<SellerProfileResponse> deserializeSellerProfileResponse(
        Map<String, dynamic> json) =>
    SellerProfileResponse.fromJson(json);

@Freezed(toJson: false)
class SellerProfileResponse with _$SellerProfileResponse {
  const factory SellerProfileResponse({
    required SellerProfile data,
  }) = _SellerProfileResponse;

  factory SellerProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$SellerProfileResponseFromJson(json);
}
