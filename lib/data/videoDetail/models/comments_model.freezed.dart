// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentsResponse _$CommentsResponseFromJson(Map<String, dynamic> json) {
  return _CommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentsResponse {
  @JsonKey(name: "comments")
  List<Comment>? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this CommentsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsResponseCopyWith<CommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsResponseCopyWith<$Res> {
  factory $CommentsResponseCopyWith(
          CommentsResponse value, $Res Function(CommentsResponse) then) =
      _$CommentsResponseCopyWithImpl<$Res, CommentsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "comments") List<Comment>? comments,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$CommentsResponseCopyWithImpl<$Res, $Val extends CommentsResponse>
    implements $CommentsResponseCopyWith<$Res> {
  _$CommentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsResponseImplCopyWith<$Res>
    implements $CommentsResponseCopyWith<$Res> {
  factory _$$CommentsResponseImplCopyWith(_$CommentsResponseImpl value,
          $Res Function(_$CommentsResponseImpl) then) =
      __$$CommentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "comments") List<Comment>? comments,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$CommentsResponseImplCopyWithImpl<$Res>
    extends _$CommentsResponseCopyWithImpl<$Res, _$CommentsResponseImpl>
    implements _$$CommentsResponseImplCopyWith<$Res> {
  __$$CommentsResponseImplCopyWithImpl(_$CommentsResponseImpl _value,
      $Res Function(_$CommentsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? total = freezed,
  }) {
    return _then(_$CommentsResponseImpl(
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsResponseImpl implements _CommentsResponse {
  const _$CommentsResponseImpl(
      {@JsonKey(name: "comments") final List<Comment>? comments,
      @JsonKey(name: "total") this.total})
      : _comments = comments;

  factory _$CommentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsResponseImplFromJson(json);

  final List<Comment>? _comments;
  @override
  @JsonKey(name: "comments")
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'CommentsResponse(comments: $comments, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsResponseImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_comments), total);

  /// Create a copy of CommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsResponseImplCopyWith<_$CommentsResponseImpl> get copyWith =>
      __$$CommentsResponseImplCopyWithImpl<_$CommentsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentsResponse implements CommentsResponse {
  const factory _CommentsResponse(
      {@JsonKey(name: "comments") final List<Comment>? comments,
      @JsonKey(name: "total") final int? total}) = _$CommentsResponseImpl;

  factory _CommentsResponse.fromJson(Map<String, dynamic> json) =
      _$CommentsResponseImpl.fromJson;

  @override
  @JsonKey(name: "comments")
  List<Comment>? get comments;
  @override
  @JsonKey(name: "total")
  int? get total;

  /// Create a copy of CommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsResponseImplCopyWith<_$CommentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userID")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "videoID")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "requiresValidation")
  bool? get requiresValidation => throw _privateConstructorUsedError;
  @JsonKey(name: "replyTo")
  dynamic get replyTo => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "userDetails")
  List<CommentUserDetail>? get userDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "replies")
  List<Reply>? get replies => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "userID") String? userId,
      @JsonKey(name: "videoID") String? videoId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "requiresValidation") bool? requiresValidation,
      @JsonKey(name: "replyTo") dynamic replyTo,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "userDetails") List<CommentUserDetail>? userDetails,
      @JsonKey(name: "replies") List<Reply>? replies,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? videoId = freezed,
    Object? content = freezed,
    Object? requiresValidation = freezed,
    Object? replyTo = freezed,
    Object? createdAt = freezed,
    Object? userDetails = freezed,
    Object? replies = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresValidation: freezed == requiresValidation
          ? _value.requiresValidation
          : requiresValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as List<CommentUserDetail>?,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Reply>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "userID") String? userId,
      @JsonKey(name: "videoID") String? videoId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "requiresValidation") bool? requiresValidation,
      @JsonKey(name: "replyTo") dynamic replyTo,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "userDetails") List<CommentUserDetail>? userDetails,
      @JsonKey(name: "replies") List<Reply>? replies,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? videoId = freezed,
    Object? content = freezed,
    Object? requiresValidation = freezed,
    Object? replyTo = freezed,
    Object? createdAt = freezed,
    Object? userDetails = freezed,
    Object? replies = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CommentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresValidation: freezed == requiresValidation
          ? _value.requiresValidation
          : requiresValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userDetails: freezed == userDetails
          ? _value._userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as List<CommentUserDetail>?,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Reply>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "userID") this.userId,
      @JsonKey(name: "videoID") this.videoId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "requiresValidation") this.requiresValidation,
      @JsonKey(name: "replyTo") this.replyTo,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "userDetails") final List<CommentUserDetail>? userDetails,
      @JsonKey(name: "replies") final List<Reply>? replies,
      @JsonKey(name: "image") this.image})
      : _userDetails = userDetails,
        _replies = replies;

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userID")
  final String? userId;
  @override
  @JsonKey(name: "videoID")
  final String? videoId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "requiresValidation")
  final bool? requiresValidation;
  @override
  @JsonKey(name: "replyTo")
  final dynamic replyTo;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  final List<CommentUserDetail>? _userDetails;
  @override
  @JsonKey(name: "userDetails")
  List<CommentUserDetail>? get userDetails {
    final value = _userDetails;
    if (value == null) return null;
    if (_userDetails is EqualUnmodifiableListView) return _userDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reply>? _replies;
  @override
  @JsonKey(name: "replies")
  List<Reply>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'Comment(id: $id, userId: $userId, videoId: $videoId, content: $content, requiresValidation: $requiresValidation, replyTo: $replyTo, createdAt: $createdAt, userDetails: $userDetails, replies: $replies, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.requiresValidation, requiresValidation) ||
                other.requiresValidation == requiresValidation) &&
            const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._userDetails, _userDetails) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      videoId,
      content,
      requiresValidation,
      const DeepCollectionEquality().hash(replyTo),
      createdAt,
      const DeepCollectionEquality().hash(_userDetails),
      const DeepCollectionEquality().hash(_replies),
      image);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userID") final String? userId,
      @JsonKey(name: "videoID") final String? videoId,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "requiresValidation") final bool? requiresValidation,
      @JsonKey(name: "replyTo") final dynamic replyTo,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "userDetails") final List<CommentUserDetail>? userDetails,
      @JsonKey(name: "replies") final List<Reply>? replies,
      @JsonKey(name: "image") final String? image}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userID")
  String? get userId;
  @override
  @JsonKey(name: "videoID")
  String? get videoId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "requiresValidation")
  bool? get requiresValidation;
  @override
  @JsonKey(name: "replyTo")
  dynamic get replyTo;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "userDetails")
  List<CommentUserDetail>? get userDetails;
  @override
  @JsonKey(name: "replies")
  List<Reply>? get replies;
  @override
  @JsonKey(name: "image")
  String? get image;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reply _$ReplyFromJson(Map<String, dynamic> json) {
  return _Reply.fromJson(json);
}

/// @nodoc
mixin _$Reply {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userID")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "videoID")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "requiresValidation")
  bool? get requiresValidation => throw _privateConstructorUsedError;
  @JsonKey(name: "replyTo")
  String? get replyTo => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "userDetails")
  List<ReplyUserDetail>? get userDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image>? get images => throw _privateConstructorUsedError;

  /// Serializes this Reply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res, Reply>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "userID") String? userId,
      @JsonKey(name: "videoID") String? videoId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "requiresValidation") bool? requiresValidation,
      @JsonKey(name: "replyTo") String? replyTo,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "userDetails") List<ReplyUserDetail>? userDetails,
      @JsonKey(name: "images") List<Image>? images});
}

/// @nodoc
class _$ReplyCopyWithImpl<$Res, $Val extends Reply>
    implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? videoId = freezed,
    Object? content = freezed,
    Object? requiresValidation = freezed,
    Object? replyTo = freezed,
    Object? createdAt = freezed,
    Object? v = freezed,
    Object? userDetails = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresValidation: freezed == requiresValidation
          ? _value.requiresValidation
          : requiresValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as List<ReplyUserDetail>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyImplCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$$ReplyImplCopyWith(
          _$ReplyImpl value, $Res Function(_$ReplyImpl) then) =
      __$$ReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "userID") String? userId,
      @JsonKey(name: "videoID") String? videoId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "requiresValidation") bool? requiresValidation,
      @JsonKey(name: "replyTo") String? replyTo,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "userDetails") List<ReplyUserDetail>? userDetails,
      @JsonKey(name: "images") List<Image>? images});
}

/// @nodoc
class __$$ReplyImplCopyWithImpl<$Res>
    extends _$ReplyCopyWithImpl<$Res, _$ReplyImpl>
    implements _$$ReplyImplCopyWith<$Res> {
  __$$ReplyImplCopyWithImpl(
      _$ReplyImpl _value, $Res Function(_$ReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? videoId = freezed,
    Object? content = freezed,
    Object? requiresValidation = freezed,
    Object? replyTo = freezed,
    Object? createdAt = freezed,
    Object? v = freezed,
    Object? userDetails = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ReplyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresValidation: freezed == requiresValidation
          ? _value.requiresValidation
          : requiresValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      userDetails: freezed == userDetails
          ? _value._userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as List<ReplyUserDetail>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyImpl implements _Reply {
  const _$ReplyImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "userID") this.userId,
      @JsonKey(name: "videoID") this.videoId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "requiresValidation") this.requiresValidation,
      @JsonKey(name: "replyTo") this.replyTo,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "userDetails") final List<ReplyUserDetail>? userDetails,
      @JsonKey(name: "images") final List<Image>? images})
      : _userDetails = userDetails,
        _images = images;

  factory _$ReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userID")
  final String? userId;
  @override
  @JsonKey(name: "videoID")
  final String? videoId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "requiresValidation")
  final bool? requiresValidation;
  @override
  @JsonKey(name: "replyTo")
  final String? replyTo;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  final List<ReplyUserDetail>? _userDetails;
  @override
  @JsonKey(name: "userDetails")
  List<ReplyUserDetail>? get userDetails {
    final value = _userDetails;
    if (value == null) return null;
    if (_userDetails is EqualUnmodifiableListView) return _userDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Image>? _images;
  @override
  @JsonKey(name: "images")
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Reply(id: $id, userId: $userId, videoId: $videoId, content: $content, requiresValidation: $requiresValidation, replyTo: $replyTo, createdAt: $createdAt, v: $v, userDetails: $userDetails, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.requiresValidation, requiresValidation) ||
                other.requiresValidation == requiresValidation) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.v, v) || other.v == v) &&
            const DeepCollectionEquality()
                .equals(other._userDetails, _userDetails) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      videoId,
      content,
      requiresValidation,
      replyTo,
      createdAt,
      v,
      const DeepCollectionEquality().hash(_userDetails),
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      __$$ReplyImplCopyWithImpl<_$ReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyImplToJson(
      this,
    );
  }
}

abstract class _Reply implements Reply {
  const factory _Reply(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userID") final String? userId,
      @JsonKey(name: "videoID") final String? videoId,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "requiresValidation") final bool? requiresValidation,
      @JsonKey(name: "replyTo") final String? replyTo,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "userDetails") final List<ReplyUserDetail>? userDetails,
      @JsonKey(name: "images") final List<Image>? images}) = _$ReplyImpl;

  factory _Reply.fromJson(Map<String, dynamic> json) = _$ReplyImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userID")
  String? get userId;
  @override
  @JsonKey(name: "videoID")
  String? get videoId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "requiresValidation")
  bool? get requiresValidation;
  @override
  @JsonKey(name: "replyTo")
  String? get replyTo;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "userDetails")
  List<ReplyUserDetail>? get userDetails;
  @override
  @JsonKey(name: "images")
  List<Image>? get images;

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({@JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$ImageImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl({@JsonKey(name: "url") this.url});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Image(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image({@JsonKey(name: "url") final String? url}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyUserDetail _$ReplyUserDetailFromJson(Map<String, dynamic> json) {
  return _ReplyUserDetail.fromJson(json);
}

/// @nodoc
mixin _$ReplyUserDetail {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "subsciptionReferanceId")
  dynamic get subsciptionReferanceId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscription")
  bool? get subscription => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "commentNotifications")
  bool? get commentNotifications => throw _privateConstructorUsedError;
  @JsonKey(name: "imageId")
  dynamic get imageId => throw _privateConstructorUsedError;

  /// Serializes this ReplyUserDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyUserDetailCopyWith<ReplyUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyUserDetailCopyWith<$Res> {
  factory $ReplyUserDetailCopyWith(
          ReplyUserDetail value, $Res Function(ReplyUserDetail) then) =
      _$ReplyUserDetailCopyWithImpl<$Res, ReplyUserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
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
      @JsonKey(name: "imageId") dynamic imageId});
}

/// @nodoc
class _$ReplyUserDetailCopyWithImpl<$Res, $Val extends ReplyUserDetail>
    implements $ReplyUserDetailCopyWith<$Res> {
  _$ReplyUserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? subsciptionReferanceId = freezed,
    Object? subscription = freezed,
    Object? role = freezed,
    Object? v = freezed,
    Object? commentNotifications = freezed,
    Object? imageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subsciptionReferanceId: freezed == subsciptionReferanceId
          ? _value.subsciptionReferanceId
          : subsciptionReferanceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      commentNotifications: freezed == commentNotifications
          ? _value.commentNotifications
          : commentNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyUserDetailImplCopyWith<$Res>
    implements $ReplyUserDetailCopyWith<$Res> {
  factory _$$ReplyUserDetailImplCopyWith(_$ReplyUserDetailImpl value,
          $Res Function(_$ReplyUserDetailImpl) then) =
      __$$ReplyUserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
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
      @JsonKey(name: "imageId") dynamic imageId});
}

/// @nodoc
class __$$ReplyUserDetailImplCopyWithImpl<$Res>
    extends _$ReplyUserDetailCopyWithImpl<$Res, _$ReplyUserDetailImpl>
    implements _$$ReplyUserDetailImplCopyWith<$Res> {
  __$$ReplyUserDetailImplCopyWithImpl(
      _$ReplyUserDetailImpl _value, $Res Function(_$ReplyUserDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? subsciptionReferanceId = freezed,
    Object? subscription = freezed,
    Object? role = freezed,
    Object? v = freezed,
    Object? commentNotifications = freezed,
    Object? imageId = freezed,
  }) {
    return _then(_$ReplyUserDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subsciptionReferanceId: freezed == subsciptionReferanceId
          ? _value.subsciptionReferanceId
          : subsciptionReferanceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      commentNotifications: freezed == commentNotifications
          ? _value.commentNotifications
          : commentNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyUserDetailImpl implements _ReplyUserDetail {
  const _$ReplyUserDetailImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "firstname") this.firstname,
      @JsonKey(name: "lastname") this.lastname,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "subsciptionReferanceId") this.subsciptionReferanceId,
      @JsonKey(name: "subscription") this.subscription,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "commentNotifications") this.commentNotifications,
      @JsonKey(name: "imageId") this.imageId});

  factory _$ReplyUserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyUserDetailImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "firstname")
  final String? firstname;
  @override
  @JsonKey(name: "lastname")
  final String? lastname;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "subsciptionReferanceId")
  final dynamic subsciptionReferanceId;
  @override
  @JsonKey(name: "subscription")
  final bool? subscription;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "commentNotifications")
  final bool? commentNotifications;
  @override
  @JsonKey(name: "imageId")
  final dynamic imageId;

  @override
  String toString() {
    return 'ReplyUserDetail(id: $id, userId: $userId, firstname: $firstname, lastname: $lastname, email: $email, password: $password, createdAt: $createdAt, subsciptionReferanceId: $subsciptionReferanceId, subscription: $subscription, role: $role, v: $v, commentNotifications: $commentNotifications, imageId: $imageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyUserDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.subsciptionReferanceId, subsciptionReferanceId) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.commentNotifications, commentNotifications) ||
                other.commentNotifications == commentNotifications) &&
            const DeepCollectionEquality().equals(other.imageId, imageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      firstname,
      lastname,
      email,
      password,
      createdAt,
      const DeepCollectionEquality().hash(subsciptionReferanceId),
      subscription,
      role,
      v,
      commentNotifications,
      const DeepCollectionEquality().hash(imageId));

  /// Create a copy of ReplyUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyUserDetailImplCopyWith<_$ReplyUserDetailImpl> get copyWith =>
      __$$ReplyUserDetailImplCopyWithImpl<_$ReplyUserDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyUserDetailImplToJson(
      this,
    );
  }
}

abstract class _ReplyUserDetail implements ReplyUserDetail {
  const factory _ReplyUserDetail(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "firstname") final String? firstname,
      @JsonKey(name: "lastname") final String? lastname,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "subsciptionReferanceId")
      final dynamic subsciptionReferanceId,
      @JsonKey(name: "subscription") final bool? subscription,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "commentNotifications") final bool? commentNotifications,
      @JsonKey(name: "imageId") final dynamic imageId}) = _$ReplyUserDetailImpl;

  factory _ReplyUserDetail.fromJson(Map<String, dynamic> json) =
      _$ReplyUserDetailImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "firstname")
  String? get firstname;
  @override
  @JsonKey(name: "lastname")
  String? get lastname;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "subsciptionReferanceId")
  dynamic get subsciptionReferanceId;
  @override
  @JsonKey(name: "subscription")
  bool? get subscription;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "commentNotifications")
  bool? get commentNotifications;
  @override
  @JsonKey(name: "imageId")
  dynamic get imageId;

  /// Create a copy of ReplyUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyUserDetailImplCopyWith<_$ReplyUserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentUserDetail _$CommentUserDetailFromJson(Map<String, dynamic> json) {
  return _CommentUserDetail.fromJson(json);
}

/// @nodoc
mixin _$CommentUserDetail {
  @JsonKey(name: "firstname")
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String? get lastname => throw _privateConstructorUsedError;

  /// Serializes this CommentUserDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentUserDetailCopyWith<CommentUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentUserDetailCopyWith<$Res> {
  factory $CommentUserDetailCopyWith(
          CommentUserDetail value, $Res Function(CommentUserDetail) then) =
      _$CommentUserDetailCopyWithImpl<$Res, CommentUserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "firstname") String? firstname,
      @JsonKey(name: "lastname") String? lastname});
}

/// @nodoc
class _$CommentUserDetailCopyWithImpl<$Res, $Val extends CommentUserDetail>
    implements $CommentUserDetailCopyWith<$Res> {
  _$CommentUserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentUserDetailImplCopyWith<$Res>
    implements $CommentUserDetailCopyWith<$Res> {
  factory _$$CommentUserDetailImplCopyWith(_$CommentUserDetailImpl value,
          $Res Function(_$CommentUserDetailImpl) then) =
      __$$CommentUserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "firstname") String? firstname,
      @JsonKey(name: "lastname") String? lastname});
}

/// @nodoc
class __$$CommentUserDetailImplCopyWithImpl<$Res>
    extends _$CommentUserDetailCopyWithImpl<$Res, _$CommentUserDetailImpl>
    implements _$$CommentUserDetailImplCopyWith<$Res> {
  __$$CommentUserDetailImplCopyWithImpl(_$CommentUserDetailImpl _value,
      $Res Function(_$CommentUserDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_$CommentUserDetailImpl(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentUserDetailImpl implements _CommentUserDetail {
  const _$CommentUserDetailImpl(
      {@JsonKey(name: "firstname") this.firstname,
      @JsonKey(name: "lastname") this.lastname});

  factory _$CommentUserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentUserDetailImplFromJson(json);

  @override
  @JsonKey(name: "firstname")
  final String? firstname;
  @override
  @JsonKey(name: "lastname")
  final String? lastname;

  @override
  String toString() {
    return 'CommentUserDetail(firstname: $firstname, lastname: $lastname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentUserDetailImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstname, lastname);

  /// Create a copy of CommentUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentUserDetailImplCopyWith<_$CommentUserDetailImpl> get copyWith =>
      __$$CommentUserDetailImplCopyWithImpl<_$CommentUserDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentUserDetailImplToJson(
      this,
    );
  }
}

abstract class _CommentUserDetail implements CommentUserDetail {
  const factory _CommentUserDetail(
          {@JsonKey(name: "firstname") final String? firstname,
          @JsonKey(name: "lastname") final String? lastname}) =
      _$CommentUserDetailImpl;

  factory _CommentUserDetail.fromJson(Map<String, dynamic> json) =
      _$CommentUserDetailImpl.fromJson;

  @override
  @JsonKey(name: "firstname")
  String? get firstname;
  @override
  @JsonKey(name: "lastname")
  String? get lastname;

  /// Create a copy of CommentUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentUserDetailImplCopyWith<_$CommentUserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
