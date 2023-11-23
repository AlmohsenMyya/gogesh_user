// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_profille.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellerProfile _$SellerProfileFromJson(Map<String, dynamic> json) {
  return _SellerProfile.fromJson(json);
}

/// @nodoc
mixin _$SellerProfile {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "commercial_activity")
  String? get commercialActivity => throw _privateConstructorUsedError;
  @JsonKey(name: "commercial_activity_address")
  String? get address => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;
  List<String>? get sections => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: "commercial_activity_social")
  List<SocialAccount>? get socialAccounts => throw _privateConstructorUsedError;
  @JsonKey(name: "work_days")
  List<WorkDays>? get workDays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerProfileCopyWith<SellerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerProfileCopyWith<$Res> {
  factory $SellerProfileCopyWith(
          SellerProfile value, $Res Function(SellerProfile) then) =
      _$SellerProfileCopyWithImpl<$Res, SellerProfile>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      String? description,
      String email,
      String? phone,
      String? country,
      String? region,
      String? city,
      String? image,
      @JsonKey(name: "commercial_activity") String? commercialActivity,
      @JsonKey(name: "commercial_activity_address") String? address,
      List<String>? services,
      List<String>? sections,
      bool active,
      @JsonKey(name: "commercial_activity_social")
      List<SocialAccount>? socialAccounts,
      @JsonKey(name: "work_days") List<WorkDays>? workDays});
}

/// @nodoc
class _$SellerProfileCopyWithImpl<$Res, $Val extends SellerProfile>
    implements $SellerProfileCopyWith<$Res> {
  _$SellerProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? description = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? image = freezed,
    Object? commercialActivity = freezed,
    Object? address = freezed,
    Object? services = freezed,
    Object? sections = freezed,
    Object? active = null,
    Object? socialAccounts = freezed,
    Object? workDays = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      commercialActivity: freezed == commercialActivity
          ? _value.commercialActivity
          : commercialActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      socialAccounts: freezed == socialAccounts
          ? _value.socialAccounts
          : socialAccounts // ignore: cast_nullable_to_non_nullable
              as List<SocialAccount>?,
      workDays: freezed == workDays
          ? _value.workDays
          : workDays // ignore: cast_nullable_to_non_nullable
              as List<WorkDays>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SellerProfileCopyWith<$Res>
    implements $SellerProfileCopyWith<$Res> {
  factory _$$_SellerProfileCopyWith(
          _$_SellerProfile value, $Res Function(_$_SellerProfile) then) =
      __$$_SellerProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      String? description,
      String email,
      String? phone,
      String? country,
      String? region,
      String? city,
      String? image,
      @JsonKey(name: "commercial_activity") String? commercialActivity,
      @JsonKey(name: "commercial_activity_address") String? address,
      List<String>? services,
      List<String>? sections,
      bool active,
      @JsonKey(name: "commercial_activity_social")
      List<SocialAccount>? socialAccounts,
      @JsonKey(name: "work_days") List<WorkDays>? workDays});
}

/// @nodoc
class __$$_SellerProfileCopyWithImpl<$Res>
    extends _$SellerProfileCopyWithImpl<$Res, _$_SellerProfile>
    implements _$$_SellerProfileCopyWith<$Res> {
  __$$_SellerProfileCopyWithImpl(
      _$_SellerProfile _value, $Res Function(_$_SellerProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? description = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? image = freezed,
    Object? commercialActivity = freezed,
    Object? address = freezed,
    Object? services = freezed,
    Object? sections = freezed,
    Object? active = null,
    Object? socialAccounts = freezed,
    Object? workDays = freezed,
  }) {
    return _then(_$_SellerProfile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      commercialActivity: freezed == commercialActivity
          ? _value.commercialActivity
          : commercialActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      socialAccounts: freezed == socialAccounts
          ? _value._socialAccounts
          : socialAccounts // ignore: cast_nullable_to_non_nullable
              as List<SocialAccount>?,
      workDays: freezed == workDays
          ? _value._workDays
          : workDays // ignore: cast_nullable_to_non_nullable
              as List<WorkDays>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SellerProfile with DiagnosticableTreeMixin implements _SellerProfile {
  const _$_SellerProfile(
      {required this.id,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      required this.description,
      required this.email,
      required this.phone,
      required this.country,
      required this.region,
      required this.city,
      required this.image,
      @JsonKey(name: "commercial_activity") required this.commercialActivity,
      @JsonKey(name: "commercial_activity_address") required this.address,
      required final List<String>? services,
      required final List<String>? sections,
      required this.active,
      @JsonKey(name: "commercial_activity_social")
      required final List<SocialAccount>? socialAccounts,
      @JsonKey(name: "work_days") required final List<WorkDays>? workDays})
      : _services = services,
        _sections = sections,
        _socialAccounts = socialAccounts,
        _workDays = workDays;

  factory _$_SellerProfile.fromJson(Map<String, dynamic> json) =>
      _$$_SellerProfileFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  final String? description;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? city;
  @override
  final String? image;
  @override
  @JsonKey(name: "commercial_activity")
  final String? commercialActivity;
  @override
  @JsonKey(name: "commercial_activity_address")
  final String? address;
  final List<String>? _services;
  @override
  List<String>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _sections;
  @override
  List<String>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool active;
  final List<SocialAccount>? _socialAccounts;
  @override
  @JsonKey(name: "commercial_activity_social")
  List<SocialAccount>? get socialAccounts {
    final value = _socialAccounts;
    if (value == null) return null;
    if (_socialAccounts is EqualUnmodifiableListView) return _socialAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkDays>? _workDays;
  @override
  @JsonKey(name: "work_days")
  List<WorkDays>? get workDays {
    final value = _workDays;
    if (value == null) return null;
    if (_workDays is EqualUnmodifiableListView) return _workDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SellerProfile(id: $id, firstName: $firstName, lastName: $lastName, description: $description, email: $email, phone: $phone, country: $country, region: $region, city: $city, image: $image, commercialActivity: $commercialActivity, address: $address, services: $services, sections: $sections, active: $active, socialAccounts: $socialAccounts, workDays: $workDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SellerProfile'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('commercialActivity', commercialActivity))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('services', services))
      ..add(DiagnosticsProperty('sections', sections))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('socialAccounts', socialAccounts))
      ..add(DiagnosticsProperty('workDays', workDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellerProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.commercialActivity, commercialActivity) ||
                other.commercialActivity == commercialActivity) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other._socialAccounts, _socialAccounts) &&
            const DeepCollectionEquality().equals(other._workDays, _workDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      description,
      email,
      phone,
      country,
      region,
      city,
      image,
      commercialActivity,
      address,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_sections),
      active,
      const DeepCollectionEquality().hash(_socialAccounts),
      const DeepCollectionEquality().hash(_workDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellerProfileCopyWith<_$_SellerProfile> get copyWith =>
      __$$_SellerProfileCopyWithImpl<_$_SellerProfile>(this, _$identity);
}

abstract class _SellerProfile implements SellerProfile {
  const factory _SellerProfile(
      {required final int id,
      @JsonKey(name: "first_name") required final String firstName,
      @JsonKey(name: "last_name") required final String lastName,
      required final String? description,
      required final String email,
      required final String? phone,
      required final String? country,
      required final String? region,
      required final String? city,
      required final String? image,
      @JsonKey(name: "commercial_activity")
      required final String? commercialActivity,
      @JsonKey(name: "commercial_activity_address")
      required final String? address,
      required final List<String>? services,
      required final List<String>? sections,
      required final bool active,
      @JsonKey(name: "commercial_activity_social")
      required final List<SocialAccount>? socialAccounts,
      @JsonKey(name: "work_days")
      required final List<WorkDays>? workDays}) = _$_SellerProfile;

  factory _SellerProfile.fromJson(Map<String, dynamic> json) =
      _$_SellerProfile.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  String? get description;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get city;
  @override
  String? get image;
  @override
  @JsonKey(name: "commercial_activity")
  String? get commercialActivity;
  @override
  @JsonKey(name: "commercial_activity_address")
  String? get address;
  @override
  List<String>? get services;
  @override
  List<String>? get sections;
  @override
  bool get active;
  @override
  @JsonKey(name: "commercial_activity_social")
  List<SocialAccount>? get socialAccounts;
  @override
  @JsonKey(name: "work_days")
  List<WorkDays>? get workDays;
  @override
  @JsonKey(ignore: true)
  _$$_SellerProfileCopyWith<_$_SellerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
