// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchItem _$$_SearchItemFromJson(Map<String, dynamic> json) =>
    _$_SearchItem(
      productType: json['productType'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      id: json['id'] as int?,
      firstCourseSlug: json['firstCourseSlug'] as String?,
      pricings: (json['pricings'] as List<dynamic>?)
          ?.map((e) => Pricing.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isFree: json['isFree'] as bool?,
    );

Map<String, dynamic> _$$_SearchItemToJson(_$_SearchItem instance) =>
    <String, dynamic>{
      'productType': instance.productType,
      'title': instance.title,
      'slug': instance.slug,
      'id': instance.id,
      'firstCourseSlug': instance.firstCourseSlug,
      'pricings': instance.pricings,
      'thumbnailUrl': instance.thumbnailUrl,
      'isFree': instance.isFree,
    };
