// To parse this JSON data, do
//
//     final searchListResponse = searchListResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'search_video_models.freezed.dart';
part 'search_video_models.g.dart';

SearchListResponse searchListResponseFromJson(String str) =>
    SearchListResponse.fromJson(json.decode(str));

String searchListResponseToJson(SearchListResponse data) =>
    json.encode(data.toJson());

@freezed
class SearchListResponse with _$SearchListResponse {
  const factory SearchListResponse({
    @JsonKey(name: "videos") List<Video>? videos,
    @JsonKey(name: "videoCount") int? videoCount,
  }) = _SearchListResponse;

  factory SearchListResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchListResponseFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "v_id") String? vId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "CategoryId") String? categoryId,
    @JsonKey(name: "videoLevel") List<String>? videoLevel,
    @JsonKey(name: "videoId") String? videoId,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "products") List<dynamic>? products,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "videolink") String? videolink,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
    @JsonKey(name: "isFeatured") bool? isFeatured,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "savedvideo") bool? savedvideo,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: "referalId") ReferalId? referalId,
    @JsonKey(name: "_id") String? id,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class ReferalId with _$ReferalId {
  const factory ReferalId({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "priority") int? priority,
  }) = _ReferalId;

  factory ReferalId.fromJson(Map<String, dynamic> json) =>
      _$ReferalIdFromJson(json);
}
