import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ResetPassRequestDtoUseCase.freezed.dart';
part 'ResetPassRequestDtoUseCase.g.dart';

@freezed
class ResetPassRequestDtoUseCase with _$ResetPassRequestDtoUseCase {
  const factory ResetPassRequestDtoUseCase({
    String? userName,
    String? password,
    String? retypePassword,
    String? securityCode
  }) = _ResetPassRequestDtoUseCase;



  factory ResetPassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$ResetPassRequestDtoUseCaseFromJson(json);
}