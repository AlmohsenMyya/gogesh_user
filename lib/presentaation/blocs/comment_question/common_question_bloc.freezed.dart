// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonQuestionEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonQuestionEventCopyWith<CommonQuestionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonQuestionEventCopyWith<$Res> {
  factory $CommonQuestionEventCopyWith(
          CommonQuestionEvent value, $Res Function(CommonQuestionEvent) then) =
      _$CommonQuestionEventCopyWithImpl<$Res, CommonQuestionEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$CommonQuestionEventCopyWithImpl<$Res, $Val extends CommonQuestionEvent>
    implements $CommonQuestionEventCopyWith<$Res> {
  _$CommonQuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $CommonQuestionEventCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CommonQuestionEventCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_Loaded(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'CommonQuestionEvent.load(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) load,
  }) {
    return load(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? load,
  }) {
    return load?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CommonQuestionEvent {
  const factory _Loaded({required final int page}) = _$_Loaded;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function(List<CommonQuestion> data, int page) dataLoaded,
    required TResult Function(List<CommonQuestion> data) lastPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult? Function(List<CommonQuestion> data)? lastPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult Function(List<CommonQuestion> data)? lastPageLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonQuestionStateCopyWith<$Res> {
  factory $CommonQuestionStateCopyWith(
          CommonQuestionState value, $Res Function(CommonQuestionState) then) =
      _$CommonQuestionStateCopyWithImpl<$Res, CommonQuestionState>;
}

/// @nodoc
class _$CommonQuestionStateCopyWithImpl<$Res, $Val extends CommonQuestionState>
    implements $CommonQuestionStateCopyWith<$Res> {
  _$CommonQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CommonQuestionStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CommonQuestionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function(List<CommonQuestion> data, int page) dataLoaded,
    required TResult Function(List<CommonQuestion> data) lastPageLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult? Function(List<CommonQuestion> data)? lastPageLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult Function(List<CommonQuestion> data)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CommonQuestionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorState error});

  $ErrorStateCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CommonQuestionStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<$Res> get error {
    return $ErrorStateCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final ErrorState error;

  @override
  String toString() {
    return 'CommonQuestionState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function(List<CommonQuestion> data, int page) dataLoaded,
    required TResult Function(List<CommonQuestion> data) lastPageLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult? Function(List<CommonQuestion> data)? lastPageLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult Function(List<CommonQuestion> data)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CommonQuestionState {
  const factory _Error({required final ErrorState error}) = _$_Error;

  ErrorState get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataLoadedCopyWith<$Res> {
  factory _$$_DataLoadedCopyWith(
          _$_DataLoaded value, $Res Function(_$_DataLoaded) then) =
      __$$_DataLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CommonQuestion> data, int page});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$CommonQuestionStateCopyWithImpl<$Res, _$_DataLoaded>
    implements _$$_DataLoadedCopyWith<$Res> {
  __$$_DataLoadedCopyWithImpl(
      _$_DataLoaded _value, $Res Function(_$_DataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
  }) {
    return _then(_$_DataLoaded(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CommonQuestion>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded(
      {required final List<CommonQuestion> data, required this.page})
      : _data = data;

  final List<CommonQuestion> _data;
  @override
  List<CommonQuestion> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int page;

  @override
  String toString() {
    return 'CommonQuestionState.dataLoaded(data: $data, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function(List<CommonQuestion> data, int page) dataLoaded,
    required TResult Function(List<CommonQuestion> data) lastPageLoaded,
  }) {
    return dataLoaded(data, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult? Function(List<CommonQuestion> data)? lastPageLoaded,
  }) {
    return dataLoaded?.call(data, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult Function(List<CommonQuestion> data)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(data, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements CommonQuestionState {
  const factory _DataLoaded(
      {required final List<CommonQuestion> data,
      required final int page}) = _$_DataLoaded;

  List<CommonQuestion> get data;
  int get page;
  @JsonKey(ignore: true)
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastPageLoadedCopyWith<$Res> {
  factory _$$_LastPageLoadedCopyWith(
          _$_LastPageLoaded value, $Res Function(_$_LastPageLoaded) then) =
      __$$_LastPageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CommonQuestion> data});
}

/// @nodoc
class __$$_LastPageLoadedCopyWithImpl<$Res>
    extends _$CommonQuestionStateCopyWithImpl<$Res, _$_LastPageLoaded>
    implements _$$_LastPageLoadedCopyWith<$Res> {
  __$$_LastPageLoadedCopyWithImpl(
      _$_LastPageLoaded _value, $Res Function(_$_LastPageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LastPageLoaded(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CommonQuestion>,
    ));
  }
}

/// @nodoc

class _$_LastPageLoaded implements _LastPageLoaded {
  const _$_LastPageLoaded({required final List<CommonQuestion> data})
      : _data = data;

  final List<CommonQuestion> _data;
  @override
  List<CommonQuestion> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommonQuestionState.lastPageLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastPageLoaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      __$$_LastPageLoadedCopyWithImpl<_$_LastPageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function(List<CommonQuestion> data, int page) dataLoaded,
    required TResult Function(List<CommonQuestion> data) lastPageLoaded,
  }) {
    return lastPageLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult? Function(List<CommonQuestion> data)? lastPageLoaded,
  }) {
    return lastPageLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function(List<CommonQuestion> data, int page)? dataLoaded,
    TResult Function(List<CommonQuestion> data)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
  }) {
    return lastPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
  }) {
    return lastPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _LastPageLoaded implements CommonQuestionState {
  const factory _LastPageLoaded({required final List<CommonQuestion> data}) =
      _$_LastPageLoaded;

  List<CommonQuestion> get data;
  @JsonKey(ignore: true)
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
