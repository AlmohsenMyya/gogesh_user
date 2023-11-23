import 'dart:convert';
//
// import 'package:json_annotation/json_annotation.dart';
//
// part 'meta.g.dart';
//
// @JsonSerializable()
// class Meta {
//   final int? total;
//   @JsonKey(name: "current_page")
//   final int? currentPage;
//   @JsonKey(name: "per_page")
//   final int? perPage;
//   @JsonKey(name: "last_page")
//   final int? lastPage;
//   Meta({this.total, this.currentPage, this.perPage, this.lastPage});
//   Map<String, dynamic> toJson() => _$MetaToJson(this);
//   factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
// }

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta(
      {final int? total,
      @JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "next_page") final int? nextPage,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "last_page") final int? lastPage}) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
