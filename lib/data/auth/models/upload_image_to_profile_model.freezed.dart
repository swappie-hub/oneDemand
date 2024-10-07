// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_to_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadImageProfileRequest _$UploadImageProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _UploadImageProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadImageProfileRequest {
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "imageURL")
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this UploadImageProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadImageProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadImageProfileRequestCopyWith<UploadImageProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageProfileRequestCopyWith<$Res> {
  factory $UploadImageProfileRequestCopyWith(UploadImageProfileRequest value,
          $Res Function(UploadImageProfileRequest) then) =
      _$UploadImageProfileRequestCopyWithImpl<$Res, UploadImageProfileRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "imageURL") String? imageUrl});
}

/// @nodoc
class _$UploadImageProfileRequestCopyWithImpl<$Res,
        $Val extends UploadImageProfileRequest>
    implements $UploadImageProfileRequestCopyWith<$Res> {
  _$UploadImageProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadImageProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageProfileRequestImplCopyWith<$Res>
    implements $UploadImageProfileRequestCopyWith<$Res> {
  factory _$$UploadImageProfileRequestImplCopyWith(
          _$UploadImageProfileRequestImpl value,
          $Res Function(_$UploadImageProfileRequestImpl) then) =
      __$$UploadImageProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "imageURL") String? imageUrl});
}

/// @nodoc
class __$$UploadImageProfileRequestImplCopyWithImpl<$Res>
    extends _$UploadImageProfileRequestCopyWithImpl<$Res,
        _$UploadImageProfileRequestImpl>
    implements _$$UploadImageProfileRequestImplCopyWith<$Res> {
  __$$UploadImageProfileRequestImplCopyWithImpl(
      _$UploadImageProfileRequestImpl _value,
      $Res Function(_$UploadImageProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadImageProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$UploadImageProfileRequestImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadImageProfileRequestImpl implements _UploadImageProfileRequest {
  const _$UploadImageProfileRequestImpl(
      {@JsonKey(name: "userId") this.userId,
      @JsonKey(name: "imageURL") this.imageUrl});

  factory _$UploadImageProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadImageProfileRequestImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "imageURL")
  final String? imageUrl;

  @override
  String toString() {
    return 'UploadImageProfileRequest(userId: $userId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageProfileRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, imageUrl);

  /// Create a copy of UploadImageProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageProfileRequestImplCopyWith<_$UploadImageProfileRequestImpl>
      get copyWith => __$$UploadImageProfileRequestImplCopyWithImpl<
          _$UploadImageProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadImageProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadImageProfileRequest implements UploadImageProfileRequest {
  const factory _UploadImageProfileRequest(
          {@JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "imageURL") final String? imageUrl}) =
      _$UploadImageProfileRequestImpl;

  factory _UploadImageProfileRequest.fromJson(Map<String, dynamic> json) =
      _$UploadImageProfileRequestImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "imageURL")
  String? get imageUrl;

  /// Create a copy of UploadImageProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadImageProfileRequestImplCopyWith<_$UploadImageProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadImageProfileResponse _$UploadImageProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _UploadImageProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadImageProfileResponse {
  @JsonKey(name: "requiresValidation")
  bool? get requiresValidation => throw _privateConstructorUsedError;

  /// Serializes this UploadImageProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadImageProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadImageProfileResponseCopyWith<UploadImageProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageProfileResponseCopyWith<$Res> {
  factory $UploadImageProfileResponseCopyWith(UploadImageProfileResponse value,
          $Res Function(UploadImageProfileResponse) then) =
      _$UploadImageProfileResponseCopyWithImpl<$Res,
          UploadImageProfileResponse>;
  @useResult
  $Res call({@JsonKey(name: "requiresValidation") bool? requiresValidation});
}

/// @nodoc
class _$UploadImageProfileResponseCopyWithImpl<$Res,
        $Val extends UploadImageProfileResponse>
    implements $UploadImageProfileResponseCopyWith<$Res> {
  _$UploadImageProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadImageProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiresValidation = freezed,
  }) {
    return _then(_value.copyWith(
      requiresValidation: freezed == requiresValidation
          ? _value.requiresValidation
          : requiresValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageProfileResponseImplCopyWith<$Res>
    implements $UploadImageProfileResponseCopyWith<$Res> {
  factory _$$UploadImageProfileResponseImplCopyWith(
          _$UploadImageProfileResponseImpl value,
          $Res Function(_$UploadImageProfileResponseImpl) then) =
      __$$UploadImageProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "requiresValidation") bool? requiresValidation});
}

/// @nodoc
class __$$UploadImageProfileResponseImplCopyWithImpl<$Res>
    extends _$UploadImageProfileResponseCopyWithImpl<$Res,
        _$UploadImageProfileResponseImpl>
    implements _$$UploadImageProfileResponseImplCopyWith<$Res> {
  __$$UploadImageProfileResponseImplCopyWithImpl(
      _$UploadImageProfileResponseImpl _value,
      $Res Function(_$UploadImageProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadImageProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiresValidation = freezed,
  }) {
    return _then(_$UploadImageProfileResponseImpl(
      requiresValidation: freezed == requiresValidation
          ? _value.requiresValidation
          : requiresValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadImageProfileResponseImpl implements _UploadImageProfileResponse {
  const _$UploadImageProfileResponseImpl(
      {@JsonKey(name: "requiresValidation") this.requiresValidation});

  factory _$UploadImageProfileResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UploadImageProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: "requiresValidation")
  final bool? requiresValidation;

  @override
  String toString() {
    return 'UploadImageProfileResponse(requiresValidation: $requiresValidation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageProfileResponseImpl &&
            (identical(other.requiresValidation, requiresValidation) ||
                other.requiresValidation == requiresValidation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requiresValidation);

  /// Create a copy of UploadImageProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageProfileResponseImplCopyWith<_$UploadImageProfileResponseImpl>
      get copyWith => __$$UploadImageProfileResponseImplCopyWithImpl<
          _$UploadImageProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadImageProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadImageProfileResponse
    implements UploadImageProfileResponse {
  const factory _UploadImageProfileResponse(
      {@JsonKey(name: "requiresValidation")
      final bool? requiresValidation}) = _$UploadImageProfileResponseImpl;

  factory _UploadImageProfileResponse.fromJson(Map<String, dynamic> json) =
      _$UploadImageProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: "requiresValidation")
  bool? get requiresValidation;

  /// Create a copy of UploadImageProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadImageProfileResponseImplCopyWith<_$UploadImageProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
