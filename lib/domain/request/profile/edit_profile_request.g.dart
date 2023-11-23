// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileRequest _$EditProfileRequestFromJson(Map<String, dynamic> json) =>
    EditProfileRequest(
      city: json['city'] as String?,
      cityId: json['city_id'] as int?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      countryId: json['country_id'] as int?,
      regionId: json['region_id'] as int?,
      region: json['region'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
    );

Map<String, dynamic> _$EditProfileRequestToJson(EditProfileRequest instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'country_id': instance.countryId,
      'city_id': instance.cityId,
      'region_id': instance.regionId,
      'email': instance.email,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'region': instance.region,
    };
