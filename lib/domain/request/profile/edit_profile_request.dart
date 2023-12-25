import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_request.g.dart';

@JsonSerializable()
class EditProfileRequest extends Params {
  const EditProfileRequest(
      {required this.city,
      required this.cityId,
      required this.country,
      required this.email,
      required this.phone,
      required this.countryId,
       required this.gender,
      required this.regionId,
      required this.region,
      required this.firstname,
      required this.lastname});

  final String? firstname;
  final String? lastname;
  @JsonKey(name: 'country_id')
  final int? countryId;
  @JsonKey(name: 'city_id')
  final int? cityId;
  @JsonKey(name: "region_id")
  final int? regionId;
  final String? email;
  final String? phone;

  final String? gender;
  final String? country;
  final String? city;
  final String? region;

  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EditProfileRequestToJson(this);

  @override
  List<Object?> get props => [
        firstname,
        lastname,
        email,
        phone,
        countryId,
        cityId,
        regionId,
        country,
        city,
        region
      ];
}
