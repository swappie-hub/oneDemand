// To parse this JSON data, do
//
//     final updateUsernameRequest = updateUsernameRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_username_model.freezed.dart';
part 'update_username_model.g.dart';

UpdateUsernameRequest updateUsernameRequestFromJson(String str) =>
    UpdateUsernameRequest.fromJson(json.decode(str));

String updateUsernameRequestToJson(UpdateUsernameRequest data) =>
    json.encode(data.toJson());

@freezed
class UpdateUsernameRequest with _$UpdateUsernameRequest {
  const factory UpdateUsernameRequest({
    @JsonKey(name: "firstname") String? firstname,
    @JsonKey(name: "lastname") String? lastname,
    @JsonKey(name: "userId") String? userId,
  }) = _UpdateUsernameRequest;

  factory UpdateUsernameRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUsernameRequestFromJson(json);
}

UpdateUsernameResponse updateUsernameResponseFromJson(String str) =>
    UpdateUsernameResponse.fromJson(json.decode(str));

String updateUsernameResponseToJson(UpdateUsernameResponse data) =>
    json.encode(data.toJson());

@freezed
class UpdateUsernameResponse with _$UpdateUsernameResponse {
  const factory UpdateUsernameResponse({
    @JsonKey(name: "message") String? message,
  }) = _UpdateUsernameResponse;

  factory UpdateUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUsernameResponseFromJson(json);
}
