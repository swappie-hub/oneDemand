// To parse this JSON data, do
//
//     final recomendedVideoRequest = recomendedVideoRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'recommended_video.freezed.dart';
part 'recommended_video.g.dart';

RecomendedVideoRequest recomendedVideoRequestFromJson(String str) =>
    RecomendedVideoRequest.fromJson(json.decode(str));

String recomendedVideoRequestToJson(RecomendedVideoRequest data) =>
    json.encode(data.toJson());

@freezed
class RecomendedVideoRequest with _$RecomendedVideoRequest {
  const factory RecomendedVideoRequest({
    @JsonKey(name: "videoId") String? videoId,
    @JsonKey(name: "tags") List<String>? tags,
  }) = _RecomendedVideoRequest;

  factory RecomendedVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$RecomendedVideoRequestFromJson(json);
}

List<RecomendedVideoResponse> recomendedVideoResponseFromJson(String str) =>
    List<RecomendedVideoResponse>.from(
        json.decode(str).map((x) => RecomendedVideoResponse.fromJson(x)));

String recomendedVideoResponseToJson(List<RecomendedVideoResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class RecomendedVideoResponse with _$RecomendedVideoResponse {
  const factory RecomendedVideoResponse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "v_id") String? vId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "CategoryId") String? categoryId,
    @JsonKey(name: "videolink") String? videolink,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "videoId") String? videoId,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "products") List<dynamic>? products,
    @JsonKey(name: "videoLevel") List<String>? videoLevel,
    @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
    @JsonKey(name: "tagsData") List<TagsDatum>? tagsData,
    @JsonKey(name: "productsData") List<dynamic>? productsData,
    @JsonKey(name: "data") RecomendedVideoResponse? data,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
  }) = _RecomendedVideoResponse;

  factory RecomendedVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$RecomendedVideoResponseFromJson(json);
}

@freezed
class CategoryDetail with _$CategoryDetail {
  const factory CategoryDetail({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "__v") int? v,
  }) = _CategoryDetail;

  factory CategoryDetail.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: "referalId") String? referalId,
    @JsonKey(name: "_id") String? id,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class TagsDatum with _$TagsDatum {
  const factory TagsDatum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "priority") int? priority,
  }) = _TagsDatum;

  factory TagsDatum.fromJson(Map<String, dynamic> json) =>
      _$TagsDatumFromJson(json);
}
