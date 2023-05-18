import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'TokenResponseDtoUseCase.freezed.dart';
part 'TokenResponseDtoUseCase.g.dart';

@freezed
class TokenResponseDtoUseCase with _$TokenResponseDtoUseCase {
  const factory TokenResponseDtoUseCase({
    String? accessToken,
    String? accessTokenExpiresAt,
    String? refreshToken,
    String? refreshTokenExpiresAt,
  }) = _TokenResponseDtoUseCase;

  factory TokenResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseDtoUseCaseFromJson(json);
}
