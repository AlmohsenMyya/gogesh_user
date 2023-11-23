import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';

import '../../entities/chat_entity/chat_response.dart';
import '../../request/chat/send_message_request.dart';

class SendMessageUseCase extends UseCase<ChatEntity, SendMessageRequest> {
  final ChatRepository chatRepository;

  SendMessageUseCase({required this.chatRepository});
  @override
  Future<Result<ChatEntity, Exceptions>> call(
    SendMessageRequest params,
  ) async {
    return chatRepository.sendMessage(params, params.type, params.socketID);
  }
}
