// To parse this JSON data, do
//
//     final personalPlaylistRequest = personalPlaylistRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comments_model.freezed.dart';
part 'comments_model.g.dart';

CommentsResponse commentsResponseFromJson(String str) =>
    CommentsResponse.fromJson(json.decode(str));

String commentsResponseToJson(CommentsResponse data) =>
    json.encode(data.toJson());

@freezed
class CommentsResponse with _$CommentsResponse {
  const factory CommentsResponse({
    @JsonKey(name: "comments") List<Comment>? comments,
    @JsonKey(name: "total") int? total,
  }) = _CommentsResponse;

  factory CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "userID") String? userId,
    @JsonKey(name: "videoID") String? videoId,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "requiresValidation") bool? requiresValidation,
    @JsonKey(name: "replyTo") dynamic replyTo,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "userDetails") List<CommentUserDetail>? userDetails,
    @JsonKey(name: "replies") List<Reply>? replies,
    @JsonKey(name: "image") String? image,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class Reply with _$Reply {
  const factory Reply({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "userID") String? userId,
    @JsonKey(name: "videoID") String? videoId,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "requiresValidation") bool? requiresValidation,
    @JsonKey(name: "replyTo") String? replyTo,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "userDetails") List<ReplyUserDetail>? userDetails,
    @JsonKey(name: "images") List<Image>? images,
  }) = _Reply;

  factory Reply.fromJson(Map<String, dynamic> json) => _$ReplyFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "url") String? url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class ReplyUserDetail with _$ReplyUserDetail {
  const factory ReplyUserDetail({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "firstname") String? firstname,
    @JsonKey(name: "lastname") String? lastname,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "subsciptionReferanceId") dynamic subsciptionReferanceId,
    @JsonKey(name: "subscription") bool? subscription,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "commentNotifications") bool? commentNotifications,
    @JsonKey(name: "imageId") dynamic imageId,
  }) = _ReplyUserDetail;

  factory ReplyUserDetail.fromJson(Map<String, dynamic> json) =>
      _$ReplyUserDetailFromJson(json);
}

@freezed
class CommentUserDetail with _$CommentUserDetail {
  const factory CommentUserDetail({
    @JsonKey(name: "firstname") String? firstname,
    @JsonKey(name: "lastname") String? lastname,
  }) = _CommentUserDetail;

  factory CommentUserDetail.fromJson(Map<String, dynamic> json) =>
      _$CommentUserDetailFromJson(json);
}
