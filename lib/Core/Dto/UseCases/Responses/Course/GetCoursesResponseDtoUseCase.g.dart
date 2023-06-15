// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetCoursesResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCoursesResponseDtoUseCase _$$_GetCoursesResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_GetCoursesResponseDtoUseCase(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      totalRecords: json['totalRecords'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: json['totalPages'] as int?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$$_GetCoursesResponseDtoUseCaseToJson(
        _$_GetCoursesResponseDtoUseCase instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalRecords': instance.totalRecords,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
    };
