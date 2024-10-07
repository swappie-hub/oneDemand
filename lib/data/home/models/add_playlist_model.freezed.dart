// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddPlaylistRequest _$AddPlaylistRequestFromJson(Map<String, dynamic> json) {
  return _AddPlaylistRequest.fromJson(json);
}

/// @nodoc
mixin _$AddPlaylistRequest {
  @JsonKey(name: "myArray")
  List<MyArray>? get myArray => throw _privateConstructorUsedError;

  /// Serializes this AddPlaylistRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddPlaylistRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPlaylistRequestCopyWith<AddPlaylistRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaylistRequestCopyWith<$Res> {
  factory $AddPlaylistRequestCopyWith(
          AddPlaylistRequest value, $Res Function(AddPlaylistRequest) then) =
      _$AddPlaylistRequestCopyWithImpl<$Res, AddPlaylistRequest>;
  @useResult
  $Res call({@JsonKey(name: "myArray") List<MyArray>? myArray});
}

/// @nodoc
class _$AddPlaylistRequestCopyWithImpl<$Res, $Val extends AddPlaylistRequest>
    implements $AddPlaylistRequestCopyWith<$Res> {
  _$AddPlaylistRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPlaylistRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myArray = freezed,
  }) {
    return _then(_value.copyWith(
      myArray: freezed == myArray
          ? _value.myArray
          : myArray // ignore: cast_nullable_to_non_nullable
              as List<MyArray>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPlaylistRequestImplCopyWith<$Res>
    implements $AddPlaylistRequestCopyWith<$Res> {
  factory _$$AddPlaylistRequestImplCopyWith(_$AddPlaylistRequestImpl value,
          $Res Function(_$AddPlaylistRequestImpl) then) =
      __$$AddPlaylistRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "myArray") List<MyArray>? myArray});
}

/// @nodoc
class __$$AddPlaylistRequestImplCopyWithImpl<$Res>
    extends _$AddPlaylistRequestCopyWithImpl<$Res, _$AddPlaylistRequestImpl>
    implements _$$AddPlaylistRequestImplCopyWith<$Res> {
  __$$AddPlaylistRequestImplCopyWithImpl(_$AddPlaylistRequestImpl _value,
      $Res Function(_$AddPlaylistRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPlaylistRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myArray = freezed,
  }) {
    return _then(_$AddPlaylistRequestImpl(
      myArray: freezed == myArray
          ? _value._myArray
          : myArray // ignore: cast_nullable_to_non_nullable
              as List<MyArray>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPlaylistRequestImpl implements _AddPlaylistRequest {
  const _$AddPlaylistRequestImpl(
      {@JsonKey(name: "myArray") final List<MyArray>? myArray})
      : _myArray = myArray;

  factory _$AddPlaylistRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPlaylistRequestImplFromJson(json);

  final List<MyArray>? _myArray;
  @override
  @JsonKey(name: "myArray")
  List<MyArray>? get myArray {
    final value = _myArray;
    if (value == null) return null;
    if (_myArray is EqualUnmodifiableListView) return _myArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddPlaylistRequest(myArray: $myArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaylistRequestImpl &&
            const DeepCollectionEquality().equals(other._myArray, _myArray));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_myArray));

  /// Create a copy of AddPlaylistRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaylistRequestImplCopyWith<_$AddPlaylistRequestImpl> get copyWith =>
      __$$AddPlaylistRequestImplCopyWithImpl<_$AddPlaylistRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPlaylistRequestImplToJson(
      this,
    );
  }
}

abstract class _AddPlaylistRequest implements AddPlaylistRequest {
  const factory _AddPlaylistRequest(
          {@JsonKey(name: "myArray") final List<MyArray>? myArray}) =
      _$AddPlaylistRequestImpl;

  factory _AddPlaylistRequest.fromJson(Map<String, dynamic> json) =
      _$AddPlaylistRequestImpl.fromJson;

  @override
  @JsonKey(name: "myArray")
  List<MyArray>? get myArray;

  /// Create a copy of AddPlaylistRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPlaylistRequestImplCopyWith<_$AddPlaylistRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyArray _$MyArrayFromJson(Map<String, dynamic> json) {
  return _MyArray.fromJson(json);
}

/// @nodoc
mixin _$MyArray {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "object_id")
  String? get objectId => throw _privateConstructorUsedError;
  @JsonKey(name: "video_object")
  VideoObject? get videoObject => throw _privateConstructorUsedError;

  /// Serializes this MyArray to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyArrayCopyWith<MyArray> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyArrayCopyWith<$Res> {
  factory $MyArrayCopyWith(MyArray value, $Res Function(MyArray) then) =
      _$MyArrayCopyWithImpl<$Res, MyArray>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "object_id") String? objectId,
      @JsonKey(name: "video_object") VideoObject? videoObject});

  $VideoObjectCopyWith<$Res>? get videoObject;
}

/// @nodoc
class _$MyArrayCopyWithImpl<$Res, $Val extends MyArray>
    implements $MyArrayCopyWith<$Res> {
  _$MyArrayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? objectId = freezed,
    Object? videoObject = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoObject: freezed == videoObject
          ? _value.videoObject
          : videoObject // ignore: cast_nullable_to_non_nullable
              as VideoObject?,
    ) as $Val);
  }

  /// Create a copy of MyArray
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoObjectCopyWith<$Res>? get videoObject {
    if (_value.videoObject == null) {
      return null;
    }

    return $VideoObjectCopyWith<$Res>(_value.videoObject!, (value) {
      return _then(_value.copyWith(videoObject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyArrayImplCopyWith<$Res> implements $MyArrayCopyWith<$Res> {
  factory _$$MyArrayImplCopyWith(
          _$MyArrayImpl value, $Res Function(_$MyArrayImpl) then) =
      __$$MyArrayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "object_id") String? objectId,
      @JsonKey(name: "video_object") VideoObject? videoObject});

  @override
  $VideoObjectCopyWith<$Res>? get videoObject;
}

/// @nodoc
class __$$MyArrayImplCopyWithImpl<$Res>
    extends _$MyArrayCopyWithImpl<$Res, _$MyArrayImpl>
    implements _$$MyArrayImplCopyWith<$Res> {
  __$$MyArrayImplCopyWithImpl(
      _$MyArrayImpl _value, $Res Function(_$MyArrayImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? objectId = freezed,
    Object? videoObject = freezed,
  }) {
    return _then(_$MyArrayImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoObject: freezed == videoObject
          ? _value.videoObject
          : videoObject // ignore: cast_nullable_to_non_nullable
              as VideoObject?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyArrayImpl implements _MyArray {
  const _$MyArrayImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "object_id") this.objectId,
      @JsonKey(name: "video_object") this.videoObject});

  factory _$MyArrayImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyArrayImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "object_id")
  final String? objectId;
  @override
  @JsonKey(name: "video_object")
  final VideoObject? videoObject;

  @override
  String toString() {
    return 'MyArray(name: $name, objectId: $objectId, videoObject: $videoObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyArrayImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.videoObject, videoObject) ||
                other.videoObject == videoObject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, objectId, videoObject);

  /// Create a copy of MyArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyArrayImplCopyWith<_$MyArrayImpl> get copyWith =>
      __$$MyArrayImplCopyWithImpl<_$MyArrayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyArrayImplToJson(
      this,
    );
  }
}

abstract class _MyArray implements MyArray {
  const factory _MyArray(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "object_id") final String? objectId,
          @JsonKey(name: "video_object") final VideoObject? videoObject}) =
      _$MyArrayImpl;

  factory _MyArray.fromJson(Map<String, dynamic> json) = _$MyArrayImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "object_id")
  String? get objectId;
  @override
  @JsonKey(name: "video_object")
  VideoObject? get videoObject;

  /// Create a copy of MyArray
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyArrayImplCopyWith<_$MyArrayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoObject _$VideoObjectFromJson(Map<String, dynamic> json) {
  return _VideoObject.fromJson(json);
}

/// @nodoc
mixin _$VideoObject {
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
  @JsonKey(name: "videoId")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "videolink")
  String? get videolink => throw _privateConstructorUsedError;
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<dynamic>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "CategoryDetails")
  List<CategoryDetail>? get categoryDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "productsData")
  List<dynamic>? get productsData => throw _privateConstructorUsedError;
  @JsonKey(name: "savedvideo")
  bool? get savedvideo => throw _privateConstructorUsedError;

  /// Serializes this VideoObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoObjectCopyWith<VideoObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoObjectCopyWith<$Res> {
  factory $VideoObjectCopyWith(
          VideoObject value, $Res Function(VideoObject) then) =
      _$VideoObjectCopyWithImpl<$Res, VideoObject>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "v_id") String? vId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "products") List<dynamic>? products,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
      @JsonKey(name: "productsData") List<dynamic>? productsData,
      @JsonKey(name: "savedvideo") bool? savedvideo});
}

/// @nodoc
class _$VideoObjectCopyWithImpl<$Res, $Val extends VideoObject>
    implements $VideoObjectCopyWith<$Res> {
  _$VideoObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? videoId = freezed,
    Object? videoLevel = freezed,
    Object? videolink = freezed,
    Object? thumnailLink = freezed,
    Object? duration = freezed,
    Object? tags = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? releaseDateTime = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
    Object? categoryDetails = freezed,
    Object? tagsDetails = freezed,
    Object? productsData = freezed,
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
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLevel: freezed == videoLevel
          ? _value.videoLevel
          : videoLevel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      categoryDetails: freezed == categoryDetails
          ? _value.categoryDetails
          : categoryDetails // ignore: cast_nullable_to_non_nullable
              as List<CategoryDetail>?,
      tagsDetails: freezed == tagsDetails
          ? _value.tagsDetails
          : tagsDetails // ignore: cast_nullable_to_non_nullable
              as List<TagsDetail>?,
      productsData: freezed == productsData
          ? _value.productsData
          : productsData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      savedvideo: freezed == savedvideo
          ? _value.savedvideo
          : savedvideo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoObjectImplCopyWith<$Res>
    implements $VideoObjectCopyWith<$Res> {
  factory _$$VideoObjectImplCopyWith(
          _$VideoObjectImpl value, $Res Function(_$VideoObjectImpl) then) =
      __$$VideoObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "v_id") String? vId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "CategoryId") String? categoryId,
      @JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "videoLevel") List<String>? videoLevel,
      @JsonKey(name: "videolink") String? videolink,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "tags") List<Tag>? tags,
      @JsonKey(name: "products") List<dynamic>? products,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
      @JsonKey(name: "productsData") List<dynamic>? productsData,
      @JsonKey(name: "savedvideo") bool? savedvideo});
}

/// @nodoc
class __$$VideoObjectImplCopyWithImpl<$Res>
    extends _$VideoObjectCopyWithImpl<$Res, _$VideoObjectImpl>
    implements _$$VideoObjectImplCopyWith<$Res> {
  __$$VideoObjectImplCopyWithImpl(
      _$VideoObjectImpl _value, $Res Function(_$VideoObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? videoId = freezed,
    Object? videoLevel = freezed,
    Object? videolink = freezed,
    Object? thumnailLink = freezed,
    Object? duration = freezed,
    Object? tags = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? releaseDateTime = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
    Object? categoryDetails = freezed,
    Object? tagsDetails = freezed,
    Object? productsData = freezed,
    Object? savedvideo = freezed,
  }) {
    return _then(_$VideoObjectImpl(
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
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLevel: freezed == videoLevel
          ? _value._videoLevel
          : videoLevel // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      categoryDetails: freezed == categoryDetails
          ? _value._categoryDetails
          : categoryDetails // ignore: cast_nullable_to_non_nullable
              as List<CategoryDetail>?,
      tagsDetails: freezed == tagsDetails
          ? _value._tagsDetails
          : tagsDetails // ignore: cast_nullable_to_non_nullable
              as List<TagsDetail>?,
      productsData: freezed == productsData
          ? _value._productsData
          : productsData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      savedvideo: freezed == savedvideo
          ? _value.savedvideo
          : savedvideo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoObjectImpl implements _VideoObject {
  const _$VideoObjectImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "v_id") this.vId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "CategoryId") this.categoryId,
      @JsonKey(name: "videoId") this.videoId,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "videolink") this.videolink,
      @JsonKey(name: "thumnailLink") this.thumnailLink,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "tags") final List<Tag>? tags,
      @JsonKey(name: "products") final List<dynamic>? products,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "releaseDateTime") this.releaseDateTime,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "CategoryDetails")
      final List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsDetails") final List<TagsDetail>? tagsDetails,
      @JsonKey(name: "productsData") final List<dynamic>? productsData,
      @JsonKey(name: "savedvideo") this.savedvideo})
      : _videoLevel = videoLevel,
        _tags = tags,
        _products = products,
        _categoryDetails = categoryDetails,
        _tagsDetails = tagsDetails,
        _productsData = productsData;

  factory _$VideoObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoObjectImplFromJson(json);

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
  @override
  @JsonKey(name: "videoId")
  final String? videoId;
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
  @JsonKey(name: "videolink")
  final String? videolink;
  @override
  @JsonKey(name: "thumnailLink")
  final String? thumnailLink;
  @override
  @JsonKey(name: "duration")
  final int? duration;
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
  @JsonKey(name: "releaseDateTime")
  final DateTime? releaseDateTime;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
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

  final List<TagsDetail>? _tagsDetails;
  @override
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails {
    final value = _tagsDetails;
    if (value == null) return null;
    if (_tagsDetails is EqualUnmodifiableListView) return _tagsDetails;
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
  @JsonKey(name: "savedvideo")
  final bool? savedvideo;

  @override
  String toString() {
    return 'VideoObject(id: $id, vId: $vId, title: $title, description: $description, categoryId: $categoryId, videoId: $videoId, videoLevel: $videoLevel, videolink: $videolink, thumnailLink: $thumnailLink, duration: $duration, tags: $tags, products: $products, createdAt: $createdAt, releaseDateTime: $releaseDateTime, v: $v, updatedAt: $updatedAt, categoryDetails: $categoryDetails, tagsDetails: $tagsDetails, productsData: $productsData, savedvideo: $savedvideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vId, vId) || other.vId == vId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            const DeepCollectionEquality()
                .equals(other._videoLevel, _videoLevel) &&
            (identical(other.videolink, videolink) ||
                other.videolink == videolink) &&
            (identical(other.thumnailLink, thumnailLink) ||
                other.thumnailLink == thumnailLink) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.releaseDateTime, releaseDateTime) ||
                other.releaseDateTime == releaseDateTime) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._categoryDetails, _categoryDetails) &&
            const DeepCollectionEquality()
                .equals(other._tagsDetails, _tagsDetails) &&
            const DeepCollectionEquality()
                .equals(other._productsData, _productsData) &&
            (identical(other.savedvideo, savedvideo) ||
                other.savedvideo == savedvideo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vId,
        title,
        description,
        categoryId,
        videoId,
        const DeepCollectionEquality().hash(_videoLevel),
        videolink,
        thumnailLink,
        duration,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_products),
        createdAt,
        releaseDateTime,
        v,
        updatedAt,
        const DeepCollectionEquality().hash(_categoryDetails),
        const DeepCollectionEquality().hash(_tagsDetails),
        const DeepCollectionEquality().hash(_productsData),
        savedvideo
      ]);

  /// Create a copy of VideoObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoObjectImplCopyWith<_$VideoObjectImpl> get copyWith =>
      __$$VideoObjectImplCopyWithImpl<_$VideoObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoObjectImplToJson(
      this,
    );
  }
}

abstract class _VideoObject implements VideoObject {
  const factory _VideoObject(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "v_id") final String? vId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "CategoryId") final String? categoryId,
      @JsonKey(name: "videoId") final String? videoId,
      @JsonKey(name: "videoLevel") final List<String>? videoLevel,
      @JsonKey(name: "videolink") final String? videolink,
      @JsonKey(name: "thumnailLink") final String? thumnailLink,
      @JsonKey(name: "duration") final int? duration,
      @JsonKey(name: "tags") final List<Tag>? tags,
      @JsonKey(name: "products") final List<dynamic>? products,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "releaseDateTime") final DateTime? releaseDateTime,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "CategoryDetails")
      final List<CategoryDetail>? categoryDetails,
      @JsonKey(name: "tagsDetails") final List<TagsDetail>? tagsDetails,
      @JsonKey(name: "productsData") final List<dynamic>? productsData,
      @JsonKey(name: "savedvideo") final bool? savedvideo}) = _$VideoObjectImpl;

  factory _VideoObject.fromJson(Map<String, dynamic> json) =
      _$VideoObjectImpl.fromJson;

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
  @JsonKey(name: "videoId")
  String? get videoId;
  @override
  @JsonKey(name: "videoLevel")
  List<String>? get videoLevel;
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
  @JsonKey(name: "tags")
  List<Tag>? get tags;
  @override
  @JsonKey(name: "products")
  List<dynamic>? get products;
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
  @JsonKey(name: "CategoryDetails")
  List<CategoryDetail>? get categoryDetails;
  @override
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails;
  @override
  @JsonKey(name: "productsData")
  List<dynamic>? get productsData;
  @override
  @JsonKey(name: "savedvideo")
  bool? get savedvideo;

  /// Create a copy of VideoObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoObjectImplCopyWith<_$VideoObjectImpl> get copyWith =>
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

TagsDetail _$TagsDetailFromJson(Map<String, dynamic> json) {
  return _TagsDetail.fromJson(json);
}

/// @nodoc
mixin _$TagsDetail {
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

  /// Serializes this TagsDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagsDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagsDetailCopyWith<TagsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsDetailCopyWith<$Res> {
  factory $TagsDetailCopyWith(
          TagsDetail value, $Res Function(TagsDetail) then) =
      _$TagsDetailCopyWithImpl<$Res, TagsDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "priority") int? priority});
}

/// @nodoc
class _$TagsDetailCopyWithImpl<$Res, $Val extends TagsDetail>
    implements $TagsDetailCopyWith<$Res> {
  _$TagsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagsDetail
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
abstract class _$$TagsDetailImplCopyWith<$Res>
    implements $TagsDetailCopyWith<$Res> {
  factory _$$TagsDetailImplCopyWith(
          _$TagsDetailImpl value, $Res Function(_$TagsDetailImpl) then) =
      __$$TagsDetailImplCopyWithImpl<$Res>;
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
class __$$TagsDetailImplCopyWithImpl<$Res>
    extends _$TagsDetailCopyWithImpl<$Res, _$TagsDetailImpl>
    implements _$$TagsDetailImplCopyWith<$Res> {
  __$$TagsDetailImplCopyWithImpl(
      _$TagsDetailImpl _value, $Res Function(_$TagsDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagsDetail
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
    return _then(_$TagsDetailImpl(
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
class _$TagsDetailImpl implements _TagsDetail {
  const _$TagsDetailImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "priority") this.priority});

  factory _$TagsDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsDetailImplFromJson(json);

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
    return 'TagsDetail(id: $id, name: $name, color: $color, v: $v, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsDetailImpl &&
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

  /// Create a copy of TagsDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsDetailImplCopyWith<_$TagsDetailImpl> get copyWith =>
      __$$TagsDetailImplCopyWithImpl<_$TagsDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsDetailImplToJson(
      this,
    );
  }
}

abstract class _TagsDetail implements TagsDetail {
  const factory _TagsDetail(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "priority") final int? priority}) = _$TagsDetailImpl;

  factory _TagsDetail.fromJson(Map<String, dynamic> json) =
      _$TagsDetailImpl.fromJson;

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

  /// Create a copy of TagsDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagsDetailImplCopyWith<_$TagsDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddPlaylistResponse _$AddPlaylistResponseFromJson(Map<String, dynamic> json) {
  return _AddPlaylistResponse.fromJson(json);
}

/// @nodoc
mixin _$AddPlaylistResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AddPlaylistResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPlaylistResponseCopyWith<AddPlaylistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaylistResponseCopyWith<$Res> {
  factory $AddPlaylistResponseCopyWith(
          AddPlaylistResponse value, $Res Function(AddPlaylistResponse) then) =
      _$AddPlaylistResponseCopyWithImpl<$Res, AddPlaylistResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$AddPlaylistResponseCopyWithImpl<$Res, $Val extends AddPlaylistResponse>
    implements $AddPlaylistResponseCopyWith<$Res> {
  _$AddPlaylistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$AddPlaylistResponseImplCopyWith<$Res>
    implements $AddPlaylistResponseCopyWith<$Res> {
  factory _$$AddPlaylistResponseImplCopyWith(_$AddPlaylistResponseImpl value,
          $Res Function(_$AddPlaylistResponseImpl) then) =
      __$$AddPlaylistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$AddPlaylistResponseImplCopyWithImpl<$Res>
    extends _$AddPlaylistResponseCopyWithImpl<$Res, _$AddPlaylistResponseImpl>
    implements _$$AddPlaylistResponseImplCopyWith<$Res> {
  __$$AddPlaylistResponseImplCopyWithImpl(_$AddPlaylistResponseImpl _value,
      $Res Function(_$AddPlaylistResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AddPlaylistResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPlaylistResponseImpl implements _AddPlaylistResponse {
  const _$AddPlaylistResponseImpl({@JsonKey(name: "message") this.message});

  factory _$AddPlaylistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPlaylistResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'AddPlaylistResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaylistResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AddPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaylistResponseImplCopyWith<_$AddPlaylistResponseImpl> get copyWith =>
      __$$AddPlaylistResponseImplCopyWithImpl<_$AddPlaylistResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPlaylistResponseImplToJson(
      this,
    );
  }
}

abstract class _AddPlaylistResponse implements AddPlaylistResponse {
  const factory _AddPlaylistResponse(
          {@JsonKey(name: "message") final String? message}) =
      _$AddPlaylistResponseImpl;

  factory _AddPlaylistResponse.fromJson(Map<String, dynamic> json) =
      _$AddPlaylistResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;

  /// Create a copy of AddPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPlaylistResponseImplCopyWith<_$AddPlaylistResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
