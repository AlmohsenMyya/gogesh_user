import 'dart:async';

import 'package:commercial_directory_users/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../activity_entity.dart';
import '../sector_entity.dart';
import '../season_entity.dart';
import '../specialization_entity.dart';

part 'offer_entity.freezed.dart';
part 'offer_entity.g.dart';

FutureOr<Offer> deserializeOffer(Map<String, dynamic> json) =>
    Offer.fromJson(json);

@unfreezed
class Offer with _$Offer {
  factory Offer({
    required int id,
    required String? title,
    required String? description,
    required String? condition,
    required String? video,
    required List<String>? images,
    required int? views,
    required ServiceTypeEnum? type,
    @DateTimeSerializer() @JsonKey(name: "created_at") required DateTime data,
    required double? price,
    required double? total,
    required bool? bold,
    @Default(false) bool fav,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

class DateTimeSerializer implements JsonConverter<DateTime, dynamic> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => DateTime.parse(timestamp);

  @override
  Map<String, dynamic> toJson(DateTime date) => {};
}
