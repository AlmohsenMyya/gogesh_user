import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/privacy_policy_repository.dart';

class GetPrivacyUseCase extends UseCase<String,NoParams> {
  final PrivacyRepository privacyRepository;

  GetPrivacyUseCase({required this.privacyRepository});
  @override
  Future<Result<String, Exceptions>> call(
    NoParams params,
  ) async {
    return privacyRepository.fetchPrivacy();

   
  }
}