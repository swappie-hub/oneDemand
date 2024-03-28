// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPlaylistRequestImpl _$$AddPlaylistRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPlaylistRequestImpl(
      myArray: (json['myArray'] as List<dynamic>?)
          ?.map((e) => MyArray.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddPlaylistRequestImplToJson(
        _$AddPlaylistRequestImpl instance) =>
    <String, dynamic>{
      'myArray': instance.myArray,
    };

_$MyArrayImpl _$$MyArrayImplFromJson(Map<String, dynamic> json) =>
    _$MyArrayImpl(
      name: json['name'] as String?,
      objectId: json['object_id'] as String?,
      videoObject: json['video_object'] == null
          ? null
          : VideoObject.fromJson(json['video_object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyArrayImplToJson(_$MyArrayImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'object_id': instance.objectId,
      'video_object': instance.videoObject,
    };

_$VideoObjectImpl _$$VideoObjectImplFromJson(Map<String, dynamic> json) =>
    _$VideoObjectImpl(
      id: json['_id'] as String?,
      vId: json['v_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryId: json['CategoryId'] as String?,
      videoId: json['videoId'] as String?,
      videoLevel: (json['videoLevel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videolink: json['videolink'] as String?,
      thumnailLink: json['thumnailLink'] as String?,
      duration: json['duration'] as int?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      releaseDateTime: json['releaseDateTime'] == null
          ? null
          : DateTime.parse(json['releaseDateTime'] as String),
      v: json['__v'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      categoryDetails: (json['CategoryDetails'] as List<dynamic>?)
          ?.map((e) => CategoryDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagsDetails: (json['tagsDetails'] as List<dynamic>?)
          ?.map((e) => TagsDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      productsData: json['productsData'] as List<dynamic>?,
      savedvideo: json['savedvideo'] as bool?,
    );

Map<String, dynamic> _$$VideoObjectImplToJson(_$VideoObjectImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'v_id': instance.vId,
      'title': instance.title,
      'description': instance.description,
      'CategoryId': instance.categoryId,
      'videoId': instance.videoId,
      'videoLevel': instance.videoLevel,
      'videolink': instance.videolink,
      'thumnailLink': instance.thumnailLink,
      'duration': instance.duration,
      'tags': instance.tags,
      'products': instance.products,
      'createdAt': instance.createdAt?.toIso8601String(),
      'releaseDateTime': instance.releaseDateTime?.toIso8601String(),
      '__v': instance.v,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'CategoryDetails': instance.categoryDetails,
      'tagsDetails': instance.tagsDetails,
      'productsData': instance.productsData,
      'savedvideo': instance.savedvideo,
    };

_$CategoryDetailImpl _$$CategoryDetailImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      v: json['__v'] as int?,
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

_$TagsDetailImpl _$$TagsDetailImplFromJson(Map<String, dynamic> json) =>
    _$TagsDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: json['__v'] as int?,
      priority: json['priority'] as int?,
    );

Map<String, dynamic> _$$TagsDetailImplToJson(_$TagsDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };

_$AddPlaylistResponseImpl _$$AddPlaylistResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPlaylistResponseImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AddPlaylistResponseImplToJson(
        _$AddPlaylistResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
