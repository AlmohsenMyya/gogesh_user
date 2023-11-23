import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';

import '../../../core/utils/model_id.dart';
import '../../entities/chat_entity/conversation_response.dart';

class MakeOfferContactUseCase extends UseCase<ConversationEntity, ModelID> {
  final ChatRepository chatRepository;

  MakeOfferContactUseCase({required this.chatRepository});
  @override
  Future<Result<ConversationEntity, Exceptions>> call(
    ModelID params,
  ) async {
    return chatRepository
        .makeOfferContact(OfferContactRequest(offerID: params.id));
  }
}
