// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakeContactRequest _$MakeContactRequestFromJson(Map<String, dynamic> json) =>
    MakeContactRequest(
      content: json['content'] as String,
      subject: json['subject'] as String,
    );

Map<String, dynamic> _$MakeContactRequestToJson(MakeContactRequest instance) =>
    <String, dynamic>{
      'content': instance.content,
      'subject': instance.subject,
    };
