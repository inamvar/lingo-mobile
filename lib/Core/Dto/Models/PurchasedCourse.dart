import 'package:freezed_annotation/freezed_annotation.dart';

part 'PurchasedCourse.freezed.dart';
part 'PurchasedCourse.g.dart';

@freezed
class PurchasedCourse with _$PurchasedCourse {
  const factory PurchasedCourse({
    int? id,
    String? thumbnailImageUrl,
    String? title,
    String? description,
    String? slug,
  }) = _PurchasedCourse;

  factory PurchasedCourse.fromJson(Map<String, dynamic> json) =>
      _$PurchasedCourseFromJson(json);
}
