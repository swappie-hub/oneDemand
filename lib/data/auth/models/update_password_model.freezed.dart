// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePasswordRequest _$UpdatePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePasswordRequest {
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "currentPassword")
  String? get currentPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "newPassword")
  String? get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmPassword")
  String? get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePasswordRequestCopyWith<UpdatePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordRequestCopyWith<$Res> {
  factory $UpdatePasswordRequestCopyWith(UpdatePasswordRequest value,
          $Res Function(UpdatePasswordRequest) then) =
      _$UpdatePasswordRequestCopyWithImpl<$Res, UpdatePasswordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "currentPassword") String? currentPassword,
      @JsonKey(name: "newPassword") String? newPassword,
      @JsonKey(name: "confirmPassword") String? confirmPassword});
}

/// @nodoc
class _$UpdatePasswordRequestCopyWithImpl<$Res,
        $Val extends UpdatePasswordRequest>
    implements $UpdatePasswordRequestCopyWith<$Res> {
  _$UpdatePasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePasswordRequestImplCopyWith<$Res>
    implements $UpdatePasswordRequestCopyWith<$Res> {
  factory _$$UpdatePasswordRequestImplCopyWith(
          _$UpdatePasswordRequestImpl value,
          $Res Function(_$UpdatePasswordRequestImpl) then) =
      __$$UpdatePasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "currentPassword") String? currentPassword,
      @JsonKey(name: "newPassword") String? newPassword,
      @JsonKey(name: "confirmPassword") String? confirmPassword});
}

/// @nodoc
class __$$UpdatePasswordRequestImplCopyWithImpl<$Res>
    extends _$UpdatePasswordRequestCopyWithImpl<$Res,
        _$UpdatePasswordRequestImpl>
    implements _$$UpdatePasswordRequestImplCopyWith<$Res> {
  __$$UpdatePasswordRequestImplCopyWithImpl(_$UpdatePasswordRequestImpl _value,
      $Res Function(_$UpdatePasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$UpdatePasswordRequestImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePasswordRequestImpl implements _UpdatePasswordRequest {
  const _$UpdatePasswordRequestImpl(
      {@JsonKey(name: "userId") this.userId,
      @JsonKey(name: "currentPassword") this.currentPassword,
      @JsonKey(name: "newPassword") this.newPassword,
      @JsonKey(name: "confirmPassword") this.confirmPassword});

  factory _$UpdatePasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "currentPassword")
  final String? currentPassword;
  @override
  @JsonKey(name: "newPassword")
  final String? newPassword;
  @override
  @JsonKey(name: "confirmPassword")
  final String? confirmPassword;

  @override
  String toString() {
    return 'UpdatePasswordRequest(userId: $userId, currentPassword: $currentPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, currentPassword, newPassword, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordRequestImplCopyWith<_$UpdatePasswordRequestImpl>
      get copyWith => __$$UpdatePasswordRequestImplCopyWithImpl<
          _$UpdatePasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePasswordRequest implements UpdatePasswordRequest {
  const factory _UpdatePasswordRequest(
          {@JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "currentPassword") final String? currentPassword,
          @JsonKey(name: "newPassword") final String? newPassword,
          @JsonKey(name: "confirmPassword") final String? confirmPassword}) =
      _$UpdatePasswordRequestImpl;

  factory _UpdatePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "currentPassword")
  String? get currentPassword;
  @override
  @JsonKey(name: "newPassword")
  String? get newPassword;
  @override
  @JsonKey(name: "confirmPassword")
  String? get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePasswordRequestImplCopyWith<_$UpdatePasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePasswordResponse _$UpdatePasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdatePasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdatePasswordResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePasswordResponseCopyWith<UpdatePasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordResponseCopyWith<$Res> {
  factory $UpdatePasswordResponseCopyWith(UpdatePasswordResponse value,
          $Res Function(UpdatePasswordResponse) then) =
      _$UpdatePasswordResponseCopyWithImpl<$Res, UpdatePasswordResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$UpdatePasswordResponseCopyWithImpl<$Res,
        $Val extends UpdatePasswordResponse>
    implements $UpdatePasswordResponseCopyWith<$Res> {
  _$UpdatePasswordResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdatePasswordResponseImplCopyWith<$Res>
    implements $UpdatePasswordResponseCopyWith<$Res> {
  factory _$$UpdatePasswordResponseImplCopyWith(
          _$UpdatePasswordResponseImpl value,
          $Res Function(_$UpdatePasswordResponseImpl) then) =
      __$$UpdatePasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$UpdatePasswordResponseImplCopyWithImpl<$Res>
    extends _$UpdatePasswordResponseCopyWithImpl<$Res,
        _$UpdatePasswordResponseImpl>
    implements _$$UpdatePasswordResponseImplCopyWith<$Res> {
  __$$UpdatePasswordResponseImplCopyWithImpl(
      _$UpdatePasswordResponseImpl _value,
      $Res Function(_$UpdatePasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UpdatePasswordResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePasswordResponseImpl implements _UpdatePasswordResponse {
  const _$UpdatePasswordResponseImpl({@JsonKey(name: "message") this.message});

  factory _$UpdatePasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'UpdatePasswordResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordResponseImplCopyWith<_$UpdatePasswordResponseImpl>
      get copyWith => __$$UpdatePasswordResponseImplCopyWithImpl<
          _$UpdatePasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdatePasswordResponse implements UpdatePasswordResponse {
  const factory _UpdatePasswordResponse(
          {@JsonKey(name: "message") final String? message}) =
      _$UpdatePasswordResponseImpl;

  factory _UpdatePasswordResponse.fromJson(Map<String, dynamic> json) =
      _$UpdatePasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePasswordResponseImplCopyWith<_$UpdatePasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
