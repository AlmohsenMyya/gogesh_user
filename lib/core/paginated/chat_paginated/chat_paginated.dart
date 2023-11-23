
import 'package:commercial_directory_users/core/paginated/meta.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_paginated.freezed.dart';
part 'chat_paginated.g.dart';

@freezed
class ChatPaginated with _$ChatPaginated {
  factory ChatPaginated({required List<ChatEntity> data, required Meta meta}) = _ChatPaginated;
	
  factory ChatPaginated.fromJson(Map<String, dynamic> json) =>
			_$ChatPaginatedFromJson(json);
}
