// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      title: json['title'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      flowStep: json['flowStep'] as int?,
      code: json['code'],
      categories: json['categories'],
      availableMonth: json['availableMonth'] as int?,
      sellingType: json['sellingType'] as int?,
      chapters: json['chapters'] as List<dynamic>?,
      teacher: json['teacher'],
      teacherId: json['teacherId'],
      duration: json['duration'],
      imageName: json['imageName'] as String?,
      imageBucket: json['imageBucket'],
      thumbnailImageUrl: json['thumbnailImageUrl'] as String?,
      package: json['package'],
      packageId: json['packageId'] as int?,
      pricings: (json['pricings'] as List<dynamic>?)
          ?.map((e) => Pricing.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentVideo: json['currentVideo'],
      costType: json['costType'],
      discount: json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'tags': instance.tags,
      'flowStep': instance.flowStep,
      'code': instance.code,
      'categories': instance.categories,
      'availableMonth': instance.availableMonth,
      'sellingType': instance.sellingType,
      'chapters': instance.chapters,
      'teacher': instance.teacher,
      'teacherId': instance.teacherId,
      'duration': instance.duration,
      'imageName': instance.imageName,
      'imageBucket': instance.imageBucket,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'package': instance.package,
      'packageId': instance.packageId,
      'pricings': instance.pricings,
      'currentVideo': instance.currentVideo,
      'costType': instance.costType,
      'discount': instance.discount,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
