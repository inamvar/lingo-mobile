import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'Message.g.dart';

@JsonSerializable()
class Message {
  Message();

  String? subject;
  String? body;
  int? parentId;
  List<Message>? replies;
  bool? seen;
  int? id;
  String? createdAt;
  String? updatedAt;

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
