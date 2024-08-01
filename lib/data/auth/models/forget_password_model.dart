// To parse this JSON data, do
//
//     final forgetPasswordRequest = forgetPasswordRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'forget_password_model.freezed.dart';
part 'forget_password_model.g.dart';

ForgetPasswordRequest forgetPasswordRequestFromJson(String str) =>
    ForgetPasswordRequest.fromJson(json.decode(str));

String forgetPasswordRequestToJson(ForgetPasswordRequest data) =>
    json.encode(data.toJson());

@freezed
class ForgetPasswordRequest with _$ForgetPasswordRequest {
  const factory ForgetPasswordRequest({
    @JsonKey(name: "email") String? email,
  }) = _ForgetPasswordRequest;

  factory ForgetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestFromJson(json);
}

ForgetPasswordResponse forgetPasswordResponseFromJson(String str) =>
    ForgetPasswordResponse.fromJson(json.decode(str));

String forgetPasswordResponseToJson(ForgetPasswordResponse data) =>
    json.encode(data.toJson());

@freezed
class ForgetPasswordResponse with _$ForgetPasswordResponse {
  const factory ForgetPasswordResponse({
    @JsonKey(name: "Status") String? status,
  }) = _ForgetPasswordResponse;

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponseFromJson(json);
}
