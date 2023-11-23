// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datacountry _$DatacountryFromJson(Map<String, dynamic> json) => Datacountry(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DatacountryToJson(Datacountry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_CountryEntity _$$_CountryEntityFromJson(Map<String, dynamic> json) =>
    _$_CountryEntity(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datacountry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountryEntityToJson(_$_CountryEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
