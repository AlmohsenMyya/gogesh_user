// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatEntityAdapter extends TypeAdapter<ChatEntity> {
  @override
  final int typeId = 33;

  @override
  ChatEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatEntity(
      isMe: fields[4] as bool?,
      conversationId: fields[6] as int?,
      id: fields[0] as int?,
      name: fields[1] as String?,
      attachment: fields[3] as String?,
      message: fields[2] as String?,
      createdAt: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.message)
      ..writeByte(3)
      ..write(obj.attachment)
      ..writeByte(4)
      ..write(obj.isMe)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.conversationId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatEntity _$ChatEntityFromJson(Map<String, dynamic> json) => ChatEntity(
      isMe: json['is_me'] as bool?,
      conversationId: json['contact_id'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      attachment: json['attachment'] as String?,
      message: json['message'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ChatEntityToJson(ChatEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'attachment': instance.attachment,
      'is_me': instance.isMe,
      'created_at': instance.createdAt,
      'contact_id': instance.conversationId,
    };
