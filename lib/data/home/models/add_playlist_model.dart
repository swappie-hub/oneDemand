// To parse this JSON data, do
//
//     final addPlaylistRequest = addPlaylistRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_playlist_model.freezed.dart';
part 'add_playlist_model.g.dart';

AddPlaylistRequest addPlaylistRequestFromJson(String str) =>
    AddPlaylistRequest.fromJson(json.decode(str));

String addPlaylistRequestToJson(AddPlaylistRequest data) =>
    json.encode(data.toJson());

@freezed
class AddPlaylistRequest with _$AddPlaylistRequest {
  const factory AddPlaylistRequest({
    @JsonKey(name: "myArray") List<MyArray>? myArray,
  }) = _AddPlaylistRequest;

  factory AddPlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$AddPlaylistRequestFromJson(json);
}

@freezed
class MyArray with _$MyArray {
  const factory MyArray({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "object_id") String? objectId,
    @JsonKey(name: "video_object") VideoObject? videoObject,
  }) = _MyArray;

  factory MyArray.fromJson(Map<String, dynamic> json) =>
      _$MyArrayFromJson(json);
}

@freezed
class VideoObject with _$VideoObject {
  const factory VideoObject({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "v_id") String? vId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "CategoryId") String? categoryId,
    @JsonKey(name: "videoId") String? videoId,
    @JsonKey(name: "videoLevel") List<String>? videoLevel,
    @JsonKey(name: "videolink") String? videolink,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "products") List<dynamic>? products,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
    @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
    @JsonKey(name: "productsData") List<dynamic>? productsData,
    @JsonKey(name: "savedvideo") bool? savedvideo,
  }) = _VideoObject;

  factory VideoObject.fromJson(Map<String, dynamic> json) =>
      _$VideoObjectFromJson(json);
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

AddPlaylistResponse addPlaylistResponseFromJson(String str) =>
    AddPlaylistResponse.fromJson(json.decode(str));

String addPlaylistResponseToJson(AddPlaylistResponse data) =>
    json.encode(data.toJson());

@freezed
class AddPlaylistResponse with _$AddPlaylistResponse {
  const factory AddPlaylistResponse({
    @JsonKey(name: "message") String? message,
  }) = _AddPlaylistResponse;

  factory AddPlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$AddPlaylistResponseFromJson(json);
}
