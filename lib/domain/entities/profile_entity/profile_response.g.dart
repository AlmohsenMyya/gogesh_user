// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileEntityAdapter extends TypeAdapter<ProfileEntity> {
  @override
  final int typeId = 23;

  @override
  ProfileEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileEntity(
      gender: (fields[12]  as bool?).toString(),
      country: fields[9] as String?,
      city: fields[10] as String?,
      region: fields[11] as String?,
      id: fields[0] as int?,
      firstName: fields[1] as String?,
      lastName: fields[3] as String?,
      email: fields[4] as String?,
      phone: fields[6] as String?,
      active: fields[7] as bool?,
      createdAt: fields[2] as String?,
      pic: fields[5] as String?,
      status: fields[8] as String?,
      completed: fields[12] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileEntity obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.pic)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.active)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.country)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.region)
      ..writeByte(12)
      ..write(obj.completed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) =>
    ProfileEntity(
      gender:  json['gender'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      createdAt: json['created_at'] as String?,
      pic: json['pic'] as String?,
      status: json['status'] as String?,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$ProfileEntityToJson(ProfileEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'created_at': instance.createdAt,
      'last_name': instance.lastName,
      'email': instance.email,
      'pic': instance.pic,
      'phone': instance.phone,
      'active': instance.active,
      'status': instance.status,
      'country': instance.country,
      'city': instance.city,
      'region': instance.region,
      'completed': instance.completed,
    };

_$_ProfileResponse _$$_ProfileResponseFromJson(Map<String, dynamic> json) =>
    _$_ProfileResponse(
      data: ProfileEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileResponseToJson(_$_ProfileResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
