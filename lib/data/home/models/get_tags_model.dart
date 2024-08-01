// To parse this JSON data, do
//
//     final getTagsResponse = getTagsResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_tags_model.freezed.dart';
part 'get_tags_model.g.dart';

List<GetTagsResponse> getTagsResponseFromJson(String str) =>
    List<GetTagsResponse>.from(
        json.decode(str).map((x) => GetTagsResponse.fromJson(x)));

String getTagsResponseToJson(List<GetTagsResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class GetTagsResponse with _$GetTagsResponse {
  const factory GetTagsResponse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "priority") int? priority,
  }) = _GetTagsResponse;

  factory GetTagsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTagsResponseFromJson(json);
}
