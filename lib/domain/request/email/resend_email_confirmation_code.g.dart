// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_email_confirmation_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendEmailConfirmationCode _$ResendEmailConfirmationCodeFromJson(
        Map<String, dynamic> json) =>
    ResendEmailConfirmationCode(
      email: json['email'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ResendEmailConfirmationCodeToJson(
        ResendEmailConfirmationCode instance) =>
    <String, dynamic>{
      'email': instance.email,
      'type': instance.type,
    };
