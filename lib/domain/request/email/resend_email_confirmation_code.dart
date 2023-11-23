import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resend_email_confirmation_code.g.dart';

@JsonSerializable()
class ResendEmailConfirmationCode extends Params {
  const ResendEmailConfirmationCode({required this.email, required this.type});

  final String email, type;

  factory ResendEmailConfirmationCode.fromJson(Map<String, dynamic> json) {
    return _$ResendEmailConfirmationCodeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResendEmailConfirmationCodeToJson(this);

  @override
  List<Object?> get props => [email, type];
}
