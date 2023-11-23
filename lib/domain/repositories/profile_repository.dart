import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';

import '../request/profile/edit_password_request.dart';
import '../request/profile/edit_profile_request.dart';

abstract class ProfileRepository {
  Future<Result<ProfileResponse, Exceptions>> fetchProfile();
  Future<Result<String, Exceptions>> editProfile(EditProfileRequest params);
  Future<Result<String, Exceptions>> changePassword(EditPasswordRequest params);
}
