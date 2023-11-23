import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_response.g.dart';

@JsonSerializable()
class ConversationEntity extends Params {
  const ConversationEntity(
      {required this.id,
      required this.name,
      required this.lastMessage,
      required this.avatar,
      required this.createdAt,
      required this.unread,
      required this.sellerId});
  final int? id;
  @JsonKey(name: "seller_id")
  final int? sellerId;
  final String? name;
  @JsonKey(name: "last_message")
  final String? lastMessage;
  final int? unread;
  final String? avatar;
  @JsonKey(name: "created_at")
  final String? createdAt;

  Map<String, dynamic> toJson() => _$ConversationEntityToJson(this);
  factory ConversationEntity.fromJson(Map<String, dynamic> json) =>
      _$ConversationEntityFromJson(json);

  @override
  List<Object?> get props => [];
}
