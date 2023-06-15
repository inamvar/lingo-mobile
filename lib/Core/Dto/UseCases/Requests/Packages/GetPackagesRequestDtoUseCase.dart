import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetPackagesRequestDtoUseCase.freezed.dart';
part 'GetPackagesRequestDtoUseCase.g.dart';

@freezed
class GetPackagesRequestDtoUseCase with _$GetPackagesRequestDtoUseCase {
  const factory GetPackagesRequestDtoUseCase({
    int? pageNumber,
    int? pageSize,
    String? filter,
    String? path,
  }) = _GetPackagesRequestDtoUseCase;



  factory GetPackagesRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$GetPackagesRequestDtoUseCaseFromJson(json);
}