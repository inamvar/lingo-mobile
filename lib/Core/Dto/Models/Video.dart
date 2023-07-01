import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Video.freezed.dart';
part 'Video.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    String? title,
    String? examFileName,
    int? courseId,
    int? chapterId,
    dynamic? duration,
    dynamic? size,
    bool? isFree,
    String? status,
    String? podcastStatus,
    String? examFileUrl,
    int? priority,
    String? stockIn,
    String? embedPlayer,
    dynamic? podcastEmbedPlayer,
    bool? isActive,
    String? description,
    String? slug,
    String? videoHls,
    String? podcastHls,
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}