// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_social_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterSocialRequest _$RegisterSocialRequestFromJson(
        Map<String, dynamic> json) =>
    RegisterSocialRequest(
      accessToken: json['access_provider_token'] as String,
      provider: json['provider'] as String,
      fcmToken: json['fcm_token'] as String,
    );

Map<String, dynamic> _$RegisterSocialRequestToJson(
        RegisterSocialRequest instance) =>
    <String, dynamic>{
      'access_provider_token': instance.accessToken,
      'provider': instance.provider,
      'fcm_token': instance.fcmToken,
    };
