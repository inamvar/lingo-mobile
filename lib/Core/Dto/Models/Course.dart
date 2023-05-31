import 'package:freezed_annotation/freezed_annotation.dart';

import 'Discount.dart';
import 'Pricing.dart';

part 'Course.freezed.dart';
part 'Course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    String? title,
    String? description,
    String? slug,
    List<String>? tags,
    int? flowStep,
    dynamic? code,
    dynamic? categories,
    int? availableMonth,
    int? sellingType,
    List<dynamic>? chapters,
    dynamic? teacher,
    dynamic? teacherId,
    dynamic? duration,
    String? imageName,
    dynamic? imageBucket,
    String? thumbnailImageUrl,
    dynamic? package,
    int? packageId,
    List<Pricing>? pricings,
    dynamic? currentVideo,
    dynamic? costType,
    Discount? discount,
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}