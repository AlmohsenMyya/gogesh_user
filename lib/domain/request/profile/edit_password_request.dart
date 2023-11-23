import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/use_case/use_case.dart';

part 'edit_password_request.g.dart';

@JsonSerializable()
class EditPasswordRequest extends Params {
  const EditPasswordRequest({
    required this.newPassword,
    required this.oldPassword,
    required this.newPasswordConfirmation,
  });

  @JsonKey(name: 'current_password')
  final String? oldPassword;
  @JsonKey(name: 'new_password')
  final String? newPassword;
  @JsonKey(name: "new_password_confirmation")
  final String? newPasswordConfirmation;

  factory EditPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$EditPasswordRequestFromJson(json);
  Map<String, dynamic> toJson() => _$EditPasswordRequestToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
