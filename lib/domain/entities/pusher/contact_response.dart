import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_response.freezed.dart';
part 'contact_response.g.dart';

@freezed
class ContactPusherResponse with _$ContactPusherResponse {
  factory ContactPusherResponse(ContactPusherEntity? contact) =
      _ContactResponse;

  factory ContactPusherResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactPusherResponseFromJson(json);
}

@JsonSerializable()
class ContactPusherEntity {
  const ContactPusherEntity({
    required this.id,
    required this.name,
    required this.avatar,
    required this.createdAt,
    required this.lastMessage,
    required this.status,
  });
  final int? id;
  final String? name;
  final String? lastMessage;
  final String? status;
  final String? avatar;
  final String? createdAt;

  factory ContactPusherEntity.fromJson(Map<String, dynamic> json) =>
      _$ContactPusherEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPusherEntityToJson(this);
}
