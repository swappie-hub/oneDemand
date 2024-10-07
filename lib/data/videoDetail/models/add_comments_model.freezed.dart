// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCommentsRequest _$AddCommentsRequestFromJson(Map<String, dynamic> json) {
  return _AddCommentsRequest.fromJson(json);
}

/// @nodoc
mixin _$AddCommentsRequest {
  @JsonKey(name: "videoID")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "replyTo")
  String? get replyTo => throw _privateConstructorUsedError;

  /// Serializes this AddCommentsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCommentsRequestCopyWith<AddCommentsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentsRequestCopyWith<$Res> {
  factory $AddCommentsRequestCopyWith(
          AddCommentsRequest value, $Res Function(AddCommentsRequest) then) =
      _$AddCommentsRequestCopyWithImpl<$Res, AddCommentsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "videoID") String? videoId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "replyTo") String? replyTo});
}

/// @nodoc
class _$AddCommentsRequestCopyWithImpl<$Res, $Val extends AddCommentsRequest>
    implements $AddCommentsRequestCopyWith<$Res> {
  _$AddCommentsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? content = freezed,
    Object? replyTo = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCommentsRequestImplCopyWith<$Res>
    implements $AddCommentsRequestCopyWith<$Res> {
  factory _$$AddCommentsRequestImplCopyWith(_$AddCommentsRequestImpl value,
          $Res Function(_$AddCommentsRequestImpl) then) =
      __$$AddCommentsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "videoID") String? videoId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "replyTo") String? replyTo});
}

/// @nodoc
class __$$AddCommentsRequestImplCopyWithImpl<$Res>
    extends _$AddCommentsRequestCopyWithImpl<$Res, _$AddCommentsRequestImpl>
    implements _$$AddCommentsRequestImplCopyWith<$Res> {
  __$$AddCommentsRequestImplCopyWithImpl(_$AddCommentsRequestImpl _value,
      $Res Function(_$AddCommentsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? content = freezed,
    Object? replyTo = freezed,
  }) {
    return _then(_$AddCommentsRequestImpl(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCommentsRequestImpl implements _AddCommentsRequest {
  const _$AddCommentsRequestImpl(
      {@JsonKey(name: "videoID") this.videoId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "replyTo") this.replyTo});

  factory _$AddCommentsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCommentsRequestImplFromJson(json);

  @override
  @JsonKey(name: "videoID")
  final String? videoId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "replyTo")
  final String? replyTo;

  @override
  String toString() {
    return 'AddCommentsRequest(videoId: $videoId, content: $content, replyTo: $replyTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentsRequestImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, videoId, content, replyTo);

  /// Create a copy of AddCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentsRequestImplCopyWith<_$AddCommentsRequestImpl> get copyWith =>
      __$$AddCommentsRequestImplCopyWithImpl<_$AddCommentsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCommentsRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCommentsRequest implements AddCommentsRequest {
  const factory _AddCommentsRequest(
          {@JsonKey(name: "videoID") final String? videoId,
          @JsonKey(name: "content") final String? content,
          @JsonKey(name: "replyTo") final String? replyTo}) =
      _$AddCommentsRequestImpl;

  factory _AddCommentsRequest.fromJson(Map<String, dynamic> json) =
      _$AddCommentsRequestImpl.fromJson;

  @override
  @JsonKey(name: "videoID")
  String? get videoId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "replyTo")
  String? get replyTo;

  /// Create a copy of AddCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCommentsRequestImplCopyWith<_$AddCommentsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddCommentsResponse _$AddCommentsResponseFromJson(Map<String, dynamic> json) {
  return _AddCommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$AddCommentsResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this AddCommentsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCommentsResponseCopyWith<AddCommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentsResponseCopyWith<$Res> {
  factory $AddCommentsResponseCopyWith(
          AddCommentsResponse value, $Res Function(AddCommentsResponse) then) =
      _$AddCommentsResponseCopyWithImpl<$Res, AddCommentsResponse>;
  @useResult
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class _$AddCommentsResponseCopyWithImpl<$Res, $Val extends AddCommentsResponse>
    implements $AddCommentsResponseCopyWith<$Res> {
  _$AddCommentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCommentsResponseImplCopyWith<$Res>
    implements $AddCommentsResponseCopyWith<$Res> {
  factory _$$AddCommentsResponseImplCopyWith(_$AddCommentsResponseImpl value,
          $Res Function(_$AddCommentsResponseImpl) then) =
      __$$AddCommentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class __$$AddCommentsResponseImplCopyWithImpl<$Res>
    extends _$AddCommentsResponseCopyWithImpl<$Res, _$AddCommentsResponseImpl>
    implements _$$AddCommentsResponseImplCopyWith<$Res> {
  __$$AddCommentsResponseImplCopyWithImpl(_$AddCommentsResponseImpl _value,
      $Res Function(_$AddCommentsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$AddCommentsResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCommentsResponseImpl implements _AddCommentsResponse {
  const _$AddCommentsResponseImpl({@JsonKey(name: "success") this.success});

  factory _$AddCommentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCommentsResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'AddCommentsResponse(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentsResponseImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of AddCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentsResponseImplCopyWith<_$AddCommentsResponseImpl> get copyWith =>
      __$$AddCommentsResponseImplCopyWithImpl<_$AddCommentsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCommentsResponseImplToJson(
      this,
    );
  }
}

abstract class _AddCommentsResponse implements AddCommentsResponse {
  const factory _AddCommentsResponse(
          {@JsonKey(name: "success") final bool? success}) =
      _$AddCommentsResponseImpl;

  factory _AddCommentsResponse.fromJson(Map<String, dynamic> json) =
      _$AddCommentsResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;

  /// Create a copy of AddCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCommentsResponseImplCopyWith<_$AddCommentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
