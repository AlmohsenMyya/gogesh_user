import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/use_case/use_case.dart';
part 'support_request.g.dart';

@JsonSerializable()
class MakeContactRequest extends Params {
  const MakeContactRequest({
    required this.content,
    required this.subject,
  });

  final String content;
  final String subject;

  Map<String, dynamic> toJson() => _$MakeContactRequestToJson(this);
  factory MakeContactRequest.fromJson(Map<String, dynamic> json) =>
      _$MakeContactRequestFromJson(json);

  @override
  List<Object?> get props => [content, subject];
}
