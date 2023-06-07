// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChangePassRequestDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePassRequestDtoUseCase _$$_ChangePassRequestDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePassRequestDtoUseCase(
      currentPassword: json['currentPassword'] as String?,
      newPassword: json['newPassword'] as String?,
      confirmNewPassword: json['confirmNewPassword'] as String?,
    );

Map<String, dynamic> _$$_ChangePassRequestDtoUseCaseToJson(
        _$_ChangePassRequestDtoUseCase instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
      'confirmNewPassword': instance.confirmNewPassword,
    };
