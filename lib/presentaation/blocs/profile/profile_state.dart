part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.error({String? error}) = _Error;
  const factory ProfileState.loaded({required ProfileResponse data}) = _Loaded;
  const factory ProfileState.succes() = _Succes;
  const factory ProfileState.loadingEdit() = _loadingEd;
}
