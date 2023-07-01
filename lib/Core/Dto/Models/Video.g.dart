// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      title: json['title'] as String?,
      examFileName: json['examFileName'] as String?,
      courseId: json['courseId'] as int?,
      chapterId: json['chapterId'] as int?,
      duration: json['duration'],
      size: json['size'],
      isFree: json['isFree'] as bool?,
      status: json['status'] as String?,
      podcastStatus: json['podcastStatus'] as String?,
      examFileUrl: json['examFileUrl'] as String?,
      priority: json['priority'] as int?,
      stockIn: json['stockIn'] as String?,
      embedPlayer: json['embedPlayer'] as String?,
      podcastEmbedPlayer: json['podcastEmbedPlayer'],
      isActive: json['isActive'] as bool?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      videoHls: json['videoHls'] as String?,
      podcastHls: json['podcastHls'] as String?,
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'title': instance.title,
      'examFileName': instance.examFileName,
      'courseId': instance.courseId,
      'chapterId': instance.chapterId,
      'duration': instance.duration,
      'size': instance.size,
      'isFree': instance.isFree,
      'status': instance.status,
      'podcastStatus': instance.podcastStatus,
      'examFileUrl': instance.examFileUrl,
      'priority': instance.priority,
      'stockIn': instance.stockIn,
      'embedPlayer': instance.embedPlayer,
      'podcastEmbedPlayer': instance.podcastEmbedPlayer,
      'isActive': instance.isActive,
      'description': instance.description,
      'slug': instance.slug,
      'videoHls': instance.videoHls,
      'podcastHls': instance.podcastHls,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
