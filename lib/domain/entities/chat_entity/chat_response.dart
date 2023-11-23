import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'chat_response.g.dart';

@HiveType(typeId: 33)
@JsonSerializable()
class ChatEntity extends Params {
  const ChatEntity({
    required this.isMe,
    required this.conversationId,
    required this.id,
    required this.name,
    this.attachment,
    required this.message,
    required this.createdAt,
  });
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? message;
  @HiveField(3)
  final String? attachment;

  @JsonKey(name: "is_me")
  @HiveField(4)
  final bool? isMe;

  @HiveField(5)
  @JsonKey(name: "created_at")
  final String? createdAt;
  @HiveField(6)
  @JsonKey(name: "contact_id")
  final int? conversationId;

  Map<String, dynamic> toJson() => _$ChatEntityToJson(this);
  factory ChatEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatEntityFromJson(json);

  @override
  List<Object?> get props => [id, message];
}
