import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../Models/SearchItem.dart';

part 'SearchResponseDtoUseCase.freezed.dart';
part 'SearchResponseDtoUseCase.g.dart';

@freezed
class SearchResponseDtoUseCase with _$SearchResponseDtoUseCase {
  const factory SearchResponseDtoUseCase({
    List<SearchItem>? data,
    int? pageNumber,
    int? pageSize,
    int? totalRecords,
    bool? hasPreviousPage,
    int? totalPages,
    bool? hasNextPage
  }) = _SearchResponseDtoUseCase;



  factory SearchResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseDtoUseCaseFromJson(json);
}