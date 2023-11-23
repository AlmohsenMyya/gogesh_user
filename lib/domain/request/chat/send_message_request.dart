import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/use_case/use_case.dart';

part 'send_message_request.g.dart';

@JsonSerializable()
class SendMessageRequest extends Params {
  const SendMessageRequest(
      {required this.contactId,
      required this.message,
      this.attachement,
      this.socketID,
      this.type});

  @JsonKey(name: "contact_id")
  final int contactId;
  final String message;
  final String? type;
  final String? attachement;
  final String? socketID;

  Map<String, dynamic> toJson() => _$SendMessageRequestToJson(this);
  factory SendMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestFromJson(json);

  @override
  List<Object?> get props => [contactId];
}
