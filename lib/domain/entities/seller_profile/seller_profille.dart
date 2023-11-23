import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_profille.freezed.dart';
part 'seller_profille.g.dart';

@Freezed(toJson: false)
class SellerProfile with _$SellerProfile {
  const factory SellerProfile({
    required int id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String? description,
    required String email,
    required String? phone,
    required String? country,
    required String? region,
    required String? city,
    required String? image,
    @JsonKey(name: "commercial_activity") required String? commercialActivity,
    @JsonKey(name: "commercial_activity_address") required String? address,
    required List<String>? services,
    required List<String>? sections,
    required bool active,
    @JsonKey(name: "commercial_activity_social")
    required List<SocialAccount>? socialAccounts,
    @JsonKey(name: "work_days") required List<WorkDays>? workDays,
  }) = _SellerProfile;

  factory SellerProfile.fromJson(Map<String, dynamic> json) =>
      _$SellerProfileFromJson(json);
}

class SocialAccount {
  final String name;
  final String url;
  final String type;

  SocialAccount({required this.name, required this.url, required this.type});

  factory SocialAccount.fromJson(Map<String, dynamic> json) {
    return SocialAccount(
        name: json["name"], url: json["url"], type: json["type"]);
  }
}

class WorkDays {
  final int day;
  final String from;
  final String name;
  final String to;

  WorkDays({
    required this.day,
    required this.from,
    required this.name,
    required this.to,
  });

  factory WorkDays.fromJson(Map<String, dynamic> json) {
    return WorkDays(
      day: json["day"],
      from: json["from"],
      to: json["to"],
      name: json['name'],
    );
  }
}
