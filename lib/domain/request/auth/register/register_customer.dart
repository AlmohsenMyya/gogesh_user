import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/use_case/use_case.dart';

part 'register_customer.g.dart';

@JsonSerializable()
class RegisterCustomer extends Params {
  const RegisterCustomer({
    this.email,
    this.password,
    this.firstname,
    this.lastname,
    this.passwordConfirmation,
    this.phone,
    this.image,
    this.country,
    this.city,
    this.region,
    this.countryID,
    this.cityId,
    this.gender,
    this.regionId,
  });
  final String? email;
  final String? password;
  final String? image;
  @JsonKey(name: 'password_confirmation')
  final String? passwordConfirmation;
  final String? firstname, lastname, phone;
  final String? country;
  final String? city;
  final String? region;
  final String? gender;
  @JsonKey(name: "country_id")
  final int? countryID;
  @JsonKey(name: "city_id")
  final int? cityId;
  @JsonKey(name: "region_id")
  final int? regionId;

  // final int country_id, city_id, region_id;

  factory RegisterCustomer.fromJson(Map<String, dynamic> json) =>
      _$RegisterCustomerFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterCustomerToJson(this);

  @override
  List<Object?> get props => [];
}
