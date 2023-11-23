// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  set condition(String? value) => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  set video(String? value) => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  set images(List<String>? value) => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  set views(int? value) => throw _privateConstructorUsedError;
  ServiceTypeEnum? get type => throw _privateConstructorUsedError;
  set type(ServiceTypeEnum? value) => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  @JsonKey(name: "created_at")
  DateTime get data => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  @JsonKey(name: "created_at")
  set data(DateTime value) => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  set price(double? value) => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  set total(double? value) => throw _privateConstructorUsedError;
  bool? get bold => throw _privateConstructorUsedError;
  set bold(bool? value) => throw _privateConstructorUsedError;
  bool get fav => throw _privateConstructorUsedError;
  set fav(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      String? condition,
      String? video,
      List<String>? images,
      int? views,
      ServiceTypeEnum? type,
      @DateTimeSerializer() @JsonKey(name: "created_at") DateTime data,
      double? price,
      double? total,
      bool? bold,
      bool fav});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? condition = freezed,
    Object? video = freezed,
    Object? images = freezed,
    Object? views = freezed,
    Object? type = freezed,
    Object? data = null,
    Object? price = freezed,
    Object? total = freezed,
    Object? bold = freezed,
    Object? fav = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceTypeEnum?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      bold: freezed == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool?,
      fav: null == fav
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      String? condition,
      String? video,
      List<String>? images,
      int? views,
      ServiceTypeEnum? type,
      @DateTimeSerializer() @JsonKey(name: "created_at") DateTime data,
      double? price,
      double? total,
      bool? bold,
      bool fav});
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? condition = freezed,
    Object? video = freezed,
    Object? images = freezed,
    Object? views = freezed,
    Object? type = freezed,
    Object? data = null,
    Object? price = freezed,
    Object? total = freezed,
    Object? bold = freezed,
    Object? fav = null,
  }) {
    return _then(_$_Offer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceTypeEnum?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      bold: freezed == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool?,
      fav: null == fav
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer implements _Offer {
  _$_Offer(
      {required this.id,
      required this.title,
      required this.description,
      required this.condition,
      required this.video,
      required this.images,
      required this.views,
      required this.type,
      @DateTimeSerializer() @JsonKey(name: "created_at") required this.data,
      required this.price,
      required this.total,
      required this.bold,
      this.fav = false});

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  int id;
  @override
  String? title;
  @override
  String? description;
  @override
  String? condition;
  @override
  String? video;
  @override
  List<String>? images;
  @override
  int? views;
  @override
  ServiceTypeEnum? type;
  @override
  @DateTimeSerializer()
  @JsonKey(name: "created_at")
  DateTime data;
  @override
  double? price;
  @override
  double? total;
  @override
  bool? bold;
  @override
  @JsonKey()
  bool fav;

  @override
  String toString() {
    return 'Offer(id: $id, title: $title, description: $description, condition: $condition, video: $video, images: $images, views: $views, type: $type, data: $data, price: $price, total: $total, bold: $bold, fav: $fav)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      __$$_OfferCopyWithImpl<_$_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  factory _Offer(
      {required int id,
      required String? title,
      required String? description,
      required String? condition,
      required String? video,
      required List<String>? images,
      required int? views,
      required ServiceTypeEnum? type,
      @DateTimeSerializer() @JsonKey(name: "created_at") required DateTime data,
      required double? price,
      required double? total,
      required bool? bold,
      bool fav}) = _$_Offer;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get description;
  set description(String? value);
  @override
  String? get condition;
  set condition(String? value);
  @override
  String? get video;
  set video(String? value);
  @override
  List<String>? get images;
  set images(List<String>? value);
  @override
  int? get views;
  set views(int? value);
  @override
  ServiceTypeEnum? get type;
  set type(ServiceTypeEnum? value);
  @override
  @DateTimeSerializer()
  @JsonKey(name: "created_at")
  DateTime get data;
  @DateTimeSerializer()
  @JsonKey(name: "created_at")
  set data(DateTime value);
  @override
  double? get price;
  set price(double? value);
  @override
  double? get total;
  set total(double? value);
  @override
  bool? get bold;
  set bold(bool? value);
  @override
  bool get fav;
  set fav(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}
