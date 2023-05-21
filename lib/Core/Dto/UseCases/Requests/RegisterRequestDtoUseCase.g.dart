// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterRequestDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequestDtoUseCase _$$_RegisterRequestDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterRequestDtoUseCase(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      marketerCode: json['marketerCode'] as String?,
    );

Map<String, dynamic> _$$_RegisterRequestDtoUseCaseToJson(
        _$_RegisterRequestDtoUseCase instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'marketerCode': instance.marketerCode,
    };
