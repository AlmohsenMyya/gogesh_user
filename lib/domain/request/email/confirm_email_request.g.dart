// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmEmailRequest _$ConfirmEmailRequestFromJson(Map<String, dynamic> json) =>
    ConfirmEmailRequest(
      code: json['code'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$ConfirmEmailRequestToJson(
        ConfirmEmailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
