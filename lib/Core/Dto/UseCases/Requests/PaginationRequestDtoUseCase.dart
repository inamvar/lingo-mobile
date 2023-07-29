import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PaginationRequestDtoUseCase.freezed.dart';
part 'PaginationRequestDtoUseCase.g.dart';

@freezed
class PaginationRequestDtoUseCase with _$PaginationRequestDtoUseCase {
  const factory PaginationRequestDtoUseCase({
    int? pageNumber,
    int? pageSize,
    String? filter,
    String? path,
  }) = _PaginationRequestDtoUseCase;



  factory PaginationRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestDtoUseCaseFromJson(json);
}