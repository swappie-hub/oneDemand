// To parse this JSON data, do
//
//     final getUserDetailResponse = getUserDetailResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_user_details_model.freezed.dart';
part 'get_user_details_model.g.dart';

GetUserDetailResponse getUserDetailResponseFromJson(String str) =>
    GetUserDetailResponse.fromJson(json.decode(str));

String getUserDetailResponseToJson(GetUserDetailResponse data) =>
    json.encode(data.toJson());

@freezed
class GetUserDetailResponse with _$GetUserDetailResponse {
  const factory GetUserDetailResponse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "firstname") String? firstname,
    @JsonKey(name: "lastname") String? lastname,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "commentNotifications") bool? commentNotifications,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "imageRequiresValidation") bool? imageRequiresValidation,
  }) = _GetUserDetailResponse;

  factory GetUserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserDetailResponseFromJson(json);
}
