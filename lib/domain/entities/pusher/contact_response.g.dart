// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactPusherEntity _$ContactPusherEntityFromJson(Map<String, dynamic> json) =>
    ContactPusherEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      createdAt: json['createdAt'] as String?,
      lastMessage: json['lastMessage'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ContactPusherEntityToJson(
        ContactPusherEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastMessage': instance.lastMessage,
      'status': instance.status,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt,
    };

_$_ContactResponse _$$_ContactResponseFromJson(Map<String, dynamic> json) =>
    _$_ContactResponse(
      json['contact'] == null
          ? null
          : ContactPusherEntity.fromJson(
              json['contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContactResponseToJson(_$_ContactResponse instance) =>
    <String, dynamic>{
      'contact': instance.contact,
    };
