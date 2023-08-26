// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetBannersResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBannersResponseDtoUseCase _$$_GetBannersResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBannersResponseDtoUseCase(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetBannersResponseDtoUseCaseToJson(
        _$_GetBannersResponseDtoUseCase instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };
