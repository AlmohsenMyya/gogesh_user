// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sector_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sector _$$_SectorFromJson(Map<String, dynamic> json) => _$_Sector(
      name: json['name'] as String,
      id: json['id'] as int,
      companyCount: json['commercial_activity_count'] as int?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_SectorToJson(_$_Sector instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'commercial_activity_count': instance.companyCount,
      'image': instance.image,
    };
