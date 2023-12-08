// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ad _$$_AdFromJson(Map<String, dynamic> json) => _$_Ad(
      id: json['id'] as int,
      sellerId: json['seller_id'] as int?,
      title: json['title'] as String,
      images: json['images'] as String?,
      seller: json['seller'] as String?,
      poster: json['poster'] as String?,
      type: $enumDecodeNullable(
          _$ServiceTypeEnumEnumMap, json['type_commercialActivity']),
      date: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String,
      price: _parseDouble(json['price'] ?? "0" )!,
      views: int.tryParse(json['views'] ?? ''),
      url: json['url'] as String?,
    );
double? _parseDouble(dynamic value) {
      if (value is int) {
            return value.toDouble();
      } else if (value is String) {
            return double.tryParse(value);
      } else {
            return null;
      }
}

int? _parseInt(dynamic value) {
      if (value is int) {
            return value;
      } else if (value is String) {
            return int.tryParse(value);
      } else {
            return null;
      }
}
Map<String, dynamic> _$$_AdToJson(_$_Ad instance) => <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'title': instance.title,
      'images': instance.images,
      'seller': instance.seller,
      'poster': instance.poster,
      'type_commercialActivity': _$ServiceTypeEnumEnumMap[instance.type],
      'created_at': instance.date?.toIso8601String(),
      'description': instance.description,
      'price': instance.price,
      'views': instance.views,
      'url': instance.url,
    };

const _$ServiceTypeEnumEnumMap = {
  ServiceTypeEnum.Personal: 'Personal',
  ServiceTypeEnum.Company: 'Company',
};
