import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/PurchasedCourse.dart';

part 'PurchasedCoursesResponse.freezed.dart';
part 'PurchasedCoursesResponse.g.dart';

@freezed
class PurchasedCoursesResponse with _$PurchasedCoursesResponse {
  const factory PurchasedCoursesResponse({
    List<PurchasedCourse>? data,
    int? pageNumber,
    int? pageSize,
    int? totalRecords,
    bool? hasPreviousPage,
    int? totalPages,
    bool? hasNextPage,
  }) = _PurchasedCoursesResponse;

  factory PurchasedCoursesResponse.fromJson(Map<String, dynamic> json) => _$PurchasedCoursesResponseFromJson(json);
}