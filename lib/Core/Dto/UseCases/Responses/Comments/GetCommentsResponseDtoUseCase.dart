
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';

part 'GetCommentsResponseDtoUseCase.freezed.dart';
part 'GetCommentsResponseDtoUseCase.g.dart';

@freezed
class GetCommentsResponseDtoUseCase with _$GetCommentsResponseDtoUseCase {
  const factory GetCommentsResponseDtoUseCase({
    List<Message>? data,
    int? pageNumber,
    int? pageSize,
    int? totalRecords,
    bool? hasPreviousPage,
    int? totalPages,
    bool? hasNextPage,
  }) = _GetCommentsResponseDtoUseCase;



  factory GetCommentsResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$GetCommentsResponseDtoUseCaseFromJson(json);
}