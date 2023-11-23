import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/use_case/use_case.dart';

part 'register_social_request.g.dart';

@JsonSerializable()
class RegisterSocialRequest extends Params {
  const RegisterSocialRequest({
    required this.accessToken,
    required this.provider,
    required this.fcmToken,
  });
  @JsonKey(name: "access_provider_token")
  final String accessToken;
  final String provider;
  @JsonKey(name: "fcm_token")
  final String fcmToken;

  factory RegisterSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterSocialRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterSocialRequestToJson(this);

  @override
  List<Object?> get props => [accessToken, provider];
}
