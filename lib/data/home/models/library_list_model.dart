// To parse this JSON data, do
//
//     final libraryListRequest = libraryListRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'library_list_model.freezed.dart';
part 'library_list_model.g.dart';

LibraryListRequest libraryListRequestFromJson(String str) =>
    LibraryListRequest.fromJson(json.decode(str));

String libraryListRequestToJson(LibraryListRequest data) =>
    json.encode(data.toJson());

@freezed
class LibraryListRequest with _$LibraryListRequest {
  const factory LibraryListRequest({
    @JsonKey(name: "categoryId") String? categoryId,
    @JsonKey(name: "startIndex") int? startIndex,
    @JsonKey(name: "endIndex") int? endIndex,
    @JsonKey(name: "selectedTags") String? selectedTags,
    @JsonKey(name: "selectedDurations") String? selectedDurations,
    @JsonKey(name: "selectedLevels") String? selectedLevels,
    @JsonKey(name: "sortby") String? sortby,
    @JsonKey(name: "userId") String? userId,
  }) = _LibraryListRequest;

  factory LibraryListRequest.fromJson(Map<String, dynamic> json) =>
      _$LibraryListRequestFromJson(json);
}

LibraryListResponse libraryListResponseFromJson(String str) =>
    LibraryListResponse.fromJson(json.decode(str));

String libraryListResponseToJson(LibraryListResponse data) =>
    json.encode(data.toJson());

@freezed
class LibraryListResponse with _$LibraryListResponse {
  const factory LibraryListResponse({
    @JsonKey(name: "libraryVideosData")
    List<LibraryVideosDatum>? libraryVideosData,
  }) = _LibraryListResponse;

  factory LibraryListResponse.fromJson(Map<String, dynamic> json) =>
      _$LibraryListResponseFromJson(json);
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
