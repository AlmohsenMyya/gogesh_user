
import 'package:commercial_directory_users/core/paginated/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/chat_entity/conversation_response.dart';

part 'conversation_paginated.freezed.dart';
part 'conversation_paginated.g.dart';

@freezed
class ConversationPaginated with _$ConversationPaginated {
  factory ConversationPaginated({required List<ConversationEntity> data, Meta ?meta}) = _ConversationPaginated;
	
  factory ConversationPaginated.fromJson(Map<String, dynamic> json) =>
			_$ConversationPaginatedFromJson(json);
}
