// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterCustomer _$RegisterCustomerFromJson(Map<String, dynamic> json) =>
    RegisterCustomer(
      email: json['email'] as String?,
      password: json['password'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      passwordConfirmation: json['password_confirmation'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      countryID: json['country_id'] as int?,
      cityId: json['city_id'] as int?,
      gender: json['gender'] as String?,
      regionId: json['region_id'] as int?,
    );

Map<String, dynamic> _$RegisterCustomerToJson(RegisterCustomer instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'password_confirmation': instance.passwordConfirmation,
      'firstname': instance.firstname!,
      'lastname': instance.lastname!,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'region': instance.region,
      'gender': instance.gender,
      'country_id': instance.countryID,
      'city_id': instance.cityId,
      'region_id': instance.regionId,
    };
