import 'dart:io';

import 'package:commercial_directory_users/core/excptions/exceptions.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/Conversation_paginated/conversation_paginated.dart';
import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/data/remote_data_source/chat_data_source/chat_remote_data_source.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/chat_response.dart';
import 'package:commercial_directory_users/domain/entities/chat_entity/conversation_response.dart';
import 'package:commercial_directory_users/domain/repositories/chat_reository.dart';
import 'package:commercial_directory_users/domain/request/chat/ad_contact_request.dart';
import 'package:commercial_directory_users/domain/request/chat/offer_contact_request.dart';
import 'package:dio/dio.dart';

import '../../core/paginated/chat_paginated/chat_paginated.dart';
import '../../domain/request/chat/send_message_request.dart';
import '../../domain/request/chat/support_request.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource dataSource;
  final LocalDataSource localDataSource;

  ChatRepositoryImpl({required this.dataSource, required this.localDataSource});

  @override
  Future<Result<String, Exceptions>> makeChat(
      MakeContactRequest request) async {
    try {
      final result = await dataSource.makeContact(
        body: request,
      );

      return const Result.success(data: '');
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      // print('object');
      // print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }

  @override
  Future<Result<ConversationPaginated, Exceptions>> fetchConversationSupport(
      Map<String, dynamic> filter) async {
    try {
      final result = await dataSource.getConversationSuppprt(queries: filter);

      return Result.success(data: result.data);
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      // print('object');
      // print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }

  @override
  Future<Result<ChatPaginated, Exceptions>> fetchChat(Filter params) async {
    try {
      final result = await dataSource.getChat(
          id: params.id ?? 0, queries: params.toJson());

      return Result.success(data: result.data);
    } on DioException catch (ex) {
      // print(ex.message);
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (e) {
      // print(e);
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      // print('object');
      // print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }

  @override
  Future<Result<ChatEntity, Exceptions>> sendMessage(
      SendMessageRequest request, String? type, String? socketId) async {
    try {
      final result = await dataSource.sendMessage(
          body: FormData.fromMap(
            {
              "contact_id": request.contactId,
              "message": request.message,
              "attachment": request.attachement == null
                  ? null
                  : await MultipartFile.fromFile(request.attachement!),
            },
          ),
          type: type,
          socketId: socketId);

      return Result.success(data: result.data);
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(error: Exceptions.other(''));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }

  @override
  Future<Result<ConversationPaginated, Exceptions>> fetchConversationCustomer(
      Map<String, dynamic> filter) async {
    try {
      final result = await dataSource.getConversationCustomer(queries: filter);

      return Result.success(data: result.data);
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      // print('object');
      // print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }

  @override
  Future<Result<ConversationEntity, Exceptions>> makeOfferContact(
      OfferContactRequest request) async {
    try {
      final result = await dataSource.makeOfferContact(
        body: request,
      );
      return Result.success(
          data: ConversationEntity.fromJson(result.data["data"]));
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      // print('object');
      // print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }

  @override
  Future<Result<ConversationEntity, Exceptions>> makeAdContact(
      AdContactRequest request) async {
    try {
      final result = await dataSource.makeAdContact(
        body: request,
      );
      return Result.success(
          data: ConversationEntity.fromJson(result.data["data"]));
    } on DioException catch (ex) {
      if (ex.error is SocketException) {
        return const Result.failure(error: Exceptions.network(""));
      }

      return Result.failure(
          error: Exceptions.other(ex.response?.data["message"]));
    } on HttpException catch (e) {
      return Result.failure(error: Exceptions.other(e.message));
    } catch (e) {
      // print('object');
      // print(e.toString());
      return const Result.failure(
          error: Exceptions.other("something_went_wrong"));
    }
  }
}
