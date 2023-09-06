// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Package _$$_PackageFromJson(Map<String, dynamic> json) => _$_Package(
      name: json['name'] as String?,
      description: json['description'] as String?,
      thumbnailImageName: json['thumbnailImageName'] as String?,
      thumbnailImageBucket: json['thumbnailImageBucket'],
      thumbnailUrl: json['thumbnailUrl'] as String?,
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      stockIn: json['stockIn'] as String?,
      slug: json['slug'] as String?,
      firstCourseSlug: json['firstCourseSlug'],
      costType: json['costType'],
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_PackageToJson(_$_Package instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'thumbnailImageName': instance.thumbnailImageName,
      'thumbnailImageBucket': instance.thumbnailImageBucket,
      'thumbnailUrl': instance.thumbnailUrl,
      'courses': instance.courses,
      'stockIn': instance.stockIn,
      'slug': instance.slug,
      'firstCourseSlug': instance.firstCourseSlug,
      'costType': instance.costType,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
