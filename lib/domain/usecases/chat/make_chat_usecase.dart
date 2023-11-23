import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';

import '../../request/chat/support_request.dart';

class MakeChatUseCase extends UseCase<String, MakeContactRequest> {
  final ChatRepository chatRepository;

  MakeChatUseCase({required this.chatRepository});
  @override
  Future<Result<String, Exceptions>> call(
    MakeContactRequest params,
  ) async {
    return chatRepository.makeChat(params);
  }
}
