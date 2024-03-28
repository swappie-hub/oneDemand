// To parse this JSON data, do
//
//     final signupRequest = signupRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

SignupRequest signupRequestFromJson(String str) =>
    SignupRequest.fromJson(json.decode(str));

String signupRequestToJson(SignupRequest data) => json.encode(data.toJson());

@freezed
class SignupRequest with _$SignupRequest {
  const factory SignupRequest({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "lastname") String? lastname,
    @JsonKey(name: "firstname") String? firstname,
    @JsonKey(name: "device_token") String? devicetoken,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestFromJson(json);
}

SignupResponse signupResponseFromJson(String str) =>
    SignupResponse.fromJson(json.decode(str));

String signupResponseToJson(SignupResponse data) => json.encode(data.toJson());

@freezed
class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "email") String? email,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}
