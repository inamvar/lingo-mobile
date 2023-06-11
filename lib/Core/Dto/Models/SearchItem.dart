import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'SearchItem.freezed.dart';
part 'SearchItem.g.dart';

@freezed
class SearchItem with _$SearchItem {
  const factory SearchItem({
    String? productType,
    String? title,
    String? slug,
    int? id,
    String? firstCourseSlug,
  }) = _SearchItem;



  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);
}