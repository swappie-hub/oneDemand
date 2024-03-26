// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetPasswordRequest _$ForgetPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ForgetPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordRequest {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPasswordRequestCopyWith<ForgetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordRequestCopyWith<$Res> {
  factory $ForgetPasswordRequestCopyWith(ForgetPasswordRequest value,
          $Res Function(ForgetPasswordRequest) then) =
      _$ForgetPasswordRequestCopyWithImpl<$Res, ForgetPasswordRequest>;
  @useResult
  $Res call({@JsonKey(name: "email") String? email});
}

/// @nodoc
class _$ForgetPasswordRequestCopyWithImpl<$Res,
        $Val extends ForgetPasswordRequest>
    implements $ForgetPasswordRequestCopyWith<$Res> {
  _$ForgetPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordRequestImplCopyWith<$Res>
    implements $ForgetPasswordRequestCopyWith<$Res> {
  factory _$$ForgetPasswordRequestImplCopyWith(
          _$ForgetPasswordRequestImpl value,
          $Res Function(_$ForgetPasswordRequestImpl) then) =
      __$$ForgetPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "email") String? email});
}

/// @nodoc
class __$$ForgetPasswordRequestImplCopyWithImpl<$Res>
    extends _$ForgetPasswordRequestCopyWithImpl<$Res,
        _$ForgetPasswordRequestImpl>
    implements _$$ForgetPasswordRequestImplCopyWith<$Res> {
  __$$ForgetPasswordRequestImplCopyWithImpl(_$ForgetPasswordRequestImpl _value,
      $Res Function(_$ForgetPasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$ForgetPasswordRequestImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetPasswordRequestImpl implements _ForgetPasswordRequest {
  const _$ForgetPasswordRequestImpl({@JsonKey(name: "email") this.email});

  factory _$ForgetPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;

  @override
  String toString() {
    return 'ForgetPasswordRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordRequestImplCopyWith<_$ForgetPasswordRequestImpl>
      get copyWith => __$$ForgetPasswordRequestImplCopyWithImpl<
          _$ForgetPasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordRequest implements ForgetPasswordRequest {
  const factory _ForgetPasswordRequest(
          {@JsonKey(name: "email") final String? email}) =
      _$ForgetPasswordRequestImpl;

  factory _ForgetPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ForgetPasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordRequestImplCopyWith<_$ForgetPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ForgetPasswordResponse _$ForgetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordResponse {
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPasswordResponseCopyWith<ForgetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordResponseCopyWith<$Res> {
  factory $ForgetPasswordResponseCopyWith(ForgetPasswordResponse value,
          $Res Function(ForgetPasswordResponse) then) =
      _$ForgetPasswordResponseCopyWithImpl<$Res, ForgetPasswordResponse>;
  @useResult
  $Res call({@JsonKey(name: "Status") String? status});
}

/// @nodoc
class _$ForgetPasswordResponseCopyWithImpl<$Res,
        $Val extends ForgetPasswordResponse>
    implements $ForgetPasswordResponseCopyWith<$Res> {
  _$ForgetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordResponseImplCopyWith<$Res>
    implements $ForgetPasswordResponseCopyWith<$Res> {
  factory _$$ForgetPasswordResponseImplCopyWith(
          _$ForgetPasswordResponseImpl value,
          $Res Function(_$ForgetPasswordResponseImpl) then) =
      __$$ForgetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "Status") String? status});
}

/// @nodoc
class __$$ForgetPasswordResponseImplCopyWithImpl<$Res>
    extends _$ForgetPasswordResponseCopyWithImpl<$Res,
        _$ForgetPasswordResponseImpl>
    implements _$$ForgetPasswordResponseImplCopyWith<$Res> {
  __$$ForgetPasswordResponseImplCopyWithImpl(
      _$ForgetPasswordResponseImpl _value,
      $Res Function(_$ForgetPasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$ForgetPasswordResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetPasswordResponseImpl implements _ForgetPasswordResponse {
  const _$ForgetPasswordResponseImpl({@JsonKey(name: "Status") this.status});

  factory _$ForgetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: "Status")
  final String? status;

  @override
  String toString() {
    return 'ForgetPasswordResponse(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordResponseImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordResponseImplCopyWith<_$ForgetPasswordResponseImpl>
      get copyWith => __$$ForgetPasswordResponseImplCopyWithImpl<
          _$ForgetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordResponse implements ForgetPasswordResponse {
  const factory _ForgetPasswordResponse(
          {@JsonKey(name: "Status") final String? status}) =
      _$ForgetPasswordResponseImpl;

  factory _ForgetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ForgetPasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: "Status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordResponseImplCopyWith<_$ForgetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
