import 'package:commercial_directory_users/core/result/result.dart';


import '../../core/excptions/exceptions.dart';

abstract class PrivacyRepository {
  Future<Result<String, Exceptions>> fetchPrivacy();
}
