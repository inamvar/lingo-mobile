
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginRequestDtoUseCase.freezed.dart';
part 'LoginRequestDtoUseCase.g.dart';

@freezed
class LoginRequestDtoUseCase with _$LoginRequestDtoUseCase {
  const factory LoginRequestDtoUseCase({
    String? userName,
    String? password
  }) = _LoginRequestDtoUseCase;



  factory LoginRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDtoUseCaseFromJson(json);
}