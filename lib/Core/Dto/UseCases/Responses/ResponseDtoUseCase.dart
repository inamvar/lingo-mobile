import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ResponseDtoUseCase.freezed.dart';
part 'ResponseDtoUseCase.g.dart';

@freezed
class ResponseDtoUseCase with _$ResponseDtoUseCase {
  const factory ResponseDtoUseCase({
    Map<String,dynamic>? data,
    List<String>? errorMessages,
    String? message,
    dynamic statusCode,
    String? dateTime,
    bool? success
  }) = _ResponseDtoUseCase;
  


  factory ResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoUseCaseFromJson(json);
}