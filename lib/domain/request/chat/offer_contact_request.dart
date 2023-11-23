import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_contact_request.g.dart';

@JsonSerializable()
class OfferContactRequest extends Params {
  const OfferContactRequest({required this.offerID});

  @JsonKey(name: "offer_id")
  final int offerID;

  Map<String, dynamic> toJson() => _$OfferContactRequestToJson(this);
  factory OfferContactRequest.fromJson(Map<String, dynamic> json) =>
      _$OfferContactRequestFromJson(json);

  @override
  List<Object?> get props => [offerID];
}
