// To parse this JSON data, do
//
//     final updateEmailRequest = updateEmailRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_email_model.freezed.dart';
part 'update_email_model.g.dart';

UpdateEmailRequest updateEmailRequestFromJson(String str) =>
    UpdateEmailRequest.fromJson(json.decode(str));

String updateEmailRequestToJson(UpdateEmailRequest data) =>
    json.encode(data.toJson());

@freezed
class UpdateEmailRequest with _$UpdateEmailRequest {
  const factory UpdateEmailRequest({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "userId") String? userId,
  }) = _UpdateEmailRequest;

  factory UpdateEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailRequestFromJson(json);
}

UpdateEmailResponse updateEmailResponseFromJson(String str) =>
    UpdateEmailResponse.fromJson(json.decode(str));

String updateEmailResponseToJson(UpdateEmailResponse data) =>
    json.encode(data.toJson());

@freezed
class UpdateEmailResponse with _$UpdateEmailResponse {
  const factory UpdateEmailResponse({
    @JsonKey(name: "message") String? message,
  }) = _UpdateEmailResponse;

  factory UpdateEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailResponseFromJson(json);
}
