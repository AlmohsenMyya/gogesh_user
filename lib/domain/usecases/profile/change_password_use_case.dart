import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../repositories/profile_repository.dart';
import '../../request/profile/edit_password_request.dart';

class ChangePasswordUseCase extends UseCase<String, EditPasswordRequest> {
  final ProfileRepository profileRepository;

  ChangePasswordUseCase({required this.profileRepository});
  @override
  Future<Result<String, Exceptions>> call(
    EditPasswordRequest params,
  ) async {
    return profileRepository.changePassword(params);
  }
}
