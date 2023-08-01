import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'SendMessageRequestDtoUseCase.freezed.dart';
part 'SendMessageRequestDtoUseCase.g.dart';

@freezed
class SendMessageRequestDtoUseCase with _$SendMessageRequestDtoUseCase {
  const factory SendMessageRequestDtoUseCase({
    String? subject,
    String? body
  }) = _SendMessageRequestDtoUseCase;



  factory SendMessageRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestDtoUseCaseFromJson(json);
}