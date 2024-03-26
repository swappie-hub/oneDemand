// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lessons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonsResponseImpl _$$LessonsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonsResponseImpl(
      libraryVideosData: (json['libraryVideosData'] as List<dynamic>?)
          ?.map((e) => LibraryVideosDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonsResponseImplToJson(
        _$LessonsResponseImpl instance) =>
    <String, dynamic>{
      'libraryVideosData': instance.libraryVideosData,
    };

_$LibraryVideosDatumImpl _$$LibraryVideosDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryVideosDatumImpl(
      categoryId: json['categoryId'] as String?,
      name: json['name'] as String?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$$LibraryVideosDatumImplToJson(
        _$LibraryVideosDatumImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'videos': instance.videos,
      'totalRecords': instance.totalRecords,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      duration: json['duration'] as int?,
      releaseDateTime: json['releaseDateTime'] == null
          ? null
          : DateTime.parse(json['releaseDateTime'] as String),
      thumnailLink: json['thumnailLink'] as String?,
      tagsDetails: (json['tagsDetails'] as List<dynamic>?)
          ?.map((e) => TagsDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      savedvideo: json['savedvideo'] as bool?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'releaseDateTime': instance.releaseDateTime?.toIso8601String(),
      'thumnailLink': instance.thumnailLink,
      'tagsDetails': instance.tagsDetails,
      'savedvideo': instance.savedvideo,
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
