// To parse this JSON data, do
//
//     final fetchSubscriptionResponse = fetchSubscriptionResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'fetch_subscription_model.freezed.dart';
part 'fetch_subscription_model.g.dart';

FetchSubscriptionResponse fetchSubscriptionResponseFromJson(String str) =>
    FetchSubscriptionResponse.fromJson(json.decode(str));

String fetchSubscriptionResponseToJson(FetchSubscriptionResponse data) =>
    json.encode(data.toJson());

@freezed
class FetchSubscriptionResponse with _$FetchSubscriptionResponse {
  const factory FetchSubscriptionResponse({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") String? data,
  }) = _FetchSubscriptionResponse;

  factory FetchSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchSubscriptionResponseFromJson(json);
}
