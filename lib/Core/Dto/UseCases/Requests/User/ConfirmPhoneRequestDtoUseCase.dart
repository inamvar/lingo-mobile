import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ConfirmPhoneRequestDtoUseCase.freezed.dart';
part 'ConfirmPhoneRequestDtoUseCase.g.dart';

@freezed
class ConfirmPhoneRequestDtoUseCase with _$ConfirmPhoneRequestDtoUseCase {
  const factory ConfirmPhoneRequestDtoUseCase({
    String? securityCode,
  }) = _ConfirmPhoneRequestDtoUseCase;



  factory ConfirmPhoneRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPhoneRequestDtoUseCaseFromJson(json);
}