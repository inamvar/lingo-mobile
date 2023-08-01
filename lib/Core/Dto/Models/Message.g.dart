// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message()
  ..subject = json['subject'] as String?
  ..body = json['body'] as String?
  ..parentId = json['parentId'] as int?
  ..replies = (json['replies'] as List<dynamic>?)
      ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
      .toList()
  ..seen = json['seen'] as bool?
  ..id = json['id'] as int?
  ..createdAt = json['createdAt'] as String?
  ..updatedAt = json['updatedAt'] as String?;

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'subject': instance.subject,
      'body': instance.body,
      'parentId': instance.parentId,
      'replies': instance.replies,
      'seen': instance.seen,
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
