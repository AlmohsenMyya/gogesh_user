import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'profile_response.freezed.dart';

part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  factory ProfileResponse({required ProfileEntity data}) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 23)
class ProfileEntity {
  const ProfileEntity(
      {required this.country,
      required this.city,
      required this.region,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.active,
      required this.createdAt,
      required this.pic,
      required this.status,
      required this.completed});
  @HiveField(0)
  final int? id;
  @HiveField(1)
  @JsonKey(name: 'first_name')
  final String? firstName;
  @HiveField(2)
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @HiveField(3)
  @JsonKey(name: "last_name")
  final String? lastName;
  @HiveField(4)
  final String? email;
  @HiveField(5)
  final String? pic;
  @HiveField(6)
  final String? phone;
  @HiveField(7)
  final bool? active;
  @HiveField(8)
  final String? status;
  @HiveField(9)
  final String? country;
  @HiveField(10)
  final String? city;
  @HiveField(11)
  final String? region;
  @HiveField(12)
  final bool? completed;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);

  
  Map<String, dynamic> toJson() => _$ProfileEntityToJson(this);
}
