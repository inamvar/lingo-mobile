// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TokenResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResponseDtoUseCase _$$_TokenResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_TokenResponseDtoUseCase(
      accessToken: json['accessToken'] as String?,
      accessTokenExpiresAt: json['accessTokenExpiresAt'] as String?,
      refreshToken: json['refreshToken'] as String?,
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] as String?,
    );

Map<String, dynamic> _$$_TokenResponseDtoUseCaseToJson(
        _$_TokenResponseDtoUseCase instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt,
    };
