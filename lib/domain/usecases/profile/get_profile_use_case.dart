

import 'package:commercial_directory_users/domain/repositories/profile_repository.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../entities/profile_entity/profile_response.dart';

class GetProfileUseCase extends UseCase<ProfileResponse, NoParams> {
  final ProfileRepository profileRepository;

  GetProfileUseCase({required this.profileRepository});
  @override
  Future<Result<ProfileResponse, Exceptions>> call(
    NoParams params,
  ) async {
    return profileRepository.fetchProfile();
  }
}
