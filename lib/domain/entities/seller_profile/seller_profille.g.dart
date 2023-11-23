// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_profille.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SellerProfile _$$_SellerProfileFromJson(Map<String, dynamic> json) =>
    _$_SellerProfile(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      description: json['description'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
      image: json['image'] as String?,
      commercialActivity: json['commercial_activity'] as String?,
      address: json['commercial_activity_address'] as String?,
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      active: json['active'] as bool,
      socialAccounts: (json['commercial_activity_social'] as List<dynamic>?)
          ?.map((e) => SocialAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      workDays: (json['work_days'] as List<dynamic>?)
          ?.map((e) => WorkDays.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
