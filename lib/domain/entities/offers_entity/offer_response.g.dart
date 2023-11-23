// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferEntity _$OfferEntityFromJson(Map<String, dynamic> json) => OfferEntity(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$OfferEntityToJson(OfferEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
    };

_$_OfferResponse _$$_OfferResponseFromJson(Map<String, dynamic> json) =>
    _$_OfferResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => OfferEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OfferResponseToJson(_$_OfferResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
