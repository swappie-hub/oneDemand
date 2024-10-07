// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryListRequestImpl _$$LibraryListRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryListRequestImpl(
      categoryId: json['categoryId'] as String?,
      startIndex: (json['startIndex'] as num?)?.toInt(),
      endIndex: (json['endIndex'] as num?)?.toInt(),
      selectedTags: json['selectedTags'] as String?,
      selectedDurations: json['selectedDurations'] as String?,
      selectedLevels: json['selectedLevels'] as String?,
      sortby: json['sortby'] as String?,
      selectedInstructors: (json['selectedInstructors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$LibraryListRequestImplToJson(
        _$LibraryListRequestImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'selectedTags': instance.selectedTags,
      'selectedDurations': instance.selectedDurations,
      'selectedLevels': instance.selectedLevels,
      'sortby': instance.sortby,
      'selectedInstructors': instance.selectedInstructors,
      'userId': instance.userId,
    };

_$LibraryListResponseImpl _$$LibraryListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryListResponseImpl(
      libraryVideosData: (json['libraryVideosData'] as List<dynamic>?)
          ?.map((e) => LibraryVideosDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LibraryListResponseImplToJson(
        _$LibraryListResponseImpl instance) =>
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
      totalRecords: (json['totalRecords'] as num?)?.toInt(),
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
      duration: (json['duration'] as num?)?.toInt(),
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
