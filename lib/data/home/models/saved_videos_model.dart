// To parse this JSON data, do
//
//     final savedVideosResponse = savedVideosResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'saved_videos_model.freezed.dart';
part 'saved_videos_model.g.dart';

SavedVideosResponse savedVideosResponseFromJson(String str) =>
    SavedVideosResponse.fromJson(json.decode(str));

String savedVideosResponseToJson(SavedVideosResponse data) =>
    json.encode(data.toJson());

@freezed
class SavedVideosResponse with _$SavedVideosResponse {
  const factory SavedVideosResponse({
    @JsonKey(name: "savesVideosData") List<SavesVideosDatum>? savesVideosData,
    @JsonKey(name: "videoCount") int? videoCount,
  }) = _SavedVideosResponse;

  factory SavedVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedVideosResponseFromJson(json);
}

@freezed
class SavesVideosDatum with _$SavesVideosDatum {
  const factory SavesVideosDatum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
    @JsonKey(name: "savedvideo") bool? savedvideo,
  }) = _SavesVideosDatum;

  factory SavesVideosDatum.fromJson(Map<String, dynamic> json) =>
      _$SavesVideosDatumFromJson(json);
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
// To parse this JSON data, do
//
//     final savedVideosRequest = savedVideosRequestFromJson(jsonString);

SavedVideosRequest savedVideosRequestFromJson(String str) =>
    SavedVideosRequest.fromJson(json.decode(str));

String savedVideosRequestToJson(SavedVideosRequest data) =>
    json.encode(data.toJson());

@freezed
class SavedVideosRequest with _$SavedVideosRequest {
  const factory SavedVideosRequest({
    @JsonKey(name: "startIndex") int? startIndex,
    @JsonKey(name: "endIndex") int? endIndex,
    @JsonKey(name: "selectedTags") String? selectedTags,
    @JsonKey(name: "selectedDurations") String? selectedDurations,
    @JsonKey(name: "selectedLevels") String? selectedLevels,
    @JsonKey(name: "sortby") String? sortby,
  }) = _SavedVideosRequest;

  factory SavedVideosRequest.fromJson(Map<String, dynamic> json) =>
      _$SavedVideosRequestFromJson(json);
}
