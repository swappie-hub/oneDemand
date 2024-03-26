// To parse this JSON data, do
//
//     final lessonsResponse = lessonsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'lessons_model.freezed.dart';
part 'lessons_model.g.dart';

LessonsResponse lessonsResponseFromJson(String str) =>
    LessonsResponse.fromJson(json.decode(str));

String lessonsResponseToJson(LessonsResponse data) =>
    json.encode(data.toJson());

@freezed
class LessonsResponse with _$LessonsResponse {
  const factory LessonsResponse({
    @JsonKey(name: "libraryVideosData")
    List<LibraryVideosDatum>? libraryVideosData,
  }) = _LessonsResponse;

  factory LessonsResponse.fromJson(Map<String, dynamic> json) =>
      _$LessonsResponseFromJson(json);
}

@freezed
class LibraryVideosDatum with _$LibraryVideosDatum {
  const factory LibraryVideosDatum({
    @JsonKey(name: "categoryId") String? categoryId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "videos") List<Video>? videos,
    @JsonKey(name: "totalRecords") int? totalRecords,
  }) = _LibraryVideosDatum;

  factory LibraryVideosDatum.fromJson(Map<String, dynamic> json) =>
      _$LibraryVideosDatumFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
    @JsonKey(name: "savedvideo") bool? savedvideo,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class TagsDetail with _$TagsDetail {
  const factory TagsDetail({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "priority") int? priority,
  }) = _TagsDetail;

  factory TagsDetail.fromJson(Map<String, dynamic> json) =>
      _$TagsDetailFromJson(json);
}
