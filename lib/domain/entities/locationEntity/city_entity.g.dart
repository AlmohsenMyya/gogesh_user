// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datacity _$DatacityFromJson(Map<String, dynamic> json) => Datacity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      countryId: json['country_id'] as int?,
    );

Map<String, dynamic> _$DatacityToJson(Datacity instance) => <String, dynamic>{
      'id': instance.id,
      'country_id': instance.countryId,
      'name': instance.name,
    };

_$_CityEntity _$$_CityEntityFromJson(Map<String, dynamic> json) =>
    _$_CityEntity(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datacity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CityEntityToJson(_$_CityEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
