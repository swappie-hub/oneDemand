// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_video_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchListResponseImpl _$$SearchListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchListResponseImpl(
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoCount: json['videoCount'] as int?,
    );

Map<String, dynamic> _$$SearchListResponseImplToJson(
        _$SearchListResponseImpl instance) =>
    <String, dynamic>{
      'videos': instance.videos,
      'videoCount': instance.videoCount,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: json['_id'] as String?,
      vId: json['v_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryId: json['CategoryId'] as String?,
      videoLevel: (json['videoLevel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoId: json['videoId'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      videolink: json['videolink'] as String?,
      thumnailLink: json['thumnailLink'] as String?,
      duration: json['duration'] as int?,
      releaseDateTime: json['releaseDateTime'] == null
          ? null
          : DateTime.parse(json['releaseDateTime'] as String),
      isFeatured: json['isFeatured'] as bool?,
      v: json['__v'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      savedvideo: json['savedvideo'] as bool?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'v_id': instance.vId,
      'title': instance.title,
      'description': instance.description,
      'CategoryId': instance.categoryId,
      'videoLevel': instance.videoLevel,
      'videoId': instance.videoId,
      'tags': instance.tags,
      'products': instance.products,
      'createdAt': instance.createdAt?.toIso8601String(),
      'videolink': instance.videolink,
      'thumnailLink': instance.thumnailLink,
      'duration': instance.duration,
      'releaseDateTime': instance.releaseDateTime?.toIso8601String(),
      'isFeatured': instance.isFeatured,
      '__v': instance.v,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'savedvideo': instance.savedvideo,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      referalId: json['referalId'] == null
          ? null
          : ReferalId.fromJson(json['referalId'] as Map<String, dynamic>),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'referalId': instance.referalId,
      '_id': instance.id,
    };

_$ReferalIdImpl _$$ReferalIdImplFromJson(Map<String, dynamic> json) =>
    _$ReferalIdImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: json['__v'] as int?,
      priority: json['priority'] as int?,
    );

Map<String, dynamic> _$$ReferalIdImplToJson(_$ReferalIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };
