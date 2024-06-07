// To parse this JSON data, do
//
//     final uploadResponse = uploadResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'upload_model.freezed.dart';
part 'upload_model.g.dart';

UploadResponse uploadResponseFromJson(String str) =>
    UploadResponse.fromJson(json.decode(str));

String uploadResponseToJson(UploadResponse data) => json.encode(data.toJson());

@freezed
class UploadResponse with _$UploadResponse {
  const factory UploadResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _UploadResponse;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "file_link") String? fileLink,
    @JsonKey(name: "cdnLink") String? cdnLink,
    @JsonKey(name: "responseData") ResponseData? responseData,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    @JsonKey(name: "fieldname") String? fieldname,
    @JsonKey(name: "originalname") String? originalname,
    @JsonKey(name: "encoding") String? encoding,
    @JsonKey(name: "mimetype") String? mimetype,
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "bucket") String? bucket,
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "acl") String? acl,
    @JsonKey(name: "contentType") String? contentType,
    @JsonKey(name: "contentDisposition") dynamic contentDisposition,
    @JsonKey(name: "contentEncoding") dynamic contentEncoding,
    @JsonKey(name: "storageClass") String? storageClass,
    @JsonKey(name: "serverSideEncryption") dynamic serverSideEncryption,
    @JsonKey(name: "metadata") dynamic metadata,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "etag") String? etag,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}
