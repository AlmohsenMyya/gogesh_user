import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_response.freezed.dart';
part 'offer_response.g.dart';

@freezed
class OfferResponse with _$OfferResponse {
  factory OfferResponse({required List<OfferEntity> data}) = _OfferResponse;

  factory OfferResponse.fromJson(Map<String, dynamic> json) =>
      _$OfferResponseFromJson(json);
}

@JsonSerializable()
class OfferEntity {
  const OfferEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
  });

  final int? id;
  final String? title;
  final String? description;
  final List<String?> images;

  factory OfferEntity.fromJson(Map<String, dynamic> json) =>
      _$OfferEntityFromJson(json);
  Map<String, dynamic> toJson() => _$OfferEntityToJson(this);
}
