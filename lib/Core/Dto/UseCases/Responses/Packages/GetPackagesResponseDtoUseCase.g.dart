// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetPackagesResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPackagesResponseDtoUseCase _$$_GetPackagesResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPackagesResponseDtoUseCase(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      totalRecords: json['totalRecords'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: json['totalPages'] as int?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$$_GetPackagesResponseDtoUseCaseToJson(
        _$_GetPackagesResponseDtoUseCase instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalRecords': instance.totalRecords,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
    };
