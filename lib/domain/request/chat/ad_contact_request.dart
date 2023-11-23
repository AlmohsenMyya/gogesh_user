import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/use_case/use_case.dart';

part 'ad_contact_request.g.dart';

@JsonSerializable()
class AdContactRequest extends Params {
  const AdContactRequest({required this.adId});

  @JsonKey(name: "ads_id")
  final int adId;

  Map<String, dynamic> toJson() => _$AdContactRequestToJson(this);
  factory AdContactRequest.fromJson(Map<String, dynamic> json) =>
      _$AdContactRequestFromJson(json);

  @override
  List<Object?> get props => [adId];
}
