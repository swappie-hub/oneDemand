// To parse this JSON data, do
//
//     final uploadImageProfileRequest = uploadImageProfileRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'upload_image_to_profile_model.freezed.dart';
part 'upload_image_to_profile_model.g.dart';

UploadImageProfileRequest uploadImageProfileRequestFromJson(String str) =>
    UploadImageProfileRequest.fromJson(json.decode(str));

String uploadImageProfileRequestToJson(UploadImageProfileRequest data) =>
    json.encode(data.toJson());

@freezed
class UploadImageProfileRequest with _$UploadImageProfileRequest {
  const factory UploadImageProfileRequest({
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "imageURL") String? imageUrl,
  }) = _UploadImageProfileRequest;

  factory UploadImageProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadImageProfileRequestFromJson(json);
}

UploadImageProfileResponse uploadImageProfileResponseFromJson(String str) =>
    UploadImageProfileResponse.fromJson(json.decode(str));

String uploadImageProfileResponseToJson(UploadImageProfileResponse data) =>
    json.encode(data.toJson());

@freezed
class UploadImageProfileResponse with _$UploadImageProfileResponse {
  const factory UploadImageProfileResponse({
    @JsonKey(name: "requiresValidation") bool? requiresValidation,
  }) = _UploadImageProfileResponse;

  factory UploadImageProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadImageProfileResponseFromJson(json);
}
