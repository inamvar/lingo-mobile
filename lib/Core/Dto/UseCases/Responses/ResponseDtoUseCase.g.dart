// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseDtoUseCase _$$_ResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseDtoUseCase(
      data: json['data'] as Map<String, dynamic>?,
      errorMessages: (json['errorMessages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      dateTime: json['dateTime'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_ResponseDtoUseCaseToJson(
        _$_ResponseDtoUseCase instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorMessages': instance.errorMessages,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'dateTime': instance.dateTime,
      'success': instance.success,
    };
