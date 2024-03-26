//
//     final addCommentsRequest = addCommentsRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_comments_model.freezed.dart';
part 'add_comments_model.g.dart';

AddCommentsRequest addCommentsRequestFromJson(String str) =>
    AddCommentsRequest.fromJson(json.decode(str));

String addCommentsRequestToJson(AddCommentsRequest data) =>
    json.encode(data.toJson());

@freezed
class AddCommentsRequest with _$AddCommentsRequest {
  const factory AddCommentsRequest({
    @JsonKey(name: "videoID") String? videoId,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "replyTo") String? replyTo,
  }) = _AddCommentsRequest;

  factory AddCommentsRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCommentsRequestFromJson(json);
}
// To parse this JSON data, do
//
//     final addCommentsResponse = addCommentsResponseFromJson(jsonString);

AddCommentsResponse addCommentsResponseFromJson(String str) =>
    AddCommentsResponse.fromJson(json.decode(str));

String addCommentsResponseToJson(AddCommentsResponse data) =>
    json.encode(data.toJson());

@freezed
class AddCommentsResponse with _$AddCommentsResponse {
  const factory AddCommentsResponse({
    @JsonKey(name: "success") bool? success,
  }) = _AddCommentsResponse;

  factory AddCommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCommentsResponseFromJson(json);
}
