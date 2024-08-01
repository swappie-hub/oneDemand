// To parse this JSON data, do
//
//     final deleteAccountResponse = deleteAccountResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'delete_model.freezed.dart';
part 'delete_model.g.dart';

DeleteAccountResponse deleteAccountResponseFromJson(String str) =>
    DeleteAccountResponse.fromJson(json.decode(str));

String deleteAccountResponseToJson(DeleteAccountResponse data) =>
    json.encode(data.toJson());

@freezed
class DeleteAccountResponse with _$DeleteAccountResponse {
  const factory DeleteAccountResponse({
    @JsonKey(name: "Success") bool? success,
  }) = _DeleteAccountResponse;

  factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountResponseFromJson(json);
}
