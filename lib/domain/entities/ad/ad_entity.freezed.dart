// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ad _$AdFromJson(Map<String, dynamic> json) {
  return _Ad.fromJson(json);
}

/// @nodoc
mixin _$Ad {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "seller_id")
  int? get sellerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  String? get seller => throw _privateConstructorUsedError;
  String? get poster => throw _privateConstructorUsedError;
  @JsonKey(name: "type_commercialActivity")
  ServiceTypeEnum? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdCopyWith<Ad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdCopyWith<$Res> {
  factory $AdCopyWith(Ad value, $Res Function(Ad) then) =
      _$AdCopyWithImpl<$Res, Ad>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "seller_id") int? sellerId,
      String title,
      String? images,
      String? seller,
      String? poster,
      @JsonKey(name: "type_commercialActivity") ServiceTypeEnum? type,
      @JsonKey(name: "created_at") DateTime? date,
      String description,
      double price,
      int? views,
      String? url});
}

/// @nodoc
class _$AdCopyWithImpl<$Res, $Val extends Ad> implements $AdCopyWith<$Res> {
  _$AdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = freezed,
    Object? title = null,
    Object? images = freezed,
    Object? seller = freezed,
    Object? poster = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? description = null,
    Object? price = null,
    Object? views = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceTypeEnum?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdCopyWith<$Res> implements $AdCopyWith<$Res> {
  factory _$$_AdCopyWith(_$_Ad value, $Res Function(_$_Ad) then) =
      __$$_AdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "seller_id") int? sellerId,
      String title,
      String? images,
      String? seller,
      String? poster,
      @JsonKey(name: "type_commercialActivity") ServiceTypeEnum? type,
      @JsonKey(name: "created_at") DateTime? date,
      String description,
      double price,
      int? views,
      String? url});
}

/// @nodoc
class __$$_AdCopyWithImpl<$Res> extends _$AdCopyWithImpl<$Res, _$_Ad>
    implements _$$_AdCopyWith<$Res> {
  __$$_AdCopyWithImpl(_$_Ad _value, $Res Function(_$_Ad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = freezed,
    Object? title = null,
    Object? images = freezed,
    Object? seller = freezed,
    Object? poster = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? description = null,
    Object? price = null,
    Object? views = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Ad(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceTypeEnum?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ad with DiagnosticableTreeMixin implements _Ad {
  const _$_Ad(
      {required this.id,
      @JsonKey(name: "seller_id") required this.sellerId,
      required this.title,
      required this.images,
      required this.seller,
      required this.poster,
      @JsonKey(name: "type_commercialActivity") required this.type,
      @JsonKey(name: "created_at") required this.date,
      required this.description,
      required this.price,
      required this.views,
      this.url});

  factory _$_Ad.fromJson(Map<String, dynamic> json) => _$$_AdFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "seller_id")
  final int? sellerId;
  @override
  final String title;
  @override
  final String? images;
  @override
  final String? seller;
  @override
  final String? poster;
  @override
  @JsonKey(name: "type_commercialActivity")
  final ServiceTypeEnum? type;
  @override
  @JsonKey(name: "created_at")
  final DateTime? date;
  @override
  final String description;
  @override
  final double price;
  @override
  final int? views;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ad(id: $id, sellerId: $sellerId, title: $title, images: $images, seller: $seller, poster: $poster, type: $type, date: $date, description: $description, price: $price, views: $views, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ad'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sellerId', sellerId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('seller', seller))
      ..add(DiagnosticsProperty('poster', poster))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('views', views))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ad &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sellerId, title, images,
      seller, poster, type, date, description, price, views, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdCopyWith<_$_Ad> get copyWith =>
      __$$_AdCopyWithImpl<_$_Ad>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdToJson(
      this,
    );
  }
}

abstract class _Ad implements Ad {
  const factory _Ad(
      {required final int id,
      @JsonKey(name: "seller_id") required final int? sellerId,
      required final String title,
      required final String? images,
      required final String? seller,
      required final String? poster,
      @JsonKey(name: "type_commercialActivity")
      required final ServiceTypeEnum? type,
      @JsonKey(name: "created_at") required final DateTime? date,
      required final String description,
      required final double price,
      required final int? views,
      final String? url}) = _$_Ad;

  factory _Ad.fromJson(Map<String, dynamic> json) = _$_Ad.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "seller_id")
  int? get sellerId;
  @override
  String get title;
  @override
  String? get images;
  @override
  String? get seller;
  @override
  String? get poster;
  @override
  @JsonKey(name: "type_commercialActivity")
  ServiceTypeEnum? get type;
  @override
  @JsonKey(name: "created_at")
  DateTime? get date;
  @override
  String get description;
  @override
  double get price;
  @override
  int? get views;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_AdCopyWith<_$_Ad> get copyWith => throw _privateConstructorUsedError;
}
