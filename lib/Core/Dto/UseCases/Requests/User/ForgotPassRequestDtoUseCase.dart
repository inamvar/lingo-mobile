import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ForgotPassRequestDtoUseCase.freezed.dart';
part 'ForgotPassRequestDtoUseCase.g.dart';

@freezed
class ForgotPassRequestDtoUseCase with _$ForgotPassRequestDtoUseCase {
  const factory ForgotPassRequestDtoUseCase({
    String? email,
  }) = _ForgotPassRequestDtoUseCase;



  factory ForgotPassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassRequestDtoUseCaseFromJson(json);
}