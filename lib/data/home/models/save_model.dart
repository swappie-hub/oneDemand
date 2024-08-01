// To parse this JSON data, do
//
//     final saveResponse = saveResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'save_model.freezed.dart';
part 'save_model.g.dart';

SaveResponse saveResponseFromJson(String str) =>
    SaveResponse.fromJson(json.decode(str));

String saveResponseToJson(SaveResponse data) => json.encode(data.toJson());

@freezed
class SaveResponse with _$SaveResponse {
  const factory SaveResponse({
    @JsonKey(name: "message") String? message,
  }) = _SaveResponse;

  factory SaveResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveResponseFromJson(json);
}
