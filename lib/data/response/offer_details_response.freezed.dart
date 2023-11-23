// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferDetailsResponse _$OfferDetailsResponseFromJson(Map<String, dynamic> json) {
  return _OfferDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$OfferDetailsResponse {
  Offer get data => throw _privateConstructorUsedError;
  @JsonKey(name: "related_results")
  List<Offer> get relatedResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferDetailsResponseCopyWith<OfferDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferDetailsResponseCopyWith<$Res> {
  factory $OfferDetailsResponseCopyWith(OfferDetailsResponse value,
          $Res Function(OfferDetailsResponse) then) =
      _$OfferDetailsResponseCopyWithImpl<$Res, OfferDetailsResponse>;
  @useResult
  $Res call(
      {Offer data,
      @JsonKey(name: "related_results") List<Offer> relatedResults});

  $OfferCopyWith<$Res> get data;
}

/// @nodoc
class _$OfferDetailsResponseCopyWithImpl<$Res,
        $Val extends OfferDetailsResponse>
    implements $OfferDetailsResponseCopyWith<$Res> {
  _$OfferDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? relatedResults = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Offer,
      relatedResults: null == relatedResults
          ? _value.relatedResults
          : relatedResults // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferCopyWith<$Res> get data {
    return $OfferCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OfferDetailsResponseCopyWith<$Res>
    implements $OfferDetailsResponseCopyWith<$Res> {
  factory _$$_OfferDetailsResponseCopyWith(_$_OfferDetailsResponse value,
          $Res Function(_$_OfferDetailsResponse) then) =
      __$$_OfferDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Offer data,
      @JsonKey(name: "related_results") List<Offer> relatedResults});

  @override
  $OfferCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OfferDetailsResponseCopyWithImpl<$Res>
    extends _$OfferDetailsResponseCopyWithImpl<$Res, _$_OfferDetailsResponse>
    implements _$$_OfferDetailsResponseCopyWith<$Res> {
  __$$_OfferDetailsResponseCopyWithImpl(_$_OfferDetailsResponse _value,
      $Res Function(_$_OfferDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? relatedResults = null,
  }) {
    return _then(_$_OfferDetailsResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Offer,
      relatedResults: null == relatedResults
          ? _value._relatedResults
          : relatedResults // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferDetailsResponse
    with DiagnosticableTreeMixin
    implements _OfferDetailsResponse {
  const _$_OfferDetailsResponse(
      {required this.data,
      @JsonKey(name: "related_results")
      required final List<Offer> relatedResults})
      : _relatedResults = relatedResults;

  factory _$_OfferDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OfferDetailsResponseFromJson(json);

  @override
  final Offer data;
  final List<Offer> _relatedResults;
  @override
  @JsonKey(name: "related_results")
  List<Offer> get relatedResults {
    if (_relatedResults is EqualUnmodifiableListView) return _relatedResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedResults);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OfferDetailsResponse(data: $data, relatedResults: $relatedResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OfferDetailsResponse'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('relatedResults', relatedResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferDetailsResponse &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._relatedResults, _relatedResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(_relatedResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferDetailsResponseCopyWith<_$_OfferDetailsResponse> get copyWith =>
      __$$_OfferDetailsResponseCopyWithImpl<_$_OfferDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferDetailsResponseToJson(
      this,
    );
  }
}

abstract class _OfferDetailsResponse implements OfferDetailsResponse {
  const factory _OfferDetailsResponse(
      {required final Offer data,
      @JsonKey(name: "related_results")
      required final List<Offer> relatedResults}) = _$_OfferDetailsResponse;

  factory _OfferDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_OfferDetailsResponse.fromJson;

  @override
  Offer get data;
  @override
  @JsonKey(name: "related_results")
  List<Offer> get relatedResults;
  @override
  @JsonKey(ignore: true)
  _$$_OfferDetailsResponseCopyWith<_$_OfferDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
