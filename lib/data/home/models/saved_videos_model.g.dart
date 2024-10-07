// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_videos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedVideosResponseImpl _$$SavedVideosResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedVideosResponseImpl(
      savesVideosData: (json['savesVideosData'] as List<dynamic>?)
          ?.map((e) => SavesVideosDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoCount: (json['videoCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SavedVideosResponseImplToJson(
        _$SavedVideosResponseImpl instance) =>
    <String, dynamic>{
      'savesVideosData': instance.savesVideosData,
      'videoCount': instance.videoCount,
    };

_$SavesVideosDatumImpl _$$SavesVideosDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$SavesVideosDatumImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      thumnailLink: json['thumnailLink'] as String?,
      tagsDetails: (json['tagsDetails'] as List<dynamic>?)
          ?.map((e) => TagsDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      savedvideo: json['savedvideo'] as bool?,
    );

Map<String, dynamic> _$$SavesVideosDatumImplToJson(
        _$SavesVideosDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'createdAt': instance.createdAt?.toIso8601String(),
      'thumnailLink': instance.thumnailLink,
      'tagsDetails': instance.tagsDetails,
      'savedvideo': instance.savedvideo,
    };

_$TagsDetailImpl _$$TagsDetailImplFromJson(Map<String, dynamic> json) =>
    _$TagsDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TagsDetailImplToJson(_$TagsDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };

_$SavedVideosRequestImpl _$$SavedVideosRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedVideosRequestImpl(
      startIndex: (json['startIndex'] as num?)?.toInt(),
      endIndex: (json['endIndex'] as num?)?.toInt(),
      selectedTags: json['selectedTags'] as String?,
      selectedDurations: json['selectedDurations'] as String?,
      selectedLevels: json['selectedLevels'] as String?,
      sortby: json['sortby'] as String?,
    );

Map<String, dynamic> _$$SavedVideosRequestImplToJson(
        _$SavedVideosRequestImpl instance) =>
    <String, dynamic>{
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'selectedTags': instance.selectedTags,
      'selectedDurations': instance.selectedDurations,
      'selectedLevels': instance.selectedLevels,
      'sortby': instance.sortby,
    };
