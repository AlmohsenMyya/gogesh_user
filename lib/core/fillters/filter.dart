import 'package:json_annotation/json_annotation.dart';
import '../use_case/use_case.dart';

class Filter extends Params {
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serviceType != null) {
      json.addEntries([MapEntry("service_type", serviceType)]);
    }
    if (sector != null) {
      json.addEntries([MapEntry("sector", sector)]);
    }
    if (activity != null && activity!.isNotEmpty) {
      json.addEntries([MapEntry("activity", activity)]);
    }
    if (speciality != null && speciality!.isNotEmpty) {
      json.addEntries([MapEntry("speciality", speciality)]);
    }
    if (occasion != null && occasion!.isNotEmpty) {
      json.addEntries([MapEntry("occasion", occasion)]);
    }
    if (type != null) {
      json.addEntries([MapEntry("type", type)]);
    }
    if (page != null) {
      json.addEntries([MapEntry("page", page)]);
    }
    if (q != null) {
      json.addEntries([MapEntry("q", q)]);
    }
    if (id != null) {
      json.addEntries([MapEntry("id", id)]);
    }
    return json;
  }

  final String? serviceType;
  final String? sector;
  final String? activity;
  final String? speciality;
  final String? occasion;
  final String? service;
  final String? section;
  final String? type;
  final int? page;
  final int? id;

  final String? q;

  const Filter(
      {this.serviceType,
      this.sector,
      this.activity,
      this.speciality,
      this.occasion,
      this.type,
      this.q,
      this.id,
      this.service,
      this.section,
      this.page});

  copyWith(
      {String? serviceType,
      String? sector,
      String? activity,
      String? speciality,
      String? occasion,
      String? type,
      String? section,
      String? service,
      String? q,
      int? page,
      int? id}) {
    return Filter(
        serviceType: serviceType ?? this.serviceType,
        sector: sector ?? this.sector,
        activity: activity ?? this.activity,
        speciality: speciality ?? this.speciality,
        occasion: occasion ?? this.occasion,
        section: section ?? this.section,
        service: service ?? this.service,
        q: q ?? this.q,
        type: type ?? this.type,
        id: id ?? this.id,
        page: page ?? this.page);
  }

  @override
  List<Object?> get props =>
      [serviceType, sector, activity, speciality, occasion, type];
}
