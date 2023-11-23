// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceEntity _$$_ServiceEntityFromJson(Map<String, dynamic> json) =>
    _$_ServiceEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      hasSections: json['has_sections'] as bool,
    );

Map<String, dynamic> _$$_ServiceEntityToJson(_$_ServiceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'has_sections': instance.hasSections,
    };
