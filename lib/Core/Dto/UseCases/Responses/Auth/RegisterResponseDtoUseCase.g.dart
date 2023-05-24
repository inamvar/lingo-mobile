// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponseDtoUseCase _$$_RegisterResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterResponseDtoUseCase(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      authToken: json['authToken'] == null
          ? null
          : TokenResponseDtoUseCase.fromJson(
              json['authToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterResponseDtoUseCaseToJson(
        _$_RegisterResponseDtoUseCase instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'authToken': instance.authToken,
    };
