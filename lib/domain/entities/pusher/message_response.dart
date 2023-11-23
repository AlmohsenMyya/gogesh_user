import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_response.freezed.dart';
part 'message_response.g.dart';

@freezed
class MessagePusherResponse with _$MessagePusherResponse {
  factory MessagePusherResponse(MessagePusherEntity? message) =
      _MessagePusherResponse;

  factory MessagePusherResponse.fromJson(Map<String, dynamic> json) =>
      _$MessagePusherResponseFromJson(json);
}

@JsonSerializable()
class MessagePusherEntity {
   MessagePusherEntity({
    required this.id,
    required this.name,
    required this.attachment,
    required this.contactId,
    required this.createdAt,
    required this.isMe,
    required this.message,
  });

  final int? id;
  @JsonKey(name: "contact_id")
  int? contactId;
  @JsonKey(name: "is_me")
  final bool? isMe;
  final String? name;
  final String? message;
  final String? attachment;
  @JsonKey(name: "created_at")
  final String? createdAt;

  factory MessagePusherEntity.fromJson(Map<String, dynamic> json) =>
      _$MessagePusherEntityFromJson(json);
  Map<String, dynamic> toJson() => _$MessagePusherEntityToJson(this);
}
