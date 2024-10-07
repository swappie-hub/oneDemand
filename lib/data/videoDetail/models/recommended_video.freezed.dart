// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecomendedVideoRequest _$RecomendedVideoRequestFromJson(
    Map<String, dynamic> json) {
  return _RecomendedVideoRequest.fromJson(json);
}

/// @nodoc
mixin _$RecomendedVideoRequest {
  @JsonKey(name: "videoId")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this RecomendedVideoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecomendedVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecomendedVideoRequestCopyWith<RecomendedVideoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendedVideoRequestCopyWith<$Res> {
  factory $RecomendedVideoRequestCopyWith(RecomendedVideoRequest value,
          $Res Function(RecomendedVideoRequest) then) =
      _$RecomendedVideoRequestCopyWithImpl<$Res, RecomendedVideoRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<String>? tags});
}

/// @nodoc
class _$RecomendedVideoRequestCopyWithImpl<$Res,
        $Val extends RecomendedVideoRequest>
    implements $RecomendedVideoRequestCopyWith<$Res> {
  _$RecomendedVideoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecomendedVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecomendedVideoRequestImplCopyWith<$Res>
    implements $RecomendedVideoRequestCopyWith<$Res> {
  factory _$$RecomendedVideoRequestImplCopyWith(
          _$RecomendedVideoRequestImpl value,
          $Res Function(_$RecomendedVideoRequestImpl) then) =
      __$$RecomendedVideoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<String>? tags});
}

/// @nodoc
class __$$RecomendedVideoRequestImplCopyWithImpl<$Res>
    extends _$RecomendedVideoRequestCopyWithImpl<$Res,
        _$RecomendedVideoRequestImpl>
    implements _$$RecomendedVideoRequestImplCopyWith<$Res> {
  __$$RecomendedVideoRequestImplCopyWithImpl(
      _$RecomendedVideoRequestImpl _value,
      $Res Function(_$RecomendedVideoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecomendedVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$RecomendedVideoRequestImpl(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendedVideoRequestImpl implements _RecomendedVideoRequest {
  const _$RecomendedVideoRequestImpl(
      {@JsonKey(name: "videoId") this.videoId,
      @JsonKey(name: "tags") final List<String>? tags})
      : _tags = tags;

  factory _$RecomendedVideoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecomendedVideoRequestImplFromJson(json);

  @override
  @JsonKey(name: "videoId")
  final String? videoId;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecomendedVideoRequest(videoId: $videoId, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendedVideoRequestImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, videoId, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of RecomendedVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendedVideoRequestImplCopyWith<_$RecomendedVideoRequestImpl>
      get copyWith => __$$RecomendedVideoRequestImplCopyWithImpl<
          _$RecomendedVideoRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendedVideoRequestImplToJson(
      this,
    );
  }
}

abstract class _RecomendedVideoRequest implements RecomendedVideoRequest {
  const factory _RecomendedVideoRequest(
          {@JsonKey(name: "videoId") final String? videoId,
          @JsonKey(name: "tags") final List<String>? tags}) =
      _$RecomendedVideoRequestImpl;

  factory _RecomendedVideoRequest.fromJson(Map<String, dynamic> json) =
      _$RecomendedVideoRequestImpl.fromJson;

  @override
  @JsonKey(name: "videoId")
  String? get videoId;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;

  /// Create a copy of RecomendedVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecomendedVideoRequestImplCopyWith<_$RecomendedVideoRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecomendedVideoResponse _$RecomendedVideoResponseFromJson(
    Map<String, dynamic> json) {
  return _RecomendedVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$RecomendedVideoResponse {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "v_id")
  String? get vId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
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
  @JsonKey(name: "products")
  List<dynamic>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "CategoryDetails")
  List<CategoryDetail>? get categoryDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "tagsData")
  List<TagsDatum>? get tagsData => throw _privateConstructorUsedError;
  @JsonKey(name: "productsData")
  List<dynamic>? get productsData => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  RecomendedVideoResponse? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RecomendedVideoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecomendedVideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecomendedVideoResponseCopyWith<RecomendedVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendedVideoResponseCopyWith<$Res> {
  factory $RecomendedVideoResponseCopyWith(RecomendedVideoResponse value,
          $Res Function(RecomendedVideoResponse) then) =
      _$RecomendedVideoResponseCopyWithImpl<$Res, RecomendedVideoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "v_id") String? vId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "products") List<dynamic>? products,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") List<dynamic>? productsData,
      @JsonKey(name: "data") RecomendedVideoResponse? data,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $RecomendedVideoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$RecomendedVideoResponseCopyWithImpl<$Res,
        $Val extends RecomendedVideoResponse>
    implements $RecomendedVideoResponseCopyWith<$Res> {
  _$RecomendedVideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecomendedVideoResponse
  /// with the given fields replaced by the non-null parameter values.
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
    Object? products = freezed,
    Object? videoLevel = freezed,
    Object? categoryDetails = freezed,
    Object? tagsData = freezed,
    Object? productsData = freezed,
    Object? data = freezed,
    Object? updatedAt = freezed,
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
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as List<dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RecomendedVideoResponse?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of RecomendedVideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecomendedVideoResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RecomendedVideoResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecomendedVideoResponseImplCopyWith<$Res>
    implements $RecomendedVideoResponseCopyWith<$Res> {
  factory _$$RecomendedVideoResponseImplCopyWith(
          _$RecomendedVideoResponseImpl value,
          $Res Function(_$RecomendedVideoResponseImpl) then) =
      __$$RecomendedVideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "v_id") String? vId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "products") List<dynamic>? products,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") List<dynamic>? productsData,
      @JsonKey(name: "data") RecomendedVideoResponse? data,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $RecomendedVideoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RecomendedVideoResponseImplCopyWithImpl<$Res>
    extends _$RecomendedVideoResponseCopyWithImpl<$Res,
        _$RecomendedVideoResponseImpl>
    implements _$$RecomendedVideoResponseImplCopyWith<$Res> {
  __$$RecomendedVideoResponseImplCopyWithImpl(
      _$RecomendedVideoResponseImpl _value,
      $Res Function(_$RecomendedVideoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecomendedVideoResponse
  /// with the given fields replaced by the non-null parameter values.
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
    Object? products = freezed,
    Object? videoLevel = freezed,
    Object? categoryDetails = freezed,
    Object? tagsData = freezed,
    Object? productsData = freezed,
    Object? data = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RecomendedVideoResponseImpl(
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
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as List<dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RecomendedVideoResponse?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendedVideoResponseImpl implements _RecomendedVideoResponse {
  const _$RecomendedVideoResponseImpl(
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
      @JsonKey(name: "products") final List<dynamic>? products,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "CategoryDetails")
      final List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsData") final List<TagsDatum>? tagsData,
      @JsonKey(name: "productsData") final List<dynamic>? productsData,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _tags = tags,
        _products = products,
        _videoLevel = videoLevel,
        _categoryDetails = categoryDetails,
        _tagsData = tagsData,
        _productsData = productsData;

  factory _$RecomendedVideoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecomendedVideoResponseImplFromJson(json);

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

  final List<dynamic>? _productsData;
  @override
  @JsonKey(name: "productsData")
  List<dynamic>? get productsData {
    final value = _productsData;
    if (value == null) return null;
    if (_productsData is EqualUnmodifiableListView) return _productsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "data")
  final RecomendedVideoResponse? data;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'RecomendedVideoResponse(id: $id, vId: $vId, title: $title, description: $description, duration: $duration, categoryId: $categoryId, videolink: $videolink, thumnailLink: $thumnailLink, videoId: $videoId, tags: $tags, createdAt: $createdAt, releaseDateTime: $releaseDateTime, v: $v, products: $products, videoLevel: $videoLevel, categoryDetails: $categoryDetails, tagsData: $tagsData, productsData: $productsData, data: $data, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendedVideoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vId, vId) || other.vId == vId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
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
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._videoLevel, _videoLevel) &&
            const DeepCollectionEquality()
                .equals(other._categoryDetails, _categoryDetails) &&
            const DeepCollectionEquality().equals(other._tagsData, _tagsData) &&
            const DeepCollectionEquality()
                .equals(other._productsData, _productsData) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vId,
        title,
        description,
        duration,
        categoryId,
        videolink,
        thumnailLink,
        videoId,
        const DeepCollectionEquality().hash(_tags),
        createdAt,
        releaseDateTime,
        v,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_videoLevel),
        const DeepCollectionEquality().hash(_categoryDetails),
        const DeepCollectionEquality().hash(_tagsData),
        const DeepCollectionEquality().hash(_productsData),
        data,
        updatedAt
      ]);

  /// Create a copy of RecomendedVideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendedVideoResponseImplCopyWith<_$RecomendedVideoResponseImpl>
      get copyWith => __$$RecomendedVideoResponseImplCopyWithImpl<
          _$RecomendedVideoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendedVideoResponseImplToJson(
      this,
    );
  }
}

abstract class _RecomendedVideoResponse implements RecomendedVideoResponse {
  const factory _RecomendedVideoResponse(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "v_id") final String? vId,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "duration") final int? duration,
          @JsonKey(name: "CategoryId") final String? categoryId,
          @JsonKey(name: "videolink") final String? videolink,
          @JsonKey(name: "thumnailLink") final String? thumnailLink,
          @JsonKey(name: "videoId") final String? videoId,
          @JsonKey(name: "tags") final List<Tag>? tags,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "releaseDateTime") final DateTime? releaseDateTime,
          @JsonKey(name: "__v") final int? v,
          @JsonKey(name: "products") final List<dynamic>? products,
          @JsonKey(name: "videoLevel") final List<String>? videoLevel,
          @JsonKey(name: "CategoryDetails")
          final List<CategoryDetail>? categoryDetails,
          @JsonKey(name: "tagsData") final List<TagsDatum>? tagsData,
          @JsonKey(name: "productsData") final List<dynamic>? productsData,
          @JsonKey(name: "data") final RecomendedVideoResponse? data,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$RecomendedVideoResponseImpl;

  factory _RecomendedVideoResponse.fromJson(Map<String, dynamic> json) =
      _$RecomendedVideoResponseImpl.fromJson;

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
  @JsonKey(name: "products")
  List<dynamic>? get products;
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
  List<dynamic>? get productsData;
  @override
  @JsonKey(name: "data")
  RecomendedVideoResponse? get data;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;

  /// Create a copy of RecomendedVideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecomendedVideoResponseImplCopyWith<_$RecomendedVideoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// Serializes this CategoryDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CategoryDetail
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CategoryDetail
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, v);

  /// Create a copy of CategoryDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CategoryDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDetailImplCopyWith<_$CategoryDetailImpl> get copyWith =>
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

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, referalId, id);

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this TagsDatum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagsDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of TagsDatum
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of TagsDatum
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, v, priority);

  /// Create a copy of TagsDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of TagsDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagsDatumImplCopyWith<_$TagsDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
