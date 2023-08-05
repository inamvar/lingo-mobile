// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DownloadReceiptRequestDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadReceiptRequestDtoUseCase
    _$$_DownloadReceiptRequestDtoUseCaseFromJson(Map<String, dynamic> json) =>
        _$_DownloadReceiptRequestDtoUseCase(
          order: json['order'] == null
              ? null
              : Order.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_DownloadReceiptRequestDtoUseCaseToJson(
        _$_DownloadReceiptRequestDtoUseCase instance) =>
    <String, dynamic>{
      'order': instance.order,
    };
