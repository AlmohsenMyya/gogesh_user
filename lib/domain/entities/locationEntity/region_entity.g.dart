// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRegion _$DataRegionFromJson(Map<String, dynamic> json) => DataRegion(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cityId: json['city_id'] as int?,
    );

Map<String, dynamic> _$DataRegionToJson(DataRegion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city_id': instance.cityId,
    };

_$_RegionEntity _$$_RegionEntityFromJson(Map<String, dynamic> json) =>
    _$_RegionEntity(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataRegion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RegionEntityToJson(_$_RegionEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
