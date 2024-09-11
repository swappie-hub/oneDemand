// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecomendedVideoRequestImpl _$$RecomendedVideoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RecomendedVideoRequestImpl(
      videoId: json['videoId'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RecomendedVideoRequestImplToJson(
        _$RecomendedVideoRequestImpl instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'tags': instance.tags,
    };

_$RecomendedVideoResponseImpl _$$RecomendedVideoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecomendedVideoResponseImpl(
      id: json['_id'] as String?,
      vId: json['v_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      categoryId: json['CategoryId'] as String?,
      videolink: json['videolink'] as String?,
      thumnailLink: json['thumnailLink'] as String?,
      videoId: json['videoId'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      releaseDateTime: json['releaseDateTime'] == null
          ? null
          : DateTime.parse(json['releaseDateTime'] as String),
      v: (json['__v'] as num?)?.toInt(),
      products: json['products'] as List<dynamic>?,
      videoLevel: (json['videoLevel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryDetails: (json['CategoryDetails'] as List<dynamic>?)
          ?.map((e) => CategoryDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagsData: (json['tagsData'] as List<dynamic>?)
          ?.map((e) => TagsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      productsData: json['productsData'] as List<dynamic>?,
      data: json['data'] == null
          ? null
          : RecomendedVideoResponse.fromJson(
              json['data'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RecomendedVideoResponseImplToJson(
        _$RecomendedVideoResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'v_id': instance.vId,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'CategoryId': instance.categoryId,
      'videolink': instance.videolink,
      'thumnailLink': instance.thumnailLink,
      'videoId': instance.videoId,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'releaseDateTime': instance.releaseDateTime?.toIso8601String(),
      '__v': instance.v,
      'products': instance.products,
      'videoLevel': instance.videoLevel,
      'CategoryDetails': instance.categoryDetails,
      'tagsData': instance.tagsData,
      'productsData': instance.productsData,
      'data': instance.data,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$CategoryDetailImpl _$$CategoryDetailImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CategoryDetailImplToJson(
        _$CategoryDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      '__v': instance.v,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      referalId: json['referalId'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'referalId': instance.referalId,
      '_id': instance.id,
    };

_$TagsDatumImpl _$$TagsDatumImplFromJson(Map<String, dynamic> json) =>
    _$TagsDatumImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TagsDatumImplToJson(_$TagsDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };
