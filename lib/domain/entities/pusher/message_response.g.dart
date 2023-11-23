// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagePusherEntity _$MessagePusherEntityFromJson(Map<String, dynamic> json) =>
    MessagePusherEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      attachment: json['attachment'] as String?,
      contactId: json['contact_id'] as int?,
      createdAt: json['created_at'] as String?,
      isMe: json['is_me'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MessagePusherEntityToJson(
        MessagePusherEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'is_me': instance.isMe,
      'name': instance.name,
      'message': instance.message,
      'attachment': instance.attachment,
      'created_at': instance.createdAt,
    };

_$_MessagePusherResponse _$$_MessagePusherResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MessagePusherResponse(
      json['message'] == null
          ? null
          : MessagePusherEntity.fromJson(
              json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessagePusherResponseToJson(
        _$_MessagePusherResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
