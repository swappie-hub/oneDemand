// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lessons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonsResponse _$LessonsResponseFromJson(Map<String, dynamic> json) {
  return _LessonsResponse.fromJson(json);
}

/// @nodoc
mixin _$LessonsResponse {
  @JsonKey(name: "libraryVideosData")
  List<LibraryVideosDatum>? get libraryVideosData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonsResponseCopyWith<LessonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsResponseCopyWith<$Res> {
  factory $LessonsResponseCopyWith(
          LessonsResponse value, $Res Function(LessonsResponse) then) =
      _$LessonsResponseCopyWithImpl<$Res, LessonsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "libraryVideosData")
      List<LibraryVideosDatum>? libraryVideosData});
}

/// @nodoc
class _$LessonsResponseCopyWithImpl<$Res, $Val extends LessonsResponse>
    implements $LessonsResponseCopyWith<$Res> {
  _$LessonsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? libraryVideosData = freezed,
  }) {
    return _then(_value.copyWith(
      libraryVideosData: freezed == libraryVideosData
          ? _value.libraryVideosData
          : libraryVideosData // ignore: cast_nullable_to_non_nullable
              as List<LibraryVideosDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonsResponseImplCopyWith<$Res>
    implements $LessonsResponseCopyWith<$Res> {
  factory _$$LessonsResponseImplCopyWith(_$LessonsResponseImpl value,
          $Res Function(_$LessonsResponseImpl) then) =
      __$$LessonsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "libraryVideosData")
      List<LibraryVideosDatum>? libraryVideosData});
}

/// @nodoc
class __$$LessonsResponseImplCopyWithImpl<$Res>
    extends _$LessonsResponseCopyWithImpl<$Res, _$LessonsResponseImpl>
    implements _$$LessonsResponseImplCopyWith<$Res> {
  __$$LessonsResponseImplCopyWithImpl(
      _$LessonsResponseImpl _value, $Res Function(_$LessonsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? libraryVideosData = freezed,
  }) {
    return _then(_$LessonsResponseImpl(
      libraryVideosData: freezed == libraryVideosData
          ? _value._libraryVideosData
          : libraryVideosData // ignore: cast_nullable_to_non_nullable
              as List<LibraryVideosDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonsResponseImpl implements _LessonsResponse {
  const _$LessonsResponseImpl(
      {@JsonKey(name: "libraryVideosData")
      final List<LibraryVideosDatum>? libraryVideosData})
      : _libraryVideosData = libraryVideosData;

  factory _$LessonsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonsResponseImplFromJson(json);

  final List<LibraryVideosDatum>? _libraryVideosData;
  @override
  @JsonKey(name: "libraryVideosData")
  List<LibraryVideosDatum>? get libraryVideosData {
    final value = _libraryVideosData;
    if (value == null) return null;
    if (_libraryVideosData is EqualUnmodifiableListView)
      return _libraryVideosData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LessonsResponse(libraryVideosData: $libraryVideosData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._libraryVideosData, _libraryVideosData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_libraryVideosData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonsResponseImplCopyWith<_$LessonsResponseImpl> get copyWith =>
      __$$LessonsResponseImplCopyWithImpl<_$LessonsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonsResponseImplToJson(
      this,
    );
  }
}

abstract class _LessonsResponse implements LessonsResponse {
  const factory _LessonsResponse(
          {@JsonKey(name: "libraryVideosData")
          final List<LibraryVideosDatum>? libraryVideosData}) =
      _$LessonsResponseImpl;

  factory _LessonsResponse.fromJson(Map<String, dynamic> json) =
      _$LessonsResponseImpl.fromJson;

  @override
  @JsonKey(name: "libraryVideosData")
  List<LibraryVideosDatum>? get libraryVideosData;
  @override
  @JsonKey(ignore: true)
  _$$LessonsResponseImplCopyWith<_$LessonsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LibraryVideosDatum _$LibraryVideosDatumFromJson(Map<String, dynamic> json) {
  return _LibraryVideosDatum.fromJson(json);
}

/// @nodoc
mixin _$LibraryVideosDatum {
  @JsonKey(name: "categoryId")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  List<Video>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: "totalRecords")
  int? get totalRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryVideosDatumCopyWith<LibraryVideosDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryVideosDatumCopyWith<$Res> {
  factory $LibraryVideosDatumCopyWith(
          LibraryVideosDatum value, $Res Function(LibraryVideosDatum) then) =
      _$LibraryVideosDatumCopyWithImpl<$Res, LibraryVideosDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "categoryId") String? categoryId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "totalRecords") int? totalRecords});
}

/// @nodoc
class _$LibraryVideosDatumCopyWithImpl<$Res, $Val extends LibraryVideosDatum>
    implements $LibraryVideosDatumCopyWith<$Res> {
  _$LibraryVideosDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? name = freezed,
    Object? videos = freezed,
    Object? totalRecords = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryVideosDatumImplCopyWith<$Res>
    implements $LibraryVideosDatumCopyWith<$Res> {
  factory _$$LibraryVideosDatumImplCopyWith(_$LibraryVideosDatumImpl value,
          $Res Function(_$LibraryVideosDatumImpl) then) =
      __$$LibraryVideosDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "categoryId") String? categoryId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "videos") List<Video>? videos,
      @JsonKey(name: "totalRecords") int? totalRecords});
}

/// @nodoc
class __$$LibraryVideosDatumImplCopyWithImpl<$Res>
    extends _$LibraryVideosDatumCopyWithImpl<$Res, _$LibraryVideosDatumImpl>
    implements _$$LibraryVideosDatumImplCopyWith<$Res> {
  __$$LibraryVideosDatumImplCopyWithImpl(_$LibraryVideosDatumImpl _value,
      $Res Function(_$LibraryVideosDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? name = freezed,
    Object? videos = freezed,
    Object? totalRecords = freezed,
  }) {
    return _then(_$LibraryVideosDatumImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryVideosDatumImpl implements _LibraryVideosDatum {
  const _$LibraryVideosDatumImpl(
      {@JsonKey(name: "categoryId") this.categoryId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "videos") final List<Video>? videos,
      @JsonKey(name: "totalRecords") this.totalRecords})
      : _videos = videos;

  factory _$LibraryVideosDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryVideosDatumImplFromJson(json);

  @override
  @JsonKey(name: "categoryId")
  final String? categoryId;
  @override
  @JsonKey(name: "name")
  final String? name;
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
  @JsonKey(name: "totalRecords")
  final int? totalRecords;

  @override
  String toString() {
    return 'LibraryVideosDatum(categoryId: $categoryId, name: $name, videos: $videos, totalRecords: $totalRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryVideosDatumImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, name,
      const DeepCollectionEquality().hash(_videos), totalRecords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryVideosDatumImplCopyWith<_$LibraryVideosDatumImpl> get copyWith =>
      __$$LibraryVideosDatumImplCopyWithImpl<_$LibraryVideosDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryVideosDatumImplToJson(
      this,
    );
  }
}

abstract class _LibraryVideosDatum implements LibraryVideosDatum {
  const factory _LibraryVideosDatum(
          {@JsonKey(name: "categoryId") final String? categoryId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "videos") final List<Video>? videos,
          @JsonKey(name: "totalRecords") final int? totalRecords}) =
      _$LibraryVideosDatumImpl;

  factory _LibraryVideosDatum.fromJson(Map<String, dynamic> json) =
      _$LibraryVideosDatumImpl.fromJson;

  @override
  @JsonKey(name: "categoryId")
  String? get categoryId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "videos")
  List<Video>? get videos;
  @override
  @JsonKey(name: "totalRecords")
  int? get totalRecords;
  @override
  @JsonKey(ignore: true)
  _$$LibraryVideosDatumImplCopyWith<_$LibraryVideosDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink => throw _privateConstructorUsedError;
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails => throw _privateConstructorUsedError;
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
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
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
    Object? title = freezed,
    Object? duration = freezed,
    Object? releaseDateTime = freezed,
    Object? thumnailLink = freezed,
    Object? tagsDetails = freezed,
    Object? savedvideo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDateTime: freezed == releaseDateTime
          ? _value.releaseDateTime
          : releaseDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumnailLink: freezed == thumnailLink
          ? _value.thumnailLink
          : thumnailLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsDetails: freezed == tagsDetails
          ? _value.tagsDetails
          : tagsDetails // ignore: cast_nullable_to_non_nullable
              as List<TagsDetail>?,
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
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
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
    Object? title = freezed,
    Object? duration = freezed,
    Object? releaseDateTime = freezed,
    Object? thumnailLink = freezed,
    Object? tagsDetails = freezed,
    Object? savedvideo = freezed,
  }) {
    return _then(_$VideoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDateTime: freezed == releaseDateTime
          ? _value.releaseDateTime
          : releaseDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumnailLink: freezed == thumnailLink
          ? _value.thumnailLink
          : thumnailLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsDetails: freezed == tagsDetails
          ? _value._tagsDetails
          : tagsDetails // ignore: cast_nullable_to_non_nullable
              as List<TagsDetail>?,
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
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "releaseDateTime") this.releaseDateTime,
      @JsonKey(name: "thumnailLink") this.thumnailLink,
      @JsonKey(name: "tagsDetails") final List<TagsDetail>? tagsDetails,
      @JsonKey(name: "savedvideo") this.savedvideo})
      : _tagsDetails = tagsDetails;

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "duration")
  final int? duration;
  @override
  @JsonKey(name: "releaseDateTime")
  final DateTime? releaseDateTime;
  @override
  @JsonKey(name: "thumnailLink")
  final String? thumnailLink;
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

  @override
  @JsonKey(name: "savedvideo")
  final bool? savedvideo;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, duration: $duration, releaseDateTime: $releaseDateTime, thumnailLink: $thumnailLink, tagsDetails: $tagsDetails, savedvideo: $savedvideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.releaseDateTime, releaseDateTime) ||
                other.releaseDateTime == releaseDateTime) &&
            (identical(other.thumnailLink, thumnailLink) ||
                other.thumnailLink == thumnailLink) &&
            const DeepCollectionEquality()
                .equals(other._tagsDetails, _tagsDetails) &&
            (identical(other.savedvideo, savedvideo) ||
                other.savedvideo == savedvideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      duration,
      releaseDateTime,
      thumnailLink,
      const DeepCollectionEquality().hash(_tagsDetails),
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
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "duration") final int? duration,
      @JsonKey(name: "releaseDateTime") final DateTime? releaseDateTime,
      @JsonKey(name: "thumnailLink") final String? thumnailLink,
      @JsonKey(name: "tagsDetails") final List<TagsDetail>? tagsDetails,
      @JsonKey(name: "savedvideo") final bool? savedvideo}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "duration")
  int? get duration;
  @override
  @JsonKey(name: "releaseDateTime")
  DateTime? get releaseDateTime;
  @override
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink;
  @override
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails;
  @override
  @JsonKey(name: "savedvideo")
  bool? get savedvideo;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, v, priority);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$TagsDetailImplCopyWith<_$TagsDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
