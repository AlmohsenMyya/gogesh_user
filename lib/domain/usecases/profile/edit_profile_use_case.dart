import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../repositories/profile_repository.dart';
import '../../request/profile/edit_profile_request.dart';

class EditProfileUseCase extends UseCase<String, EditProfileRequest> {
  final ProfileRepository profileRepository;

  EditProfileUseCase({required this.profileRepository});
  @override
  Future<Result<String, Exceptions>> call(
    EditProfileRequest params,
  ) async {
    return profileRepository.editProfile(params);
  }
}
