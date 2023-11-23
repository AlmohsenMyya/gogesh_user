// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditPasswordRequest _$EditPasswordRequestFromJson(Map<String, dynamic> json) =>
    EditPasswordRequest(
      newPassword: json['new_password'] as String?,
      oldPassword: json['current_password'] as String?,
      newPasswordConfirmation: json['new_password_confirmation'] as String?,
    );

Map<String, dynamic> _$EditPasswordRequestToJson(
        EditPasswordRequest instance) =>
    <String, dynamic>{
      'current_password': instance.oldPassword,
      'new_password': instance.newPassword,
      'new_password_confirmation': instance.newPasswordConfirmation,
    };
