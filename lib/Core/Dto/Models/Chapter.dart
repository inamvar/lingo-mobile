import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'Video.dart';

part 'Chapter.freezed.dart';
part 'Chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    String? title,
    dynamic? description,
    int? courseId,
    List<Video>? videos,
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);
}