import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../extensions/string_extensions.dart';

part 'exceptions.freezed.dart';

extension ExceptionHandeler on DioException {
  Exceptions handelException() {
    if (response?.statusCode! == 422) {
      return Exceptions.emailInvalude("this_email_already_taken".tr());
    }
    if (error != null) {
      switch (error.runtimeType) {
        case SocketException:
          return const Exceptions.network("there_is_no_internet_connection");
        default:
          return const Exceptions.other("something_went_error");
      }
    } else {
      return const Exceptions.other("something_went_error");
    }
  }
}

@freezed
// abstract class Exceptions with Exception, _$Exceptions {
class Exceptions with _$Exceptions implements Exception {
  const Exceptions._() : super();

  const factory Exceptions.network(String message) = NetworkException;

  const factory Exceptions.other(dynamic data) = OtherException;

  const factory Exceptions.locationServiceNotEnabled(dynamic data) =
      LocationServiceNotEnabled;

  const factory Exceptions.emailInvalude(dynamic data) = EmailInvalude;
  const factory Exceptions.invalidConfirmationCode(String data) =
      InvalidConfirmationCode;

  const factory Exceptions.passwordInvalude(dynamic data) = PasswordInvalude;

  const factory Exceptions.wrongCredentials(dynamic data) =
      WrongCredentialsException;

  String get localizedErrorMessage {
    return when<String>(
      network: (message) {
        'Request error:'.log();

        return 'Network error';
      },
      other: (o) {
        'Unknown error: $o'.log();

        return o ?? 'Ops! Something went wrong!..';
      },
      emailInvalude: (e) {
        'Unknown error: $e'.log();

        return e ?? 'Ops! Something went wrong!..';
      },
      passwordInvalude: (p) {
        'Unknown error: $p'.log();

        return p ?? 'Ops! Something went wrong!..';
      },
      wrongCredentials: (data) {
        return "$data";
      },
      locationServiceNotEnabled: (data) {
        'Unknown error: $data'.log();

        return data ?? 'Ops! Something went wrong!..';
      },
      invalidConfirmationCode: (String data) {
        return data ?? 'Ops! Something went wrong!..';
      },
    );
  }
}
