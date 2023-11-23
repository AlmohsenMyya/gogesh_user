// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationEntity _$ConversationEntityFromJson(Map<String, dynamic> json) =>
    ConversationEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      lastMessage: json['last_message'] as String?,
      avatar: json['avatar'] as String?,
      createdAt: json['created_at'] as String?,
      unread: json['unread'] as int?,
      sellerId: json['seller_id'] as int?,
    );

Map<String, dynamic> _$ConversationEntityToJson(ConversationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'name': instance.name,
      'last_message': instance.lastMessage,
      'unread': instance.unread,
      'avatar': instance.avatar,
      'created_at': instance.createdAt,
    };
