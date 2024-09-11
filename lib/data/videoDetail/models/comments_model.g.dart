// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsResponseImpl _$$CommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentsResponseImpl(
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommentsResponseImplToJson(
        _$CommentsResponseImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'total': instance.total,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['_id'] as String?,
      userId: json['userID'] as String?,
      videoId: json['videoID'] as String?,
      content: json['content'] as String?,
      requiresValidation: json['requiresValidation'] as bool?,
      replyTo: json['replyTo'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      userDetails: (json['userDetails'] as List<dynamic>?)
          ?.map((e) => CommentUserDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => Reply.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userID': instance.userId,
      'videoID': instance.videoId,
      'content': instance.content,
      'requiresValidation': instance.requiresValidation,
      'replyTo': instance.replyTo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'userDetails': instance.userDetails,
      'replies': instance.replies,
      'image': instance.image,
    };

_$ReplyImpl _$$ReplyImplFromJson(Map<String, dynamic> json) => _$ReplyImpl(
      id: json['_id'] as String?,
      userId: json['userID'] as String?,
      videoId: json['videoID'] as String?,
      content: json['content'] as String?,
      requiresValidation: json['requiresValidation'] as bool?,
      replyTo: json['replyTo'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      userDetails: (json['userDetails'] as List<dynamic>?)
          ?.map((e) => ReplyUserDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReplyImplToJson(_$ReplyImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userID': instance.userId,
      'videoID': instance.videoId,
      'content': instance.content,
      'requiresValidation': instance.requiresValidation,
      'replyTo': instance.replyTo,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
      'userDetails': instance.userDetails,
      'images': instance.images,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$ReplyUserDetailImpl _$$ReplyUserDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyUserDetailImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      subsciptionReferanceId: json['subsciptionReferanceId'],
      subscription: json['subscription'] as bool?,
      role: json['role'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      commentNotifications: json['commentNotifications'] as bool?,
      imageId: json['imageId'],
    );

Map<String, dynamic> _$$ReplyUserDetailImplToJson(
        _$ReplyUserDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'createdAt': instance.createdAt?.toIso8601String(),
      'subsciptionReferanceId': instance.subsciptionReferanceId,
      'subscription': instance.subscription,
      'role': instance.role,
      '__v': instance.v,
      'commentNotifications': instance.commentNotifications,
      'imageId': instance.imageId,
    };

_$CommentUserDetailImpl _$$CommentUserDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentUserDetailImpl(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
    );

Map<String, dynamic> _$$CommentUserDetailImplToJson(
        _$CommentUserDetailImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };
