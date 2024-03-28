// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_video_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchListResponse _$SearchListResponseFromJson(Map<String, dynamic> json) {
  return _SearchListResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchListResponse {
  @JsonKey(name: "videos")
  List<Video>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: "videoCount")
  int? get videoCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchListResponseCopyWith<SearchListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchListResponseCopyWith<$Res> {
  factory $SearchListResponseCopyWith(
          SearchListResponse value, $Res Function(SearchListResponse) then) =
      _$SearchListResponseCopyWithImpl<$Res, SearchListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "videoCount") int? videoCount});
}

/// @nodoc
class _$SearchListResponseCopyWithImpl<$Res, $Val extends SearchListResponse>
    implements $SearchListResponseCopyWith<$Res> {
  _$SearchListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_value.copyWith(
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchListResponseImplCopyWith<$Res>
    implements $SearchListResponseCopyWith<$Res> {
  factory _$$SearchListResponseImplCopyWith(_$SearchListResponseImpl value,
          $Res Function(_$SearchListResponseImpl) then) =
      __$$SearchListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "videoCount") int? videoCount});
}

/// @nodoc
class __$$SearchListResponseImplCopyWithImpl<$Res>
    extends _$SearchListResponseCopyWithImpl<$Res, _$SearchListResponseImpl>
    implements _$$SearchListResponseImplCopyWith<$Res> {
  __$$SearchListResponseImplCopyWithImpl(_$SearchListResponseImpl _value,
      $Res Function(_$SearchListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_$SearchListResponseImpl(
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchListResponseImpl implements _SearchListResponse {
  const _$SearchListResponseImpl(
      {@JsonKey(name: "videos") final List<Video>? videos,
      @JsonKey(name: "videoCount") this.videoCount})
      : _videos = videos;

  factory _$SearchListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchListResponseImplFromJson(json);

  final List<Video>? _videos;
  @override
  @JsonKey(name: "videos")
  List<Video>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "videoCount")
  final int? videoCount;

  @override
  String toString() {
    return 'SearchListResponse(videos: $videos, videoCount: $videoCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchListResponseImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_videos), videoCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchListResponseImplCopyWith<_$SearchListResponseImpl> get copyWith =>
      __$$SearchListResponseImplCopyWithImpl<_$SearchListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchListResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchListResponse implements SearchListResponse {
  const factory _SearchListResponse(
          {@JsonKey(name: "videos") final List<Video>? videos,
          @JsonKey(name: "videoCount") final int? videoCount}) =
      _$SearchListResponseImpl;

  factory _SearchListResponse.fromJson(Map<String, dynamic> json) =
      _$SearchListResponseImpl.fromJson;

  @override
  @JsonKey(name: "videos")
  List<Video>? get videos;
  @override
  @JsonKey(name: "videoCount")
  int? get videoCount;
  @override
  @JsonKey(ignore: true)
  _$$SearchListResponseImplCopyWith<_$SearchListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "v_id")
  String? get vId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "CategoryId")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "videoId")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<dynamic>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "videolink")
  String? get videolink => throw _privateConstructorUsedError;
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "isFeatured")
  bool? get isFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "savedvideo")
  bool? get savedvideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "v_id") String? vId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "products") List<dynamic>? products,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "isFeatured") bool? isFeatured,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "savedvideo") bool? savedvideo});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? videoLevel = freezed,
    Object? videoId = freezed,
    Object? tags = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? videolink = freezed,
    Object? thumnailLink = freezed,
    Object? duration = freezed,
    Object? releaseDateTime = freezed,
    Object? isFeatured = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
    Object? savedvideo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      vId: freezed == vId
          ? _value.vId
          : vId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLevel: freezed == videoLevel
          ? _value.videoLevel
          : videoLevel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videolink: freezed == videolink
          ? _value.videolink
          : videolink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumnailLink: freezed == thumnailLink
          ? _value.thumnailLink
          : thumnailLink // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDateTime: freezed == releaseDateTime
          ? _value.releaseDateTime
          : releaseDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      savedvideo: freezed == savedvideo
          ? _value.savedvideo
          : savedvideo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "v_id") String? vId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "products") List<dynamic>? products,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "isFeatured") bool? isFeatured,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "savedvideo") bool? savedvideo});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? videoLevel = freezed,
    Object? videoId = freezed,
    Object? tags = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? videolink = freezed,
    Object? thumnailLink = freezed,
    Object? duration = freezed,
    Object? releaseDateTime = freezed,
    Object? isFeatured = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
    Object? savedvideo = freezed,
  }) {
    return _then(_$VideoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      vId: freezed == vId
          ? _value.vId
          : vId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLevel: freezed == videoLevel
          ? _value._videoLevel
          : videoLevel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videolink: freezed == videolink
          ? _value.videolink
          : videolink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumnailLink: freezed == thumnailLink
          ? _value.thumnailLink
          : thumnailLink // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDateTime: freezed == releaseDateTime
          ? _value.releaseDateTime
          : releaseDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      savedvideo: freezed == savedvideo
          ? _value.savedvideo
          : savedvideo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl implements _Video {
  const _$VideoImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "v_id") this.vId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "CategoryId") this.categoryId,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "videoId") this.videoId,
      @JsonKey(name: "tags") final List<Tag>? tags,
      @JsonKey(name: "products") final List<dynamic>? products,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "videolink") this.videolink,
      @JsonKey(name: "thumnailLink") this.thumnailLink,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "releaseDateTime") this.releaseDateTime,
      @JsonKey(name: "isFeatured") this.isFeatured,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "savedvideo") this.savedvideo})
      : _videoLevel = videoLevel,
        _tags = tags,
        _products = products;

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "v_id")
  final String? vId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "CategoryId")
  final String? categoryId;
  final List<String>? _videoLevel;
  @override
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel {
    final value = _videoLevel;
    if (value == null) return null;
    if (_videoLevel is EqualUnmodifiableListView) return _videoLevel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "videoId")
  final String? videoId;
  final List<Tag>? _tags;
  @override
  @JsonKey(name: "tags")
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _products;
  @override
  @JsonKey(name: "products")
  List<dynamic>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "videolink")
  final String? videolink;
  @override
  @JsonKey(name: "thumnailLink")
  final String? thumnailLink;
  @override
  @JsonKey(name: "duration")
  final int? duration;
  @override
  @JsonKey(name: "releaseDateTime")
  final DateTime? releaseDateTime;
  @override
  @JsonKey(name: "isFeatured")
  final bool? isFeatured;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "savedvideo")
  final bool? savedvideo;

  @override
  String toString() {
    return 'Video(id: $id, vId: $vId, title: $title, description: $description, categoryId: $categoryId, videoLevel: $videoLevel, videoId: $videoId, tags: $tags, products: $products, createdAt: $createdAt, videolink: $videolink, thumnailLink: $thumnailLink, duration: $duration, releaseDateTime: $releaseDateTime, isFeatured: $isFeatured, v: $v, updatedAt: $updatedAt, savedvideo: $savedvideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vId, vId) || other.vId == vId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality()
                .equals(other._videoLevel, _videoLevel) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.videolink, videolink) ||
                other.videolink == videolink) &&
            (identical(other.thumnailLink, thumnailLink) ||
                other.thumnailLink == thumnailLink) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.releaseDateTime, releaseDateTime) ||
                other.releaseDateTime == releaseDateTime) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.savedvideo, savedvideo) ||
                other.savedvideo == savedvideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      vId,
      title,
      description,
      categoryId,
      const DeepCollectionEquality().hash(_videoLevel),
      videoId,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_products),
      createdAt,
      videolink,
      thumnailLink,
      duration,
      releaseDateTime,
      isFeatured,
      v,
      updatedAt,
      savedvideo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "v_id") final String? vId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "CategoryId") final String? categoryId,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "videoId") final String? videoId,
      @JsonKey(name: "tags") final List<Tag>? tags,
      @JsonKey(name: "products") final List<dynamic>? products,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "videolink") final String? videolink,
      @JsonKey(name: "thumnailLink") final String? thumnailLink,
      @JsonKey(name: "duration") final int? duration,
      @JsonKey(name: "releaseDateTime") final DateTime? releaseDateTime,
      @JsonKey(name: "isFeatured") final bool? isFeatured,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "savedvideo") final bool? savedvideo}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "v_id")
  String? get vId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "CategoryId")
  String? get categoryId;
  @override
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel;
  @override
  @JsonKey(name: "videoId")
  String? get videoId;
  @override
  @JsonKey(name: "tags")
  List<Tag>? get tags;
  @override
  @JsonKey(name: "products")
  List<dynamic>? get products;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "videolink")
  String? get videolink;
  @override
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink;
  @override
  @JsonKey(name: "duration")
  int? get duration;
  @override
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime;
  @override
  @JsonKey(name: "isFeatured")
  bool? get isFeatured;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "savedvideo")
  bool? get savedvideo;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  @JsonKey(name: "referalId")
  ReferalId? get referalId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call(
      {@JsonKey(name: "referalId") ReferalId? referalId,
      @JsonKey(name: "_id") String? id});

  $ReferalIdCopyWith<$Res>? get referalId;
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referalId = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      referalId: freezed == referalId
          ? _value.referalId
          : referalId // ignore: cast_nullable_to_non_nullable
              as ReferalId?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferalIdCopyWith<$Res>? get referalId {
    if (_value.referalId == null) {
      return null;
    }

    return $ReferalIdCopyWith<$Res>(_value.referalId!, (value) {
      return _then(_value.copyWith(referalId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagImplCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$TagImplCopyWith(_$TagImpl value, $Res Function(_$TagImpl) then) =
      __$$TagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "referalId") ReferalId? referalId,
      @JsonKey(name: "_id") String? id});

  @override
  $ReferalIdCopyWith<$Res>? get referalId;
}

/// @nodoc
class __$$TagImplCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$TagImpl>
    implements _$$TagImplCopyWith<$Res> {
  __$$TagImplCopyWithImpl(_$TagImpl _value, $Res Function(_$TagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referalId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TagImpl(
      referalId: freezed == referalId
          ? _value.referalId
          : referalId // ignore: cast_nullable_to_non_nullable
              as ReferalId?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagImpl implements _Tag {
  const _$TagImpl(
      {@JsonKey(name: "referalId") this.referalId,
      @JsonKey(name: "_id") this.id});

  factory _$TagImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagImplFromJson(json);

  @override
  @JsonKey(name: "referalId")
  final ReferalId? referalId;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Tag(referalId: $referalId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagImpl &&
            (identical(other.referalId, referalId) ||
                other.referalId == referalId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referalId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      __$$TagImplCopyWithImpl<_$TagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagImplToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag(
      {@JsonKey(name: "referalId") final ReferalId? referalId,
      @JsonKey(name: "_id") final String? id}) = _$TagImpl;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$TagImpl.fromJson;

  @override
  @JsonKey(name: "referalId")
  ReferalId? get referalId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferalId _$ReferalIdFromJson(Map<String, dynamic> json) {
  return _ReferalId.fromJson(json);
}

/// @nodoc
mixin _$ReferalId {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferalIdCopyWith<ReferalId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferalIdCopyWith<$Res> {
  factory $ReferalIdCopyWith(ReferalId value, $Res Function(ReferalId) then) =
      _$ReferalIdCopyWithImpl<$Res, ReferalId>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "priority") int? priority});
}

/// @nodoc
class _$ReferalIdCopyWithImpl<$Res, $Val extends ReferalId>
    implements $ReferalIdCopyWith<$Res> {
  _$ReferalIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? v = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferalIdImplCopyWith<$Res>
    implements $ReferalIdCopyWith<$Res> {
  factory _$$ReferalIdImplCopyWith(
          _$ReferalIdImpl value, $Res Function(_$ReferalIdImpl) then) =
      __$$ReferalIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "priority") int? priority});
}

/// @nodoc
class __$$ReferalIdImplCopyWithImpl<$Res>
    extends _$ReferalIdCopyWithImpl<$Res, _$ReferalIdImpl>
    implements _$$ReferalIdImplCopyWith<$Res> {
  __$$ReferalIdImplCopyWithImpl(
      _$ReferalIdImpl _value, $Res Function(_$ReferalIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? v = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$ReferalIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferalIdImpl implements _ReferalId {
  const _$ReferalIdImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "priority") this.priority});

  factory _$ReferalIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferalIdImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "priority")
  final int? priority;

  @override
  String toString() {
    return 'ReferalId(id: $id, name: $name, color: $color, v: $v, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferalIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, v, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferalIdImplCopyWith<_$ReferalIdImpl> get copyWith =>
      __$$ReferalIdImplCopyWithImpl<_$ReferalIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferalIdImplToJson(
      this,
    );
  }
}

abstract class _ReferalId implements ReferalId {
  const factory _ReferalId(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "priority") final int? priority}) = _$ReferalIdImpl;

  factory _ReferalId.fromJson(Map<String, dynamic> json) =
      _$ReferalIdImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "priority")
  int? get priority;
  @override
  @JsonKey(ignore: true)
  _$$ReferalIdImplCopyWith<_$ReferalIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
