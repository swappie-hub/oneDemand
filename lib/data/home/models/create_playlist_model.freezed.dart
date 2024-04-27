// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePlaylistRequest _$CreatePlaylistRequestFromJson(
    Map<String, dynamic> json) {
  return _CreatePlaylistRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePlaylistRequest {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  List<Video>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlaylistRequestCopyWith<CreatePlaylistRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlaylistRequestCopyWith<$Res> {
  factory $CreatePlaylistRequestCopyWith(CreatePlaylistRequest value,
          $Res Function(CreatePlaylistRequest) then) =
      _$CreatePlaylistRequestCopyWithImpl<$Res, CreatePlaylistRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class _$CreatePlaylistRequestCopyWithImpl<$Res,
        $Val extends CreatePlaylistRequest>
    implements $CreatePlaylistRequestCopyWith<$Res> {
  _$CreatePlaylistRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? videos = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePlaylistRequestImplCopyWith<$Res>
    implements $CreatePlaylistRequestCopyWith<$Res> {
  factory _$$CreatePlaylistRequestImplCopyWith(
          _$CreatePlaylistRequestImpl value,
          $Res Function(_$CreatePlaylistRequestImpl) then) =
      __$$CreatePlaylistRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class __$$CreatePlaylistRequestImplCopyWithImpl<$Res>
    extends _$CreatePlaylistRequestCopyWithImpl<$Res,
        _$CreatePlaylistRequestImpl>
    implements _$$CreatePlaylistRequestImplCopyWith<$Res> {
  __$$CreatePlaylistRequestImplCopyWithImpl(_$CreatePlaylistRequestImpl _value,
      $Res Function(_$CreatePlaylistRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? videos = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$CreatePlaylistRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlaylistRequestImpl implements _CreatePlaylistRequest {
  const _$CreatePlaylistRequestImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "videos") final List<Video>? videos,
      @JsonKey(name: "userId") this.userId})
      : _videos = videos;

  factory _$CreatePlaylistRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlaylistRequestImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
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
  @JsonKey(name: "userId")
  final String? userId;

  @override
  String toString() {
    return 'CreatePlaylistRequest(name: $name, description: $description, videos: $videos, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlaylistRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_videos), userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlaylistRequestImplCopyWith<_$CreatePlaylistRequestImpl>
      get copyWith => __$$CreatePlaylistRequestImplCopyWithImpl<
          _$CreatePlaylistRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlaylistRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePlaylistRequest implements CreatePlaylistRequest {
  const factory _CreatePlaylistRequest(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "videos") final List<Video>? videos,
          @JsonKey(name: "userId") final String? userId}) =
      _$CreatePlaylistRequestImpl;

  factory _CreatePlaylistRequest.fromJson(Map<String, dynamic> json) =
      _$CreatePlaylistRequestImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "videos")
  List<Video>? get videos;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlaylistRequestImplCopyWith<_$CreatePlaylistRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
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
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "CategoryId")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "videolink")
  String? get videolink => throw _privateConstructorUsedError;
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink => throw _privateConstructorUsedError;
  @JsonKey(name: "videoId")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<Product>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "CategoryDetails")
  List<CategoryDetail>? get categoryDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "tagsData")
  List<TagsDatum>? get tagsData => throw _privateConstructorUsedError;
  @JsonKey(name: "productsData")
  List<ProductsDatum>? get productsData => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

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
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "products") List<Product>? products,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") List<ProductsDatum>? productsData,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "value") String? value});
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
    Object? duration = freezed,
    Object? categoryId = freezed,
    Object? videolink = freezed,
    Object? thumnailLink = freezed,
    Object? videoId = freezed,
    Object? tags = freezed,
    Object? createdAt = freezed,
    Object? releaseDateTime = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
    Object? products = freezed,
    Object? videoLevel = freezed,
    Object? categoryDetails = freezed,
    Object? tagsData = freezed,
    Object? productsData = freezed,
    Object? label = freezed,
    Object? value = freezed,
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
              as dynamic,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      videolink: freezed == videolink
          ? _value.videolink
          : videolink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumnailLink: freezed == thumnailLink
          ? _value.thumnailLink
          : thumnailLink // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releaseDateTime: freezed == releaseDateTime
          ? _value.releaseDateTime
          : releaseDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      videoLevel: freezed == videoLevel
          ? _value.videoLevel
          : videoLevel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryDetails: freezed == categoryDetails
          ? _value.categoryDetails
          : categoryDetails // ignore: cast_nullable_to_non_nullable
              as List<CategoryDetail>?,
      tagsData: freezed == tagsData
          ? _value.tagsData
          : tagsData // ignore: cast_nullable_to_non_nullable
              as List<TagsDatum>?,
      productsData: freezed == productsData
          ? _value.productsData
          : productsData // ignore: cast_nullable_to_non_nullable
              as List<ProductsDatum>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "products") List<Product>? products,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") List<ProductsDatum>? productsData,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "value") String? value});
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
    Object? duration = freezed,
    Object? categoryId = freezed,
    Object? videolink = freezed,
    Object? thumnailLink = freezed,
    Object? videoId = freezed,
    Object? tags = freezed,
    Object? createdAt = freezed,
    Object? releaseDateTime = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
    Object? products = freezed,
    Object? videoLevel = freezed,
    Object? categoryDetails = freezed,
    Object? tagsData = freezed,
    Object? productsData = freezed,
    Object? label = freezed,
    Object? value = freezed,
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
              as dynamic,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      videolink: freezed == videolink
          ? _value.videolink
          : videolink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumnailLink: freezed == thumnailLink
          ? _value.thumnailLink
          : thumnailLink // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releaseDateTime: freezed == releaseDateTime
          ? _value.releaseDateTime
          : releaseDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      videoLevel: freezed == videoLevel
          ? _value._videoLevel
          : videoLevel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryDetails: freezed == categoryDetails
          ? _value._categoryDetails
          : categoryDetails // ignore: cast_nullable_to_non_nullable
              as List<CategoryDetail>?,
      tagsData: freezed == tagsData
          ? _value._tagsData
          : tagsData // ignore: cast_nullable_to_non_nullable
              as List<TagsDatum>?,
      productsData: freezed == productsData
          ? _value._productsData
          : productsData // ignore: cast_nullable_to_non_nullable
              as List<ProductsDatum>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "CategoryId") this.categoryId,
      @JsonKey(name: "videolink") this.videolink,
      @JsonKey(name: "thumnailLink") this.thumnailLink,
      @JsonKey(name: "videoId") this.videoId,
      @JsonKey(name: "tags") final List<Tag>? tags,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "releaseDateTime") this.releaseDateTime,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "products") final List<Product>? products,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails")
      final List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") final List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") final List<ProductsDatum>? productsData,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "value") this.value})
      : _tags = tags,
        _products = products,
        _videoLevel = videoLevel,
        _categoryDetails = categoryDetails,
        _tagsData = tagsData,
        _productsData = productsData;

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
  final dynamic description;
  @override
  @JsonKey(name: "duration")
  final int? duration;
  @override
  @JsonKey(name: "CategoryId")
  final String? categoryId;
  @override
  @JsonKey(name: "videolink")
  final String? videolink;
  @override
  @JsonKey(name: "thumnailLink")
  final String? thumnailLink;
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

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "releaseDateTime")
  final DateTime? releaseDateTime;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  final List<Product>? _products;
  @override
  @JsonKey(name: "products")
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<CategoryDetail>? _categoryDetails;
  @override
  @JsonKey(name: "CategoryDetails")
  List<CategoryDetail>? get categoryDetails {
    final value = _categoryDetails;
    if (value == null) return null;
    if (_categoryDetails is EqualUnmodifiableListView) return _categoryDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagsDatum>? _tagsData;
  @override
  @JsonKey(name: "tagsData")
  List<TagsDatum>? get tagsData {
    final value = _tagsData;
    if (value == null) return null;
    if (_tagsData is EqualUnmodifiableListView) return _tagsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductsDatum>? _productsData;
  @override
  @JsonKey(name: "productsData")
  List<ProductsDatum>? get productsData {
    final value = _productsData;
    if (value == null) return null;
    if (_productsData is EqualUnmodifiableListView) return _productsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'Video(id: $id, vId: $vId, title: $title, description: $description, duration: $duration, categoryId: $categoryId, videolink: $videolink, thumnailLink: $thumnailLink, videoId: $videoId, tags: $tags, createdAt: $createdAt, releaseDateTime: $releaseDateTime, v: $v, updatedAt: $updatedAt, products: $products, videoLevel: $videoLevel, categoryDetails: $categoryDetails, tagsData: $tagsData, productsData: $productsData, label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vId, vId) || other.vId == vId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.videolink, videolink) ||
                other.videolink == videolink) &&
            (identical(other.thumnailLink, thumnailLink) ||
                other.thumnailLink == thumnailLink) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.releaseDateTime, releaseDateTime) ||
                other.releaseDateTime == releaseDateTime) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._videoLevel, _videoLevel) &&
            const DeepCollectionEquality()
                .equals(other._categoryDetails, _categoryDetails) &&
            const DeepCollectionEquality().equals(other._tagsData, _tagsData) &&
            const DeepCollectionEquality()
                .equals(other._productsData, _productsData) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vId,
        title,
        const DeepCollectionEquality().hash(description),
        duration,
        categoryId,
        videolink,
        thumnailLink,
        videoId,
        const DeepCollectionEquality().hash(_tags),
        createdAt,
        releaseDateTime,
        v,
        updatedAt,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_videoLevel),
        const DeepCollectionEquality().hash(_categoryDetails),
        const DeepCollectionEquality().hash(_tagsData),
        const DeepCollectionEquality().hash(_productsData),
        label,
        value
      ]);

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
      @JsonKey(name: "description") final dynamic description,
      @JsonKey(name: "duration") final int? duration,
      @JsonKey(name: "CategoryId") final String? categoryId,
      @JsonKey(name: "videolink") final String? videolink,
      @JsonKey(name: "thumnailLink") final String? thumnailLink,
      @JsonKey(name: "videoId") final String? videoId,
      @JsonKey(name: "tags") final List<Tag>? tags,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") final DateTime? releaseDateTime,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "products") final List<Product>? products,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails")
      final List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") final List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") final List<ProductsDatum>? productsData,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "value") final String? value}) = _$VideoImpl;

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
  dynamic get description;
  @override
  @JsonKey(name: "duration")
  int? get duration;
  @override
  @JsonKey(name: "CategoryId")
  String? get categoryId;
  @override
  @JsonKey(name: "videolink")
  String? get videolink;
  @override
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink;
  @override
  @JsonKey(name: "videoId")
  String? get videoId;
  @override
  @JsonKey(name: "tags")
  List<Tag>? get tags;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "products")
  List<Product>? get products;
  @override
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel;
  @override
  @JsonKey(name: "CategoryDetails")
  List<CategoryDetail>? get categoryDetails;
  @override
  @JsonKey(name: "tagsData")
  List<TagsDatum>? get tagsData;
  @override
  @JsonKey(name: "productsData")
  List<ProductsDatum>? get productsData;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "value")
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDetail _$CategoryDetailFromJson(Map<String, dynamic> json) {
  return _CategoryDetail.fromJson(json);
}

/// @nodoc
mixin _$CategoryDetail {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDetailCopyWith<CategoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailCopyWith<$Res> {
  factory $CategoryDetailCopyWith(
          CategoryDetail value, $Res Function(CategoryDetail) then) =
      _$CategoryDetailCopyWithImpl<$Res, CategoryDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class _$CategoryDetailCopyWithImpl<$Res, $Val extends CategoryDetail>
    implements $CategoryDetailCopyWith<$Res> {
  _$CategoryDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? v = freezed,
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
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDetailImplCopyWith<$Res>
    implements $CategoryDetailCopyWith<$Res> {
  factory _$$CategoryDetailImplCopyWith(_$CategoryDetailImpl value,
          $Res Function(_$CategoryDetailImpl) then) =
      __$$CategoryDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class __$$CategoryDetailImplCopyWithImpl<$Res>
    extends _$CategoryDetailCopyWithImpl<$Res, _$CategoryDetailImpl>
    implements _$$CategoryDetailImplCopyWith<$Res> {
  __$$CategoryDetailImplCopyWithImpl(
      _$CategoryDetailImpl _value, $Res Function(_$CategoryDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? v = freezed,
  }) {
    return _then(_$CategoryDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDetailImpl implements _CategoryDetail {
  const _$CategoryDetailImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "__v") this.v});

  factory _$CategoryDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDetailImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'CategoryDetail(id: $id, name: $name, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailImplCopyWith<_$CategoryDetailImpl> get copyWith =>
      __$$CategoryDetailImplCopyWithImpl<_$CategoryDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDetailImplToJson(
      this,
    );
  }
}

abstract class _CategoryDetail implements CategoryDetail {
  const factory _CategoryDetail(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "__v") final int? v}) = _$CategoryDetailImpl;

  factory _CategoryDetail.fromJson(Map<String, dynamic> json) =
      _$CategoryDetailImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDetailImplCopyWith<_$CategoryDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({@JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl({@JsonKey(name: "_id") this.id});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Product(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product({@JsonKey(name: "_id") final String? id}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsDatum _$ProductsDatumFromJson(Map<String, dynamic> json) {
  return _ProductsDatum.fromJson(json);
}

/// @nodoc
mixin _$ProductsDatum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get productsDatumId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "handle")
  String? get handle => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "variants")
  List<Variant>? get variants => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsDatumCopyWith<ProductsDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDatumCopyWith<$Res> {
  factory $ProductsDatumCopyWith(
          ProductsDatum value, $Res Function(ProductsDatum) then) =
      _$ProductsDatumCopyWithImpl<$Res, ProductsDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "id") String? productsDatumId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "handle") String? handle,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "variants") List<Variant>? variants,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class _$ProductsDatumCopyWithImpl<$Res, $Val extends ProductsDatum>
    implements $ProductsDatumCopyWith<$Res> {
  _$ProductsDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productsDatumId = freezed,
    Object? title = freezed,
    Object? handle = freezed,
    Object? status = freezed,
    Object? variants = freezed,
    Object? images = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productsDatumId: freezed == productsDatumId
          ? _value.productsDatumId
          : productsDatumId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: freezed == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsDatumImplCopyWith<$Res>
    implements $ProductsDatumCopyWith<$Res> {
  factory _$$ProductsDatumImplCopyWith(
          _$ProductsDatumImpl value, $Res Function(_$ProductsDatumImpl) then) =
      __$$ProductsDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "id") String? productsDatumId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "handle") String? handle,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "variants") List<Variant>? variants,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class __$$ProductsDatumImplCopyWithImpl<$Res>
    extends _$ProductsDatumCopyWithImpl<$Res, _$ProductsDatumImpl>
    implements _$$ProductsDatumImplCopyWith<$Res> {
  __$$ProductsDatumImplCopyWithImpl(
      _$ProductsDatumImpl _value, $Res Function(_$ProductsDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productsDatumId = freezed,
    Object? title = freezed,
    Object? handle = freezed,
    Object? status = freezed,
    Object? variants = freezed,
    Object? images = freezed,
    Object? v = freezed,
  }) {
    return _then(_$ProductsDatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productsDatumId: freezed == productsDatumId
          ? _value.productsDatumId
          : productsDatumId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: freezed == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsDatumImpl implements _ProductsDatum {
  const _$ProductsDatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "id") this.productsDatumId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "handle") this.handle,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "variants") final List<Variant>? variants,
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "__v") this.v})
      : _variants = variants,
        _images = images;

  factory _$ProductsDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDatumImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "id")
  final String? productsDatumId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "handle")
  final String? handle;
  @override
  @JsonKey(name: "status")
  final String? status;
  final List<Variant>? _variants;
  @override
  @JsonKey(name: "variants")
  List<Variant>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
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
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'ProductsDatum(id: $id, productsDatumId: $productsDatumId, title: $title, handle: $handle, status: $status, variants: $variants, images: $images, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productsDatumId, productsDatumId) ||
                other.productsDatumId == productsDatumId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productsDatumId,
      title,
      handle,
      status,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_images),
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDatumImplCopyWith<_$ProductsDatumImpl> get copyWith =>
      __$$ProductsDatumImplCopyWithImpl<_$ProductsDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDatumImplToJson(
      this,
    );
  }
}

abstract class _ProductsDatum implements ProductsDatum {
  const factory _ProductsDatum(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "id") final String? productsDatumId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "handle") final String? handle,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "variants") final List<Variant>? variants,
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "__v") final int? v}) = _$ProductsDatumImpl;

  factory _ProductsDatum.fromJson(Map<String, dynamic> json) =
      _$ProductsDatumImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "id")
  String? get productsDatumId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "handle")
  String? get handle;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "variants")
  List<Variant>? get variants;
  @override
  @JsonKey(name: "images")
  List<Image>? get images;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$ProductsDatumImplCopyWith<_$ProductsDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "src")
  String? get src => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: "src") String? src, @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: "src") String? src, @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ImageImpl(
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "src") this.src, @JsonKey(name: "_id") this.id});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "src")
  final String? src;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Image(src: $src, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, src, id);

  @JsonKey(ignore: true)
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
  const factory _Image(
      {@JsonKey(name: "src") final String? src,
      @JsonKey(name: "_id") final String? id}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "src")
  String? get src;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  @JsonKey(name: "id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? variantId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
          _$VariantImpl value, $Res Function(_$VariantImpl) then) =
      __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? variantId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
      _$VariantImpl _value, $Res Function(_$VariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VariantImpl(
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantImpl implements _Variant {
  const _$VariantImpl(
      {@JsonKey(name: "id") this.variantId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "_id") this.id});

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? variantId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Variant(variantId: $variantId, title: $title, price: $price, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, variantId, title, price, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantImplToJson(
      this,
    );
  }
}

abstract class _Variant implements Variant {
  const factory _Variant(
      {@JsonKey(name: "id") final String? variantId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "_id") final String? id}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get variantId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  @JsonKey(name: "referalId")
  String? get referalId => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "referalId") String? referalId,
      @JsonKey(name: "_id") String? id});
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
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagImplCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$TagImplCopyWith(_$TagImpl value, $Res Function(_$TagImpl) then) =
      __$$TagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "referalId") String? referalId,
      @JsonKey(name: "_id") String? id});
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
              as String?,
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
  final String? referalId;
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
      {@JsonKey(name: "referalId") final String? referalId,
      @JsonKey(name: "_id") final String? id}) = _$TagImpl;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$TagImpl.fromJson;

  @override
  @JsonKey(name: "referalId")
  String? get referalId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagsDatum _$TagsDatumFromJson(Map<String, dynamic> json) {
  return _TagsDatum.fromJson(json);
}

/// @nodoc
mixin _$TagsDatum {
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
  $TagsDatumCopyWith<TagsDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsDatumCopyWith<$Res> {
  factory $TagsDatumCopyWith(TagsDatum value, $Res Function(TagsDatum) then) =
      _$TagsDatumCopyWithImpl<$Res, TagsDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "priority") int? priority});
}

/// @nodoc
class _$TagsDatumCopyWithImpl<$Res, $Val extends TagsDatum>
    implements $TagsDatumCopyWith<$Res> {
  _$TagsDatumCopyWithImpl(this._value, this._then);

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
abstract class _$$TagsDatumImplCopyWith<$Res>
    implements $TagsDatumCopyWith<$Res> {
  factory _$$TagsDatumImplCopyWith(
          _$TagsDatumImpl value, $Res Function(_$TagsDatumImpl) then) =
      __$$TagsDatumImplCopyWithImpl<$Res>;
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
class __$$TagsDatumImplCopyWithImpl<$Res>
    extends _$TagsDatumCopyWithImpl<$Res, _$TagsDatumImpl>
    implements _$$TagsDatumImplCopyWith<$Res> {
  __$$TagsDatumImplCopyWithImpl(
      _$TagsDatumImpl _value, $Res Function(_$TagsDatumImpl) _then)
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
    return _then(_$TagsDatumImpl(
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
class _$TagsDatumImpl implements _TagsDatum {
  const _$TagsDatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "priority") this.priority});

  factory _$TagsDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsDatumImplFromJson(json);

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
    return 'TagsDatum(id: $id, name: $name, color: $color, v: $v, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsDatumImpl &&
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
  _$$TagsDatumImplCopyWith<_$TagsDatumImpl> get copyWith =>
      __$$TagsDatumImplCopyWithImpl<_$TagsDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsDatumImplToJson(
      this,
    );
  }
}

abstract class _TagsDatum implements TagsDatum {
  const factory _TagsDatum(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "priority") final int? priority}) = _$TagsDatumImpl;

  factory _TagsDatum.fromJson(Map<String, dynamic> json) =
      _$TagsDatumImpl.fromJson;

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
  _$$TagsDatumImplCopyWith<_$TagsDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePlaylistResponse _$CreatePlaylistResponseFromJson(
    Map<String, dynamic> json) {
  return _CreatePlaylistResponse.fromJson(json);
}

/// @nodoc
mixin _$CreatePlaylistResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlaylistResponseCopyWith<CreatePlaylistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlaylistResponseCopyWith<$Res> {
  factory $CreatePlaylistResponseCopyWith(CreatePlaylistResponse value,
          $Res Function(CreatePlaylistResponse) then) =
      _$CreatePlaylistResponseCopyWithImpl<$Res, CreatePlaylistResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$CreatePlaylistResponseCopyWithImpl<$Res,
        $Val extends CreatePlaylistResponse>
    implements $CreatePlaylistResponseCopyWith<$Res> {
  _$CreatePlaylistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePlaylistResponseImplCopyWith<$Res>
    implements $CreatePlaylistResponseCopyWith<$Res> {
  factory _$$CreatePlaylistResponseImplCopyWith(
          _$CreatePlaylistResponseImpl value,
          $Res Function(_$CreatePlaylistResponseImpl) then) =
      __$$CreatePlaylistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$CreatePlaylistResponseImplCopyWithImpl<$Res>
    extends _$CreatePlaylistResponseCopyWithImpl<$Res,
        _$CreatePlaylistResponseImpl>
    implements _$$CreatePlaylistResponseImplCopyWith<$Res> {
  __$$CreatePlaylistResponseImplCopyWithImpl(
      _$CreatePlaylistResponseImpl _value,
      $Res Function(_$CreatePlaylistResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CreatePlaylistResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlaylistResponseImpl implements _CreatePlaylistResponse {
  const _$CreatePlaylistResponseImpl({@JsonKey(name: "message") this.message});

  factory _$CreatePlaylistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlaylistResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'CreatePlaylistResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlaylistResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlaylistResponseImplCopyWith<_$CreatePlaylistResponseImpl>
      get copyWith => __$$CreatePlaylistResponseImplCopyWithImpl<
          _$CreatePlaylistResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlaylistResponseImplToJson(
      this,
    );
  }
}

abstract class _CreatePlaylistResponse implements CreatePlaylistResponse {
  const factory _CreatePlaylistResponse(
          {@JsonKey(name: "message") final String? message}) =
      _$CreatePlaylistResponseImpl;

  factory _CreatePlaylistResponse.fromJson(Map<String, dynamic> json) =
      _$CreatePlaylistResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlaylistResponseImplCopyWith<_$CreatePlaylistResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
