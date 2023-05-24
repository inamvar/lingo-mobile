import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'RegisterRequestDtoUseCase.freezed.dart';
part 'RegisterRequestDtoUseCase.g.dart';

@freezed
class RegisterRequestDtoUseCase with _$RegisterRequestDtoUseCase {
  const factory RegisterRequestDtoUseCase({
    String? email,
    String? phoneNumber,
    String? password,
    String? confirmPassword,
    String? firstName,
    String? lastName,
    String? marketerCode,
  }) = _RegisterRequestDtoUseCase;



  factory RegisterRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoUseCaseFromJson(json);
}