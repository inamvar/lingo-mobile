// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PaginationRequestDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationRequestDtoUseCase _$$_PaginationRequestDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_PaginationRequestDtoUseCase(
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      filter: json['filter'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_PaginationRequestDtoUseCaseToJson(
        _$_PaginationRequestDtoUseCase instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'filter': instance.filter,
      'path': instance.path,
    };
