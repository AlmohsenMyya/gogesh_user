import 'dart:async';

import 'package:commercial_directory_users/domain/enums/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_entity.freezed.dart';
part 'ad_entity.g.dart';

FutureOr<Ad> deserializeAd(Map<String, dynamic> json) => Ad.fromJson(json);

@freezed
class Ad with _$Ad {
  const factory Ad({
    required int id,
    @JsonKey(name: "seller_id") required int? sellerId,
    required String title,
    required String? images,
    required String? seller,
    required String? poster,
    @JsonKey(name: "type_commercialActivity") required ServiceTypeEnum? type,
    @JsonKey(name: "created_at") required DateTime? date,
    required String description,
    required double price,
    required int? views,
    String? url,
  }) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}
