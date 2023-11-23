import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/Conversation_paginated/conversation_paginated.dart';
import 'package:commercial_directory_users/core/paginated/chat_paginated/chat_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/domain/request/chat/ad_contact_request.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';

import '../entities/chat_entity/chat_response.dart';
import '../entities/chat_entity/conversation_response.dart';
import '../request/chat/send_message_request.dart';
import '../request/chat/support_request.dart';

abstract class ChatRepository {
  Future<Result<ConversationPaginated, Exceptions>> fetchConversationSupport(
      Map<String, dynamic> filter);
  Future<Result<ConversationPaginated, Exceptions>> fetchConversationCustomer(
      Map<String, dynamic> filter);
  Future<Result<ChatPaginated, Exceptions>> fetchChat(Filter filter);
  Future<Result<ConversationEntity, Exceptions>> makeOfferContact(
    OfferContactRequest request,
  );
  Future<Result<ConversationEntity, Exceptions>> makeAdContact(
    AdContactRequest request,
  );

  Future<Result<String, Exceptions>> makeChat(MakeContactRequest request);
  Future<Result<ChatEntity, Exceptions>> sendMessage(
      SendMessageRequest request, String? type, String? socketId);
}
