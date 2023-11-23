import 'dart:io';

import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:hive_flutter/adapters.dart';

import 'local_data_keys.dart';

abstract class LocalDataSource {
  T? getValue<T>(LocalDataKeys key, {dynamic defaultValue});

  Future<void> setValue<T>(LocalDataKeys key, T value);

  Future<void> clear();
}

class LocalDataSourceImpl implements LocalDataSource {
  LocalDataSourceImpl(Box<dynamic> box) : _box = box;

  final Box<dynamic> _box;

  static Future<Box<dynamic>> init() async {
    Hive.registerAdapter(UserTypeAdapter());
    Hive.registerAdapter(CurrencyAdapter());
    Hive.registerAdapter(ProfileEntityAdapter());

    return Hive.openBox<dynamic>('defaultBox');
  }

  @override
  T? getValue<T>(LocalDataKeys key, {dynamic defaultValue}) {
    return _box.get(key.name, defaultValue: defaultValue) as T?;
  }

  @override
  Future<void> setValue<T>(LocalDataKeys key, T value) async {
    await _box.put(key.name, value);
  }

  @override
  Future<void> clear() async {
    await _box.clear();
  }
}

// Can be generated automatically
class UserTypeAdapter extends TypeAdapter<UserType> {
  @override
  final typeId = 0;

  @override
  UserType read(BinaryReader reader) {
    return UserType.values.byName(reader.read());
  }

  @override
  void write(BinaryWriter writer, UserType obj) {
    writer.write(obj.name);
  }
}

// class ProfileAdapter extends TypeAdapter<ProfileEntity> {
//   @override
//   ProfileEntity read(BinaryReader reader) {
//     return ProfileEntity(
//         country: reader.readString(),
//         city: reader.readString(),
//         region: reader.readString(),
//         id: reader.readInt(),
//         firstName: reader.readString(),
//         lastName: reader.readString(),
//         email: reader.readString(),
//         phone: reader.readString(),
//         active: 1, //reader.readInt(),
//         createdAt: "", //reader.readString(),
//         pic: reader.readString(),
//         status: reader.readString());
//   }
//
//   @override
//   int get typeId => 13;
//
//   @override
//   void write(BinaryWriter writer, ProfileEntity obj) {
//     writer.writeInt(obj.id ?? 0);
//     writer.writeString(obj.firstName ?? "");
//     writer.writeString(obj.lastName ?? "");
//     writer.writeString(obj.email ?? "");
//     writer.writeString(obj.phone ?? "");
//     // writer.writeString(obj.createdAt ?? "");
//     writer.writeString(obj.status ?? "");
//     writer.writeString(obj.country ?? "");
//     writer.writeString(obj.city ?? "");
//     writer.writeString(obj.region ?? "");
//     // writer.writeInt(obj.active ?? 1);
//     writer.writeString(obj.pic ?? "");
//   }
// }

class CurrencyAdapter extends TypeAdapter<Currency> {
  @override
  int get typeId =>
      4; // Unique identifier for the type (you can use any positive integer).

  @override
  Currency read(BinaryReader reader) {
    return Currency(
      countryCode: reader.readString(),
      currencyCode: reader.readString(),
      flag: reader.readString(),
      currencyNameAr: reader.readString(),
      currencyNameEn: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Currency obj) {
    writer.writeString(obj.countryCode);
    writer.writeString(obj.currencyCode);
    writer.writeString(obj.flag);
    writer.writeString(obj.currencyNameAr);
    writer.writeString(obj.currencyNameEn);
  }
}

class Currency {
  final String countryCode;
  final String currencyCode;
  final String flag;
  final String currencyNameAr;
  final String currencyNameEn;

  Currency(
      {required this.countryCode,
      required this.currencyCode,
      required this.flag,
      required this.currencyNameAr,
      required this.currencyNameEn});

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
        countryCode: json["countryCode"],
        currencyCode: json["currencyCode"],
        flag: json["flag"],
        currencyNameAr: json["currencyName"]["ar"],
        currencyNameEn: json["currencyName"]["en"]);
  }
}
