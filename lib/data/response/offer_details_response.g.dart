// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferDetailsResponse _$$_OfferDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OfferDetailsResponse(
      data: Offer.fromJson(json['data'] as Map<String, dynamic>),
      relatedResults: (json['related_results'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OfferDetailsResponseToJson(
        _$_OfferDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'related_results': instance.relatedResults,
    };
