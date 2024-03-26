// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCommentsRequestImpl _$$AddCommentsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCommentsRequestImpl(
      videoId: json['videoID'] as String?,
      content: json['content'] as String?,
      replyTo: json['replyTo'] as String?,
    );

Map<String, dynamic> _$$AddCommentsRequestImplToJson(
        _$AddCommentsRequestImpl instance) =>
    <String, dynamic>{
      'videoID': instance.videoId,
      'content': instance.content,
      'replyTo': instance.replyTo,
    };

_$AddCommentsResponseImpl _$$AddCommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCommentsResponseImpl(
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$AddCommentsResponseImplToJson(
        _$AddCommentsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
    };
