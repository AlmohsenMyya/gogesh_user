import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/use_case/use_case.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest extends Params {
  const LoginRequest({
    required this.email,
    required this.password,
    this.fcmToken,
  });
  final String email, password;
  @JsonKey(name: "fcm_token")
  final String? fcmToken;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  List<Object?> get props => [];
}
