// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferPaginated _$$_OfferPaginatedFromJson(Map<String, dynamic> json) =>
    _$_OfferPaginated(
      data: (json['data'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OfferPaginatedToJson(_$_OfferPaginated instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
