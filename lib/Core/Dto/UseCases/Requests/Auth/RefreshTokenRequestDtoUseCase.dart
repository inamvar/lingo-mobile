import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'RefreshTokenRequestDtoUseCase.freezed.dart';
part 'RefreshTokenRequestDtoUseCase.g.dart';

@freezed
class RefreshTokenRequestDtoUseCase with _$RefreshTokenRequestDtoUseCase {
  const factory RefreshTokenRequestDtoUseCase({
    String? refreshToken,
  }) = _RefreshTokenRequestDtoUseCase;



  factory RefreshTokenRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestDtoUseCaseFromJson(json);
}