// To parse this JSON data, do
//
//     final getAllPlaylistResponse = getAllPlaylistResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_playlist_model.freezed.dart';
part 'get_playlist_model.g.dart';

List<GetAllPlaylistResponse> getAllPlaylistResponseFromJson(String str) =>
    List<GetAllPlaylistResponse>.from(
        json.decode(str).map((x) => GetAllPlaylistResponse.fromJson(x)));

String getAllPlaylistResponseToJson(List<GetAllPlaylistResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class GetAllPlaylistResponse with _$GetAllPlaylistResponse {
  const factory GetAllPlaylistResponse({
    @JsonKey(name: "label") String? label,
    @JsonKey(name: "value") String? value,
  }) = _GetAllPlaylistResponse;

  factory GetAllPlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllPlaylistResponseFromJson(json);
}
