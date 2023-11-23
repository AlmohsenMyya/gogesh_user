// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationCustomerEvent {
  Filter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadConversationSeller,
    required TResult Function(Filter filter) addNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadConversationSeller,
    TResult? Function(Filter filter)? addNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadConversationSeller,
    TResult Function(Filter filter)? addNewConversationOurUPdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadConversationSeller value)
        loadConversationSeller,
    required TResult Function(_AddNewConversationOurUPdate value)
        addNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadConversationSeller value)? loadConversationSeller,
    TResult? Function(_AddNewConversationOurUPdate value)?
        addNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadConversationSeller value)? loadConversationSeller,
    TResult Function(_AddNewConversationOurUPdate value)?
        addNewConversationOurUPdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationCustomerEventCopyWith<ConversationCustomerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCustomerEventCopyWith<$Res> {
  factory $ConversationCustomerEventCopyWith(ConversationCustomerEvent value,
          $Res Function(ConversationCustomerEvent) then) =
      _$ConversationCustomerEventCopyWithImpl<$Res, ConversationCustomerEvent>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class _$ConversationCustomerEventCopyWithImpl<$Res,
        $Val extends ConversationCustomerEvent>
    implements $ConversationCustomerEventCopyWith<$Res> {
  _$ConversationCustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_loadConversationSellerCopyWith<$Res>
    implements $ConversationCustomerEventCopyWith<$Res> {
  factory _$$_loadConversationSellerCopyWith(_$_loadConversationSeller value,
          $Res Function(_$_loadConversationSeller) then) =
      __$$_loadConversationSellerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_loadConversationSellerCopyWithImpl<$Res>
    extends _$ConversationCustomerEventCopyWithImpl<$Res,
        _$_loadConversationSeller>
    implements _$$_loadConversationSellerCopyWith<$Res> {
  __$$_loadConversationSellerCopyWithImpl(_$_loadConversationSeller _value,
      $Res Function(_$_loadConversationSeller) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_loadConversationSeller(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_loadConversationSeller implements _loadConversationSeller {
  const _$_loadConversationSeller({required this.filter});

  @override
  final Filter filter;

  @override
  String toString() {
    return 'ConversationCustomerEvent.loadConversationSeller(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loadConversationSeller &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadConversationSellerCopyWith<_$_loadConversationSeller> get copyWith =>
      __$$_loadConversationSellerCopyWithImpl<_$_loadConversationSeller>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadConversationSeller,
    required TResult Function(Filter filter) addNewConversationOurUPdate,
  }) {
    return loadConversationSeller(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadConversationSeller,
    TResult? Function(Filter filter)? addNewConversationOurUPdate,
  }) {
    return loadConversationSeller?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadConversationSeller,
    TResult Function(Filter filter)? addNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (loadConversationSeller != null) {
      return loadConversationSeller(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadConversationSeller value)
        loadConversationSeller,
    required TResult Function(_AddNewConversationOurUPdate value)
        addNewConversationOurUPdate,
  }) {
    return loadConversationSeller(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadConversationSeller value)? loadConversationSeller,
    TResult? Function(_AddNewConversationOurUPdate value)?
        addNewConversationOurUPdate,
  }) {
    return loadConversationSeller?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadConversationSeller value)? loadConversationSeller,
    TResult Function(_AddNewConversationOurUPdate value)?
        addNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (loadConversationSeller != null) {
      return loadConversationSeller(this);
    }
    return orElse();
  }
}

abstract class _loadConversationSeller implements ConversationCustomerEvent {
  const factory _loadConversationSeller({required final Filter filter}) =
      _$_loadConversationSeller;

  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_loadConversationSellerCopyWith<_$_loadConversationSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewConversationOurUPdateCopyWith<$Res>
    implements $ConversationCustomerEventCopyWith<$Res> {
  factory _$$_AddNewConversationOurUPdateCopyWith(
          _$_AddNewConversationOurUPdate value,
          $Res Function(_$_AddNewConversationOurUPdate) then) =
      __$$_AddNewConversationOurUPdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$_AddNewConversationOurUPdateCopyWithImpl<$Res>
    extends _$ConversationCustomerEventCopyWithImpl<$Res,
        _$_AddNewConversationOurUPdate>
    implements _$$_AddNewConversationOurUPdateCopyWith<$Res> {
  __$$_AddNewConversationOurUPdateCopyWithImpl(
      _$_AddNewConversationOurUPdate _value,
      $Res Function(_$_AddNewConversationOurUPdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_AddNewConversationOurUPdate(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_AddNewConversationOurUPdate implements _AddNewConversationOurUPdate {
  const _$_AddNewConversationOurUPdate({required this.filter});

  @override
  final Filter filter;

  @override
  String toString() {
    return 'ConversationCustomerEvent.addNewConversationOurUPdate(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewConversationOurUPdate &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewConversationOurUPdateCopyWith<_$_AddNewConversationOurUPdate>
      get copyWith => __$$_AddNewConversationOurUPdateCopyWithImpl<
          _$_AddNewConversationOurUPdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) loadConversationSeller,
    required TResult Function(Filter filter) addNewConversationOurUPdate,
  }) {
    return addNewConversationOurUPdate(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? loadConversationSeller,
    TResult? Function(Filter filter)? addNewConversationOurUPdate,
  }) {
    return addNewConversationOurUPdate?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? loadConversationSeller,
    TResult Function(Filter filter)? addNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (addNewConversationOurUPdate != null) {
      return addNewConversationOurUPdate(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadConversationSeller value)
        loadConversationSeller,
    required TResult Function(_AddNewConversationOurUPdate value)
        addNewConversationOurUPdate,
  }) {
    return addNewConversationOurUPdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadConversationSeller value)? loadConversationSeller,
    TResult? Function(_AddNewConversationOurUPdate value)?
        addNewConversationOurUPdate,
  }) {
    return addNewConversationOurUPdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadConversationSeller value)? loadConversationSeller,
    TResult Function(_AddNewConversationOurUPdate value)?
        addNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (addNewConversationOurUPdate != null) {
      return addNewConversationOurUPdate(this);
    }
    return orElse();
  }
}

abstract class _AddNewConversationOurUPdate
    implements ConversationCustomerEvent {
  const factory _AddNewConversationOurUPdate({required final Filter filter}) =
      _$_AddNewConversationOurUPdate;

  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_AddNewConversationOurUPdateCopyWith<_$_AddNewConversationOurUPdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationCustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCustomerStateCopyWith<$Res> {
  factory $ConversationCustomerStateCopyWith(ConversationCustomerState value,
          $Res Function(ConversationCustomerState) then) =
      _$ConversationCustomerStateCopyWithImpl<$Res, ConversationCustomerState>;
}

/// @nodoc
class _$ConversationCustomerStateCopyWithImpl<$Res,
        $Val extends ConversationCustomerState>
    implements $ConversationCustomerStateCopyWith<$Res> {
  _$ConversationCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConversationCustomerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ConversationCustomerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationCustomerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$ConversationCustomerStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'ConversationCustomerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements ConversationCustomerState {
  const factory _loading() = _$_loading;
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
    extends _$ConversationCustomerStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
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
  const _$_Error(this.error);

  @override
  final ErrorState error;

  @override
  String toString() {
    return 'ConversationCustomerState.error(error: $error)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ConversationCustomerState {
  const factory _Error(final ErrorState error) = _$_Error;

  ErrorState get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$ConversationCustomerStateCopyWithImpl<$Res, _$_NetworkError>
    implements _$$_NetworkErrorCopyWith<$Res> {
  __$$_NetworkErrorCopyWithImpl(
      _$_NetworkError _value, $Res Function(_$_NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'ConversationCustomerState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements ConversationCustomerState {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_LastPageLoadedCopyWith<$Res> {
  factory _$$_LastPageLoadedCopyWith(
          _$_LastPageLoaded value, $Res Function(_$_LastPageLoaded) then) =
      __$$_LastPageLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationEntity> conversation});
}

/// @nodoc
class __$$_LastPageLoadedCopyWithImpl<$Res>
    extends _$ConversationCustomerStateCopyWithImpl<$Res, _$_LastPageLoaded>
    implements _$$_LastPageLoadedCopyWith<$Res> {
  __$$_LastPageLoadedCopyWithImpl(
      _$_LastPageLoaded _value, $Res Function(_$_LastPageLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
  }) {
    return _then(_$_LastPageLoaded(
      conversation: null == conversation
          ? _value._conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as List<ConversationEntity>,
    ));
  }
}

/// @nodoc

class _$_LastPageLoaded implements _LastPageLoaded {
  const _$_LastPageLoaded(
      {required final List<ConversationEntity> conversation})
      : _conversation = conversation;

  final List<ConversationEntity> _conversation;
  @override
  List<ConversationEntity> get conversation {
    if (_conversation is EqualUnmodifiableListView) return _conversation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversation);
  }

  @override
  String toString() {
    return 'ConversationCustomerState.lastPageLoaded(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastPageLoaded &&
            const DeepCollectionEquality()
                .equals(other._conversation, _conversation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      __$$_LastPageLoadedCopyWithImpl<_$_LastPageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return lastPageLoaded(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return lastPageLoaded?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return lastPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return lastPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (lastPageLoaded != null) {
      return lastPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _LastPageLoaded implements ConversationCustomerState {
  const factory _LastPageLoaded(
          {required final List<ConversationEntity> conversation}) =
      _$_LastPageLoaded;

  List<ConversationEntity> get conversation;
  @JsonKey(ignore: true)
  _$$_LastPageLoadedCopyWith<_$_LastPageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationEntity> conversation, dynamic pageKey});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ConversationCustomerStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? pageKey = freezed,
  }) {
    return _then(_$_Loaded(
      conversation: null == conversation
          ? _value._conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as List<ConversationEntity>,
      pageKey: freezed == pageKey ? _value.pageKey! : pageKey,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<ConversationEntity> conversation, this.pageKey})
      : _conversation = conversation;

  final List<ConversationEntity> _conversation;
  @override
  List<ConversationEntity> get conversation {
    if (_conversation is EqualUnmodifiableListView) return _conversation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversation);
  }

  @override
  final dynamic pageKey;

  @override
  String toString() {
    return 'ConversationCustomerState.loaded(conversation: $conversation, pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._conversation, _conversation) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversation),
      const DeepCollectionEquality().hash(pageKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return loaded(conversation, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return loaded?.call(conversation, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(conversation, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ConversationCustomerState {
  const factory _Loaded(
      {required final List<ConversationEntity> conversation,
      final dynamic pageKey}) = _$_Loaded;

  List<ConversationEntity> get conversation;
  dynamic get pageKey;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddedNewConversationOurUPdateCopyWith<$Res> {
  factory _$$_AddedNewConversationOurUPdateCopyWith(
          _$_AddedNewConversationOurUPdate value,
          $Res Function(_$_AddedNewConversationOurUPdate) then) =
      __$$_AddedNewConversationOurUPdateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationEntity> conversation, dynamic pageKey});
}

/// @nodoc
class __$$_AddedNewConversationOurUPdateCopyWithImpl<$Res>
    extends _$ConversationCustomerStateCopyWithImpl<$Res,
        _$_AddedNewConversationOurUPdate>
    implements _$$_AddedNewConversationOurUPdateCopyWith<$Res> {
  __$$_AddedNewConversationOurUPdateCopyWithImpl(
      _$_AddedNewConversationOurUPdate _value,
      $Res Function(_$_AddedNewConversationOurUPdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? pageKey = freezed,
  }) {
    return _then(_$_AddedNewConversationOurUPdate(
      conversation: null == conversation
          ? _value._conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as List<ConversationEntity>,
      pageKey: freezed == pageKey ? _value.pageKey! : pageKey,
    ));
  }
}

/// @nodoc

class _$_AddedNewConversationOurUPdate
    implements _AddedNewConversationOurUPdate {
  const _$_AddedNewConversationOurUPdate(
      {required final List<ConversationEntity> conversation, this.pageKey})
      : _conversation = conversation;

  final List<ConversationEntity> _conversation;
  @override
  List<ConversationEntity> get conversation {
    if (_conversation is EqualUnmodifiableListView) return _conversation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversation);
  }

  @override
  final dynamic pageKey;

  @override
  String toString() {
    return 'ConversationCustomerState.addedNewConversationOurUPdate(conversation: $conversation, pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedNewConversationOurUPdate &&
            const DeepCollectionEquality()
                .equals(other._conversation, _conversation) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversation),
      const DeepCollectionEquality().hash(pageKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedNewConversationOurUPdateCopyWith<_$_AddedNewConversationOurUPdate>
      get copyWith => __$$_AddedNewConversationOurUPdateCopyWithImpl<
          _$_AddedNewConversationOurUPdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorState error) error,
    required TResult Function() networkError,
    required TResult Function(List<ConversationEntity> conversation)
        lastPageLoaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        loaded,
    required TResult Function(
            List<ConversationEntity> conversation, dynamic pageKey)
        addedNewConversationOurUPdate,
  }) {
    return addedNewConversationOurUPdate(conversation, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorState error)? error,
    TResult? Function()? networkError,
    TResult? Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult? Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
  }) {
    return addedNewConversationOurUPdate?.call(conversation, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorState error)? error,
    TResult Function()? networkError,
    TResult Function(List<ConversationEntity> conversation)? lastPageLoaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        loaded,
    TResult Function(List<ConversationEntity> conversation, dynamic pageKey)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (addedNewConversationOurUPdate != null) {
      return addedNewConversationOurUPdate(conversation, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_LastPageLoaded value) lastPageLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedNewConversationOurUPdate value)
        addedNewConversationOurUPdate,
  }) {
    return addedNewConversationOurUPdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_LastPageLoaded value)? lastPageLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
  }) {
    return addedNewConversationOurUPdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_LastPageLoaded value)? lastPageLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedNewConversationOurUPdate value)?
        addedNewConversationOurUPdate,
    required TResult orElse(),
  }) {
    if (addedNewConversationOurUPdate != null) {
      return addedNewConversationOurUPdate(this);
    }
    return orElse();
  }
}

abstract class _AddedNewConversationOurUPdate
    implements ConversationCustomerState {
  const factory _AddedNewConversationOurUPdate(
      {required final List<ConversationEntity> conversation,
      final dynamic pageKey}) = _$_AddedNewConversationOurUPdate;

  List<ConversationEntity> get conversation;
  dynamic get pageKey;
  @JsonKey(ignore: true)
  _$$_AddedNewConversationOurUPdateCopyWith<_$_AddedNewConversationOurUPdate>
      get copyWith => throw _privateConstructorUsedError;
}
