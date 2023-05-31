import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'Course.dart';

part 'Package.freezed.dart';
part 'Package.g.dart';

@freezed
class Package with _$Package {
  const factory Package({
    String? name,
    String? description,
    String? thumbnailImageName,
    dynamic? thumbnailImageBucket,
    String? thumbnailUrl,
    List<Course>? courses,
    String? stockIn,
    String? slug,
    dynamic? firstCourseSlug,
    String? costType,
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);
}