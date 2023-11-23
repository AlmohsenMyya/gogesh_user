// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonQuestion _$CommonQuestionFromJson(Map<String, dynamic> json) {
  return _CommonQuestion.fromJson(json);
}

/// @nodoc
mixin _$CommonQuestion {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonQuestionCopyWith<CommonQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonQuestionCopyWith<$Res> {
  factory $CommonQuestionCopyWith(
          CommonQuestion value, $Res Function(CommonQuestion) then) =
      _$CommonQuestionCopyWithImpl<$Res, CommonQuestion>;
  @useResult
  $Res call({int id, String question, String answer});
}

/// @nodoc
class _$CommonQuestionCopyWithImpl<$Res, $Val extends CommonQuestion>
    implements $CommonQuestionCopyWith<$Res> {
  _$CommonQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonQuestionCopyWith<$Res>
    implements $CommonQuestionCopyWith<$Res> {
  factory _$$_CommonQuestionCopyWith(
          _$_CommonQuestion value, $Res Function(_$_CommonQuestion) then) =
      __$$_CommonQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question, String answer});
}

/// @nodoc
class __$$_CommonQuestionCopyWithImpl<$Res>
    extends _$CommonQuestionCopyWithImpl<$Res, _$_CommonQuestion>
    implements _$$_CommonQuestionCopyWith<$Res> {
  __$$_CommonQuestionCopyWithImpl(
      _$_CommonQuestion _value, $Res Function(_$_CommonQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$_CommonQuestion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonQuestion
    with DiagnosticableTreeMixin
    implements _CommonQuestion {
  const _$_CommonQuestion(
      {required this.id, required this.question, required this.answer});

  factory _$_CommonQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_CommonQuestionFromJson(json);

  @override
  final int id;
  @override
  final String question;
  @override
  final String answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonQuestion(id: $id, question: $question, answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonQuestion'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonQuestionCopyWith<_$_CommonQuestion> get copyWith =>
      __$$_CommonQuestionCopyWithImpl<_$_CommonQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonQuestionToJson(
      this,
    );
  }
}

abstract class _CommonQuestion implements CommonQuestion {
  const factory _CommonQuestion(
      {required final int id,
      required final String question,
      required final String answer}) = _$_CommonQuestion;

  factory _CommonQuestion.fromJson(Map<String, dynamic> json) =
      _$_CommonQuestion.fromJson;

  @override
  int get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_CommonQuestionCopyWith<_$_CommonQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
