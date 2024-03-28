// To parse this JSON data, do
//
//     final updatePasswordRequest = updatePasswordRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_password_model.freezed.dart';
part 'update_password_model.g.dart';

UpdatePasswordRequest updatePasswordRequestFromJson(String str) =>
    UpdatePasswordRequest.fromJson(json.decode(str));

String updatePasswordRequestToJson(UpdatePasswordRequest data) =>
    json.encode(data.toJson());

@freezed
class UpdatePasswordRequest with _$UpdatePasswordRequest {
  const factory UpdatePasswordRequest({
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "currentPassword") String? currentPassword,
    @JsonKey(name: "newPassword") String? newPassword,
    @JsonKey(name: "confirmPassword") String? confirmPassword,
  }) = _UpdatePasswordRequest;

  factory UpdatePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordRequestFromJson(json);
}

UpdatePasswordResponse updatePasswordResponseFromJson(String str) =>
    UpdatePasswordResponse.fromJson(json.decode(str));

String updatePasswordResponseToJson(UpdatePasswordResponse data) =>
    json.encode(data.toJson());

@freezed
class UpdatePasswordResponse with _$UpdatePasswordResponse {
  const factory UpdatePasswordResponse({
    @JsonKey(name: "message") String? message,
  }) = _UpdatePasswordResponse;

  factory UpdatePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordResponseFromJson(json);
}
