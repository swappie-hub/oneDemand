// To parse this JSON data, do
//
//     final homeVideoResponse = homeVideoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

List<HomeVideoResponse> homeVideoResponseFromJson(String str) =>
    List<HomeVideoResponse>.from(
        json.decode(str).map((x) => HomeVideoResponse.fromJson(x)));

String homeVideoResponseToJson(List<HomeVideoResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class HomeVideoResponse with _$HomeVideoResponse {
  const factory HomeVideoResponse({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "videos") List<Video>? videos,
  }) = _HomeVideoResponse;

  factory HomeVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeVideoResponseFromJson(json);
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
