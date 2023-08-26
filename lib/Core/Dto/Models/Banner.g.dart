// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Banner _$$_BannerFromJson(Map<String, dynamic> json) => _$_Banner(
      fileUrl: json['fileUrl'] as String,
      fileName: json['fileName'] as String,
      fileBucket: json['fileBucket'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_BannerToJson(_$_Banner instance) => <String, dynamic>{
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'fileBucket': instance.fileBucket,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
    };
