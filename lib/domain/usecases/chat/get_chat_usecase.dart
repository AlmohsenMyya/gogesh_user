import 'dart:io';

import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/chat_paginated/chat_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';


class GetChatUseCase extends UseCase<ChatPaginated, Filter> {
  final ChatRepository chatRepository;

  GetChatUseCase({required this.chatRepository});
  @override
  Future<Result<ChatPaginated, Exceptions>> call(
      Filter params,
  ) async {
    return chatRepository.fetchChat(params);
  }
}
