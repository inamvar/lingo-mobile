import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../Models/Package.dart';

part 'GetPackagesResponseDtoUseCase.freezed.dart';
part 'GetPackagesResponseDtoUseCase.g.dart';

@freezed
class GetPackagesResponseDtoUseCase with _$GetPackagesResponseDtoUseCase {
  const factory GetPackagesResponseDtoUseCase({
    List<Package>? data,
    int? pageNumber,
    int? pageSize,
    int? totalRecords,
    bool? hasPreviousPage,
    int? totalPages,
    bool? hasNextPage
  }) = _GetPackagesResponseDtoUseCase;
  


  factory GetPackagesResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$GetPackagesResponseDtoUseCaseFromJson(json);
}