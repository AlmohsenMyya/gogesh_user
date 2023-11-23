import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';

import '../../../core/paginated/Conversation_paginated/conversation_paginated.dart';

class GetConversationCustomerUseCase
    extends UseCase<ConversationPaginated, Filter> {
  final ChatRepository chatRepository;

  GetConversationCustomerUseCase({required this.chatRepository});
  @override
  Future<Result<ConversationPaginated, Exceptions>> call(
    Filter params,
  ) async {
    return chatRepository.fetchConversationCustomer(params.toJson());
  }
}
