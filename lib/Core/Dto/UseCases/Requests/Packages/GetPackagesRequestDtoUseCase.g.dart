// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetPackagesRequestDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPackagesRequestDtoUseCase _$$_GetPackagesRequestDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPackagesRequestDtoUseCase(
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      filter: json['filter'] as String?,
    );

Map<String, dynamic> _$$_GetPackagesRequestDtoUseCaseToJson(
        _$_GetPackagesRequestDtoUseCase instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'filter': instance.filter,
    };
