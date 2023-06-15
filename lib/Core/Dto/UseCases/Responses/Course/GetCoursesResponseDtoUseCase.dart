import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';

part 'GetCoursesResponseDtoUseCase.freezed.dart';
part 'GetCoursesResponseDtoUseCase.g.dart';

@freezed
class GetCoursesResponseDtoUseCase with _$GetCoursesResponseDtoUseCase {
  const factory GetCoursesResponseDtoUseCase({
    List<Course>? data,
    int? pageNumber,
    int? pageSize,
    int? totalRecords,
    bool? hasPreviousPage,
    int? totalPages,
    bool? hasNextPage,
  }) = _GetCoursesResponseDtoUseCase;



  factory GetCoursesResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$GetCoursesResponseDtoUseCaseFromJson(json);
}