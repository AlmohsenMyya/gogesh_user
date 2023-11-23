import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';
import 'package:commercial_directory_users/domain/request/chat/ad_contact_request.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';

class MakeAdContactUseCase extends UseCase<ConversationEntity, ModelID> {
  final ChatRepository chatRepository;

  MakeAdContactUseCase({required this.chatRepository});
  @override
  Future<Result<ConversationEntity, Exceptions>> call(
    ModelID params,
  ) async {
    return chatRepository.makeAdContact(AdContactRequest(adId: params.id));
  }
}
