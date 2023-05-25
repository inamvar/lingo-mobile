// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResetPassRequestDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResetPassRequestDtoUseCase _$$_ResetPassRequestDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_ResetPassRequestDtoUseCase(
      userName: json['userName'] as String?,
      password: json['password'] as String?,
      retypePassword: json['retypePassword'] as String?,
      securityCode: json['securityCode'] as String?,
    );

Map<String, dynamic> _$$_ResetPassRequestDtoUseCaseToJson(
        _$_ResetPassRequestDtoUseCase instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
      'retypePassword': instance.retypePassword,
      'securityCode': instance.securityCode,
    };
