// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateEmailRequest _$UpdateEmailRequestFromJson(Map<String, dynamic> json) {
  return _UpdateEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateEmailRequest {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateEmailRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateEmailRequestCopyWith<UpdateEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEmailRequestCopyWith<$Res> {
  factory $UpdateEmailRequestCopyWith(
          UpdateEmailRequest value, $Res Function(UpdateEmailRequest) then) =
      _$UpdateEmailRequestCopyWithImpl<$Res, UpdateEmailRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class _$UpdateEmailRequestCopyWithImpl<$Res, $Val extends UpdateEmailRequest>
    implements $UpdateEmailRequestCopyWith<$Res> {
  _$UpdateEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateEmailRequestImplCopyWith<$Res>
    implements $UpdateEmailRequestCopyWith<$Res> {
  factory _$$UpdateEmailRequestImplCopyWith(_$UpdateEmailRequestImpl value,
          $Res Function(_$UpdateEmailRequestImpl) then) =
      __$$UpdateEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class __$$UpdateEmailRequestImplCopyWithImpl<$Res>
    extends _$UpdateEmailRequestCopyWithImpl<$Res, _$UpdateEmailRequestImpl>
    implements _$$UpdateEmailRequestImplCopyWith<$Res> {
  __$$UpdateEmailRequestImplCopyWithImpl(_$UpdateEmailRequestImpl _value,
      $Res Function(_$UpdateEmailRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateEmailRequestImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateEmailRequestImpl implements _UpdateEmailRequest {
  const _$UpdateEmailRequestImpl(
      {@JsonKey(name: "email") this.email,
      @JsonKey(name: "userId") this.userId});

  factory _$UpdateEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEmailRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "userId")
  final String? userId;

  @override
  String toString() {
    return 'UpdateEmailRequest(email: $email, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, userId);

  /// Create a copy of UpdateEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailRequestImplCopyWith<_$UpdateEmailRequestImpl> get copyWith =>
      __$$UpdateEmailRequestImplCopyWithImpl<_$UpdateEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateEmailRequest implements UpdateEmailRequest {
  const factory _UpdateEmailRequest(
          {@JsonKey(name: "email") final String? email,
          @JsonKey(name: "userId") final String? userId}) =
      _$UpdateEmailRequestImpl;

  factory _UpdateEmailRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateEmailRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "userId")
  String? get userId;

  /// Create a copy of UpdateEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEmailRequestImplCopyWith<_$UpdateEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateEmailResponse _$UpdateEmailResponseFromJson(Map<String, dynamic> json) {
  return _UpdateEmailResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateEmailResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this UpdateEmailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateEmailResponseCopyWith<UpdateEmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEmailResponseCopyWith<$Res> {
  factory $UpdateEmailResponseCopyWith(
          UpdateEmailResponse value, $Res Function(UpdateEmailResponse) then) =
      _$UpdateEmailResponseCopyWithImpl<$Res, UpdateEmailResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$UpdateEmailResponseCopyWithImpl<$Res, $Val extends UpdateEmailResponse>
    implements $UpdateEmailResponseCopyWith<$Res> {
  _$UpdateEmailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEmailResponse
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
abstract class _$$UpdateEmailResponseImplCopyWith<$Res>
    implements $UpdateEmailResponseCopyWith<$Res> {
  factory _$$UpdateEmailResponseImplCopyWith(_$UpdateEmailResponseImpl value,
          $Res Function(_$UpdateEmailResponseImpl) then) =
      __$$UpdateEmailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$UpdateEmailResponseImplCopyWithImpl<$Res>
    extends _$UpdateEmailResponseCopyWithImpl<$Res, _$UpdateEmailResponseImpl>
    implements _$$UpdateEmailResponseImplCopyWith<$Res> {
  __$$UpdateEmailResponseImplCopyWithImpl(_$UpdateEmailResponseImpl _value,
      $Res Function(_$UpdateEmailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UpdateEmailResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateEmailResponseImpl implements _UpdateEmailResponse {
  const _$UpdateEmailResponseImpl({@JsonKey(name: "message") this.message});

  factory _$UpdateEmailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEmailResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'UpdateEmailResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UpdateEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailResponseImplCopyWith<_$UpdateEmailResponseImpl> get copyWith =>
      __$$UpdateEmailResponseImplCopyWithImpl<_$UpdateEmailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEmailResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateEmailResponse implements UpdateEmailResponse {
  const factory _UpdateEmailResponse(
          {@JsonKey(name: "message") final String? message}) =
      _$UpdateEmailResponseImpl;

  factory _UpdateEmailResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateEmailResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;

  /// Create a copy of UpdateEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEmailResponseImplCopyWith<_$UpdateEmailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
