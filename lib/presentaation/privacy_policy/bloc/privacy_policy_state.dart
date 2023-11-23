part of 'privacy_policy_bloc.dart';

@freezed
class PrivacyPolicyState with _$PrivacyPolicyState {
  const factory PrivacyPolicyState.initial() = _Initial;
  const factory PrivacyPolicyState.dataloaded({required String privacy}) =
      _dataloaded;
  const factory PrivacyPolicyState.empty() = _empty;
  const factory PrivacyPolicyState.error() = _error;

  const factory PrivacyPolicyState.loading() = _loading;
}
