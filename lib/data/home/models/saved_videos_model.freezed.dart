// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_videos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedVideosResponse _$SavedVideosResponseFromJson(Map<String, dynamic> json) {
  return _SavedVideosResponse.fromJson(json);
}

/// @nodoc
mixin _$SavedVideosResponse {
  @JsonKey(name: "savesVideosData")
  List<SavesVideosDatum>? get savesVideosData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "videoCount")
  int? get videoCount => throw _privateConstructorUsedError;

  /// Serializes this SavedVideosResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedVideosResponseCopyWith<SavedVideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedVideosResponseCopyWith<$Res> {
  factory $SavedVideosResponseCopyWith(
          SavedVideosResponse value, $Res Function(SavedVideosResponse) then) =
      _$SavedVideosResponseCopyWithImpl<$Res, SavedVideosResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "savesVideosData")
      List<SavesVideosDatum>? savesVideosData,
      @JsonKey(name: "videoCount") int? videoCount});
}

/// @nodoc
class _$SavedVideosResponseCopyWithImpl<$Res, $Val extends SavedVideosResponse>
    implements $SavedVideosResponseCopyWith<$Res> {
  _$SavedVideosResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savesVideosData = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_value.copyWith(
      savesVideosData: freezed == savesVideosData
          ? _value.savesVideosData
          : savesVideosData // ignore: cast_nullable_to_non_nullable
              as List<SavesVideosDatum>?,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedVideosResponseImplCopyWith<$Res>
    implements $SavedVideosResponseCopyWith<$Res> {
  factory _$$SavedVideosResponseImplCopyWith(_$SavedVideosResponseImpl value,
          $Res Function(_$SavedVideosResponseImpl) then) =
      __$$SavedVideosResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "savesVideosData")
      List<SavesVideosDatum>? savesVideosData,
      @JsonKey(name: "videoCount") int? videoCount});
}

/// @nodoc
class __$$SavedVideosResponseImplCopyWithImpl<$Res>
    extends _$SavedVideosResponseCopyWithImpl<$Res, _$SavedVideosResponseImpl>
    implements _$$SavedVideosResponseImplCopyWith<$Res> {
  __$$SavedVideosResponseImplCopyWithImpl(_$SavedVideosResponseImpl _value,
      $Res Function(_$SavedVideosResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savesVideosData = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_$SavedVideosResponseImpl(
      savesVideosData: freezed == savesVideosData
          ? _value._savesVideosData
          : savesVideosData // ignore: cast_nullable_to_non_nullable
              as List<SavesVideosDatum>?,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedVideosResponseImpl implements _SavedVideosResponse {
  const _$SavedVideosResponseImpl(
      {@JsonKey(name: "savesVideosData")
      final List<SavesVideosDatum>? savesVideosData,
      @JsonKey(name: "videoCount") this.videoCount})
      : _savesVideosData = savesVideosData;

  factory _$SavedVideosResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedVideosResponseImplFromJson(json);

  final List<SavesVideosDatum>? _savesVideosData;
  @override
  @JsonKey(name: "savesVideosData")
  List<SavesVideosDatum>? get savesVideosData {
    final value = _savesVideosData;
    if (value == null) return null;
    if (_savesVideosData is EqualUnmodifiableListView) return _savesVideosData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "videoCount")
  final int? videoCount;

  @override
  String toString() {
    return 'SavedVideosResponse(savesVideosData: $savesVideosData, videoCount: $videoCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedVideosResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._savesVideosData, _savesVideosData) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_savesVideosData), videoCount);

  /// Create a copy of SavedVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedVideosResponseImplCopyWith<_$SavedVideosResponseImpl> get copyWith =>
      __$$SavedVideosResponseImplCopyWithImpl<_$SavedVideosResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedVideosResponseImplToJson(
      this,
    );
  }
}

abstract class _SavedVideosResponse implements SavedVideosResponse {
  const factory _SavedVideosResponse(
          {@JsonKey(name: "savesVideosData")
          final List<SavesVideosDatum>? savesVideosData,
          @JsonKey(name: "videoCount") final int? videoCount}) =
      _$SavedVideosResponseImpl;

  factory _SavedVideosResponse.fromJson(Map<String, dynamic> json) =
      _$SavedVideosResponseImpl.fromJson;

  @override
  @JsonKey(name: "savesVideosData")
  List<SavesVideosDatum>? get savesVideosData;
  @override
  @JsonKey(name: "videoCount")
  int? get videoCount;

  /// Create a copy of SavedVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedVideosResponseImplCopyWith<_$SavedVideosResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavesVideosDatum _$SavesVideosDatumFromJson(Map<String, dynamic> json) {
  return _SavesVideosDatum.fromJson(json);
}

/// @nodoc
mixin _$SavesVideosDatum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink => throw _privateConstructorUsedError;
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "savedvideo")
  bool? get savedvideo => throw _privateConstructorUsedError;

  /// Serializes this SavesVideosDatum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavesVideosDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavesVideosDatumCopyWith<SavesVideosDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavesVideosDatumCopyWith<$Res> {
  factory $SavesVideosDatumCopyWith(
          SavesVideosDatum value, $Res Function(SavesVideosDatum) then) =
      _$SavesVideosDatumCopyWithImpl<$Res, SavesVideosDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
      @JsonKey(name: "savedvideo") bool? savedvideo});
}

/// @nodoc
class _$SavesVideosDatumCopyWithImpl<$Res, $Val extends SavesVideosDatum>
    implements $SavesVideosDatumCopyWith<$Res> {
  _$SavesVideosDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavesVideosDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? createdAt = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SavesVideosDatumImplCopyWith<$Res>
    implements $SavesVideosDatumCopyWith<$Res> {
  factory _$$SavesVideosDatumImplCopyWith(_$SavesVideosDatumImpl value,
          $Res Function(_$SavesVideosDatumImpl) then) =
      __$$SavesVideosDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "thumnailLink") String? thumnailLink,
      @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
      @JsonKey(name: "savedvideo") bool? savedvideo});
}

/// @nodoc
class __$$SavesVideosDatumImplCopyWithImpl<$Res>
    extends _$SavesVideosDatumCopyWithImpl<$Res, _$SavesVideosDatumImpl>
    implements _$$SavesVideosDatumImplCopyWith<$Res> {
  __$$SavesVideosDatumImplCopyWithImpl(_$SavesVideosDatumImpl _value,
      $Res Function(_$SavesVideosDatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavesVideosDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? createdAt = freezed,
    Object? thumnailLink = freezed,
    Object? tagsDetails = freezed,
    Object? savedvideo = freezed,
  }) {
    return _then(_$SavesVideosDatumImpl(
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
class _$SavesVideosDatumImpl implements _SavesVideosDatum {
  const _$SavesVideosDatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "thumnailLink") this.thumnailLink,
      @JsonKey(name: "tagsDetails") final List<TagsDetail>? tagsDetails,
      @JsonKey(name: "savedvideo") this.savedvideo})
      : _tagsDetails = tagsDetails;

  factory _$SavesVideosDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavesVideosDatumImplFromJson(json);

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
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
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
    return 'SavesVideosDatum(id: $id, title: $title, duration: $duration, createdAt: $createdAt, thumnailLink: $thumnailLink, tagsDetails: $tagsDetails, savedvideo: $savedvideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavesVideosDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.thumnailLink, thumnailLink) ||
                other.thumnailLink == thumnailLink) &&
            const DeepCollectionEquality()
                .equals(other._tagsDetails, _tagsDetails) &&
            (identical(other.savedvideo, savedvideo) ||
                other.savedvideo == savedvideo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      duration,
      createdAt,
      thumnailLink,
      const DeepCollectionEquality().hash(_tagsDetails),
      savedvideo);

  /// Create a copy of SavesVideosDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavesVideosDatumImplCopyWith<_$SavesVideosDatumImpl> get copyWith =>
      __$$SavesVideosDatumImplCopyWithImpl<_$SavesVideosDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavesVideosDatumImplToJson(
      this,
    );
  }
}

abstract class _SavesVideosDatum implements SavesVideosDatum {
  const factory _SavesVideosDatum(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "duration") final int? duration,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "thumnailLink") final String? thumnailLink,
          @JsonKey(name: "tagsDetails") final List<TagsDetail>? tagsDetails,
          @JsonKey(name: "savedvideo") final bool? savedvideo}) =
      _$SavesVideosDatumImpl;

  factory _SavesVideosDatum.fromJson(Map<String, dynamic> json) =
      _$SavesVideosDatumImpl.fromJson;

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
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "thumnailLink")
  String? get thumnailLink;
  @override
  @JsonKey(name: "tagsDetails")
  List<TagsDetail>? get tagsDetails;
  @override
  @JsonKey(name: "savedvideo")
  bool? get savedvideo;

  /// Create a copy of SavesVideosDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavesVideosDatumImplCopyWith<_$SavesVideosDatumImpl> get copyWith =>
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

SavedVideosRequest _$SavedVideosRequestFromJson(Map<String, dynamic> json) {
  return _SavedVideosRequest.fromJson(json);
}

/// @nodoc
mixin _$SavedVideosRequest {
  @JsonKey(name: "startIndex")
  int? get startIndex => throw _privateConstructorUsedError;
  @JsonKey(name: "endIndex")
  int? get endIndex => throw _privateConstructorUsedError;
  @JsonKey(name: "selectedTags")
  String? get selectedTags => throw _privateConstructorUsedError;
  @JsonKey(name: "selectedDurations")
  String? get selectedDurations => throw _privateConstructorUsedError;
  @JsonKey(name: "selectedLevels")
  String? get selectedLevels => throw _privateConstructorUsedError;
  @JsonKey(name: "sortby")
  String? get sortby => throw _privateConstructorUsedError;

  /// Serializes this SavedVideosRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedVideosRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedVideosRequestCopyWith<SavedVideosRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedVideosRequestCopyWith<$Res> {
  factory $SavedVideosRequestCopyWith(
          SavedVideosRequest value, $Res Function(SavedVideosRequest) then) =
      _$SavedVideosRequestCopyWithImpl<$Res, SavedVideosRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "startIndex") int? startIndex,
      @JsonKey(name: "endIndex") int? endIndex,
      @JsonKey(name: "selectedTags") String? selectedTags,
      @JsonKey(name: "selectedDurations") String? selectedDurations,
      @JsonKey(name: "selectedLevels") String? selectedLevels,
      @JsonKey(name: "sortby") String? sortby});
}

/// @nodoc
class _$SavedVideosRequestCopyWithImpl<$Res, $Val extends SavedVideosRequest>
    implements $SavedVideosRequestCopyWith<$Res> {
  _$SavedVideosRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedVideosRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? selectedTags = freezed,
    Object? selectedDurations = freezed,
    Object? selectedLevels = freezed,
    Object? sortby = freezed,
  }) {
    return _then(_value.copyWith(
      startIndex: freezed == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endIndex: freezed == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedTags: freezed == selectedTags
          ? _value.selectedTags
          : selectedTags // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDurations: freezed == selectedDurations
          ? _value.selectedDurations
          : selectedDurations // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLevels: freezed == selectedLevels
          ? _value.selectedLevels
          : selectedLevels // ignore: cast_nullable_to_non_nullable
              as String?,
      sortby: freezed == sortby
          ? _value.sortby
          : sortby // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedVideosRequestImplCopyWith<$Res>
    implements $SavedVideosRequestCopyWith<$Res> {
  factory _$$SavedVideosRequestImplCopyWith(_$SavedVideosRequestImpl value,
          $Res Function(_$SavedVideosRequestImpl) then) =
      __$$SavedVideosRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "startIndex") int? startIndex,
      @JsonKey(name: "endIndex") int? endIndex,
      @JsonKey(name: "selectedTags") String? selectedTags,
      @JsonKey(name: "selectedDurations") String? selectedDurations,
      @JsonKey(name: "selectedLevels") String? selectedLevels,
      @JsonKey(name: "sortby") String? sortby});
}

/// @nodoc
class __$$SavedVideosRequestImplCopyWithImpl<$Res>
    extends _$SavedVideosRequestCopyWithImpl<$Res, _$SavedVideosRequestImpl>
    implements _$$SavedVideosRequestImplCopyWith<$Res> {
  __$$SavedVideosRequestImplCopyWithImpl(_$SavedVideosRequestImpl _value,
      $Res Function(_$SavedVideosRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedVideosRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? selectedTags = freezed,
    Object? selectedDurations = freezed,
    Object? selectedLevels = freezed,
    Object? sortby = freezed,
  }) {
    return _then(_$SavedVideosRequestImpl(
      startIndex: freezed == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endIndex: freezed == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedTags: freezed == selectedTags
          ? _value.selectedTags
          : selectedTags // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDurations: freezed == selectedDurations
          ? _value.selectedDurations
          : selectedDurations // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLevels: freezed == selectedLevels
          ? _value.selectedLevels
          : selectedLevels // ignore: cast_nullable_to_non_nullable
              as String?,
      sortby: freezed == sortby
          ? _value.sortby
          : sortby // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedVideosRequestImpl implements _SavedVideosRequest {
  const _$SavedVideosRequestImpl(
      {@JsonKey(name: "startIndex") this.startIndex,
      @JsonKey(name: "endIndex") this.endIndex,
      @JsonKey(name: "selectedTags") this.selectedTags,
      @JsonKey(name: "selectedDurations") this.selectedDurations,
      @JsonKey(name: "selectedLevels") this.selectedLevels,
      @JsonKey(name: "sortby") this.sortby});

  factory _$SavedVideosRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedVideosRequestImplFromJson(json);

  @override
  @JsonKey(name: "startIndex")
  final int? startIndex;
  @override
  @JsonKey(name: "endIndex")
  final int? endIndex;
  @override
  @JsonKey(name: "selectedTags")
  final String? selectedTags;
  @override
  @JsonKey(name: "selectedDurations")
  final String? selectedDurations;
  @override
  @JsonKey(name: "selectedLevels")
  final String? selectedLevels;
  @override
  @JsonKey(name: "sortby")
  final String? sortby;

  @override
  String toString() {
    return 'SavedVideosRequest(startIndex: $startIndex, endIndex: $endIndex, selectedTags: $selectedTags, selectedDurations: $selectedDurations, selectedLevels: $selectedLevels, sortby: $sortby)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedVideosRequestImpl &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.selectedTags, selectedTags) ||
                other.selectedTags == selectedTags) &&
            (identical(other.selectedDurations, selectedDurations) ||
                other.selectedDurations == selectedDurations) &&
            (identical(other.selectedLevels, selectedLevels) ||
                other.selectedLevels == selectedLevels) &&
            (identical(other.sortby, sortby) || other.sortby == sortby));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startIndex, endIndex,
      selectedTags, selectedDurations, selectedLevels, sortby);

  /// Create a copy of SavedVideosRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedVideosRequestImplCopyWith<_$SavedVideosRequestImpl> get copyWith =>
      __$$SavedVideosRequestImplCopyWithImpl<_$SavedVideosRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedVideosRequestImplToJson(
      this,
    );
  }
}

abstract class _SavedVideosRequest implements SavedVideosRequest {
  const factory _SavedVideosRequest(
          {@JsonKey(name: "startIndex") final int? startIndex,
          @JsonKey(name: "endIndex") final int? endIndex,
          @JsonKey(name: "selectedTags") final String? selectedTags,
          @JsonKey(name: "selectedDurations") final String? selectedDurations,
          @JsonKey(name: "selectedLevels") final String? selectedLevels,
          @JsonKey(name: "sortby") final String? sortby}) =
      _$SavedVideosRequestImpl;

  factory _SavedVideosRequest.fromJson(Map<String, dynamic> json) =
      _$SavedVideosRequestImpl.fromJson;

  @override
  @JsonKey(name: "startIndex")
  int? get startIndex;
  @override
  @JsonKey(name: "endIndex")
  int? get endIndex;
  @override
  @JsonKey(name: "selectedTags")
  String? get selectedTags;
  @override
  @JsonKey(name: "selectedDurations")
  String? get selectedDurations;
  @override
  @JsonKey(name: "selectedLevels")
  String? get selectedLevels;
  @override
  @JsonKey(name: "sortby")
  String? get sortby;

  /// Create a copy of SavedVideosRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedVideosRequestImplCopyWith<_$SavedVideosRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
