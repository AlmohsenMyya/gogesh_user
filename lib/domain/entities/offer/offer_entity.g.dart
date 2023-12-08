// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      id: json['id'] as int,
      title: json['title'] as String?,
      description: json['description'] as String?,
      condition: json['condition'] as String?,
      video: json['video'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      views: _parseInt(json['views'] ),
      type: $enumDecodeNullable(_$ServiceTypeEnumEnumMap, json['type']),
      data: const DateTimeSerializer().fromJson(json['created_at']),
      price: _parseDouble(json['price'] ),
      total: (json['total'] as num?)?.toDouble(),
      bold: json['bold'] as bool?,
      fav: json['fav'] as bool? ?? false,
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
Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'condition': instance.condition,
      'video': instance.video,
      'images': instance.images,
      'views': instance.views,
      'type': _$ServiceTypeEnumEnumMap[instance.type],
      'created_at': const DateTimeSerializer().toJson(instance.data),
      'price': instance.price,
      'total': instance.total,
      'bold': instance.bold,
      'fav': instance.fav,
    };

const _$ServiceTypeEnumEnumMap = {
  ServiceTypeEnum.Personal: 'Personal',
  ServiceTypeEnum.Company: 'Company',
};
