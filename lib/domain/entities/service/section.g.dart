// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionEntity _$$_SectionEntityFromJson(Map<String, dynamic> json) =>
    _$_SectionEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      serviceId: json['services_id'] as int,
    );

Map<String, dynamic> _$$_SectionEntityToJson(_$_SectionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'services_id': instance.serviceId,
    };
