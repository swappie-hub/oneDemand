// To parse this JSON data, do
//
//     final uploadResponse = uploadResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'upload_model.freezed.dart';
part 'upload_model.g.dart';

List<UploadResponse> uploadResponseFromJson(String str) =>
    List<UploadResponse>.from(
        json.decode(str).map((x) => UploadResponse.fromJson(x)));

String uploadResponseToJson(List<UploadResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class UploadResponse with _$UploadResponse {
  const factory UploadResponse({
    @JsonKey(name: "presignedUrls") List<String>? presignedUrls,
    @JsonKey(name: "pollingJwt") String? pollingJwt,
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "uploadId") String? uploadId,
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "fileType") String? fileType,
    @JsonKey(name: "contentDisposition") String? contentDisposition,
    @JsonKey(name: "chunkCount") int? chunkCount,
    @JsonKey(name: "chunkSize") int? chunkSize,
    @JsonKey(name: "pollingUrl") String? pollingUrl,
  }) = _UploadResponse;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}
