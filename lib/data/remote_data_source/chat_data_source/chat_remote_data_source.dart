import 'dart:async';
import 'package:commercial_directory_users/core/paginated/Conversation_paginated/conversation_paginated.dart';
import 'package:commercial_directory_users/core/paginated/chat_paginated/chat_paginated.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import '../../../domain/request/chat/ad_contact_request.dart';
import '../../../domain/request/chat/support_request.dart';
part 'chat_remote_data_source.g.dart';

@RestApi(
  baseUrl: "https://api.gogesh.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class ChatRemoteDataSource {
  factory ChatRemoteDataSource(Dio dio, {String baseUrl}) =
      _ChatRemoteDataSource;

  @POST('/customer/makeContact')
  Future<HttpResponse> makeContact({
    @Body() required MakeContactRequest body,
  });

  @POST('/customer/makeContactWithSeller')
  Future<HttpResponse> makeOfferContact({
    @Body() required OfferContactRequest body,
  });
  @POST('/customer/makeContactWithAdsSeller')
  Future<HttpResponse> makeAdContact({
    @Body() required AdContactRequest body,
  });
  @POST('/customer/sendMessage')
  Future<HttpResponse<ChatEntity>> sendMessage(
      {@Body() required FormData body,
      @Query("type") String? type,
      @Header("X-Socket-Id") String? socketId});
  @GET('/customer/messages/{id}')
  Future<HttpResponse<ChatPaginated>> getChat({
    @Path() required int id,
    @Queries() required Map<String, dynamic> queries,
  });

  @GET('/customer/messages')
  Future<HttpResponse<ConversationPaginated>> getConversationSuppprt({
    @Queries() required Map<String, dynamic> queries,
  });
  @GET('/customer/messages')
  Future<HttpResponse<ConversationPaginated>> getConversationCustomer({
    @Queries() required Map<String, dynamic> queries,
  });
}

FutureOr<ChatPaginated> deserializeChatPaginated(Map<String, dynamic> json) =>
    ChatPaginated.fromJson(json);
FutureOr<ConversationEntity> deserializeConversationEntity(
        Map<String, dynamic> json) =>
    ConversationEntity.fromJson(json);

FutureOr<ConversationPaginated> deserializeConversationPaginated(
        Map<String, dynamic> json) =>
    ConversationPaginated.fromJson(json);

FutureOr<ChatEntity> deserializeChatEntity(Map<String, dynamic> json) =>
    ChatEntity.fromJson(json);
