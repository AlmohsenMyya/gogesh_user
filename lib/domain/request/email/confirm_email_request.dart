import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirm_email_request.g.dart';

@JsonSerializable()
class ConfirmEmailRequest extends Params {
  const ConfirmEmailRequest({required this.code, required this.email});

  final String email, code;

  factory ConfirmEmailRequest.fromJson(Map<String, dynamic> json) {
    return _$ConfirmEmailRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConfirmEmailRequestToJson(this);

  @override
  List<Object?> get props => [email, code];
}
