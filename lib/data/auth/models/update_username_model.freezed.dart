// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_username_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUsernameRequest _$UpdateUsernameRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateUsernameRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUsernameRequest {
  @JsonKey(name: "firstname")
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUsernameRequestCopyWith<UpdateUsernameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUsernameRequestCopyWith<$Res> {
  factory $UpdateUsernameRequestCopyWith(UpdateUsernameRequest value,
          $Res Function(UpdateUsernameRequest) then) =
      _$UpdateUsernameRequestCopyWithImpl<$Res, UpdateUsernameRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "firstname") String? firstname,
      @JsonKey(name: "lastname") String? lastname,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class _$UpdateUsernameRequestCopyWithImpl<$Res,
        $Val extends UpdateUsernameRequest>
    implements $UpdateUsernameRequestCopyWith<$Res> {
  _$UpdateUsernameRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUsernameRequestImplCopyWith<$Res>
    implements $UpdateUsernameRequestCopyWith<$Res> {
  factory _$$UpdateUsernameRequestImplCopyWith(
          _$UpdateUsernameRequestImpl value,
          $Res Function(_$UpdateUsernameRequestImpl) then) =
      __$$UpdateUsernameRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "firstname") String? firstname,
      @JsonKey(name: "lastname") String? lastname,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class __$$UpdateUsernameRequestImplCopyWithImpl<$Res>
    extends _$UpdateUsernameRequestCopyWithImpl<$Res,
        _$UpdateUsernameRequestImpl>
    implements _$$UpdateUsernameRequestImplCopyWith<$Res> {
  __$$UpdateUsernameRequestImplCopyWithImpl(_$UpdateUsernameRequestImpl _value,
      $Res Function(_$UpdateUsernameRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateUsernameRequestImpl(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
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
class _$UpdateUsernameRequestImpl implements _UpdateUsernameRequest {
  const _$UpdateUsernameRequestImpl(
      {@JsonKey(name: "firstname") this.firstname,
      @JsonKey(name: "lastname") this.lastname,
      @JsonKey(name: "userId") this.userId});

  factory _$UpdateUsernameRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUsernameRequestImplFromJson(json);

  @override
  @JsonKey(name: "firstname")
  final String? firstname;
  @override
  @JsonKey(name: "lastname")
  final String? lastname;
  @override
  @JsonKey(name: "userId")
  final String? userId;

  @override
  String toString() {
    return 'UpdateUsernameRequest(firstname: $firstname, lastname: $lastname, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsernameRequestImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstname, lastname, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUsernameRequestImplCopyWith<_$UpdateUsernameRequestImpl>
      get copyWith => __$$UpdateUsernameRequestImplCopyWithImpl<
          _$UpdateUsernameRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUsernameRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUsernameRequest implements UpdateUsernameRequest {
  const factory _UpdateUsernameRequest(
          {@JsonKey(name: "firstname") final String? firstname,
          @JsonKey(name: "lastname") final String? lastname,
          @JsonKey(name: "userId") final String? userId}) =
      _$UpdateUsernameRequestImpl;

  factory _UpdateUsernameRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUsernameRequestImpl.fromJson;

  @override
  @JsonKey(name: "firstname")
  String? get firstname;
  @override
  @JsonKey(name: "lastname")
  String? get lastname;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUsernameRequestImplCopyWith<_$UpdateUsernameRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateUsernameResponse _$UpdateUsernameResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateUsernameResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateUsernameResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUsernameResponseCopyWith<UpdateUsernameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUsernameResponseCopyWith<$Res> {
  factory $UpdateUsernameResponseCopyWith(UpdateUsernameResponse value,
          $Res Function(UpdateUsernameResponse) then) =
      _$UpdateUsernameResponseCopyWithImpl<$Res, UpdateUsernameResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$UpdateUsernameResponseCopyWithImpl<$Res,
        $Val extends UpdateUsernameResponse>
    implements $UpdateUsernameResponseCopyWith<$Res> {
  _$UpdateUsernameResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateUsernameResponseImplCopyWith<$Res>
    implements $UpdateUsernameResponseCopyWith<$Res> {
  factory _$$UpdateUsernameResponseImplCopyWith(
          _$UpdateUsernameResponseImpl value,
          $Res Function(_$UpdateUsernameResponseImpl) then) =
      __$$UpdateUsernameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$UpdateUsernameResponseImplCopyWithImpl<$Res>
    extends _$UpdateUsernameResponseCopyWithImpl<$Res,
        _$UpdateUsernameResponseImpl>
    implements _$$UpdateUsernameResponseImplCopyWith<$Res> {
  __$$UpdateUsernameResponseImplCopyWithImpl(
      _$UpdateUsernameResponseImpl _value,
      $Res Function(_$UpdateUsernameResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UpdateUsernameResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUsernameResponseImpl implements _UpdateUsernameResponse {
  const _$UpdateUsernameResponseImpl({@JsonKey(name: "message") this.message});

  factory _$UpdateUsernameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUsernameResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'UpdateUsernameResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsernameResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUsernameResponseImplCopyWith<_$UpdateUsernameResponseImpl>
      get copyWith => __$$UpdateUsernameResponseImplCopyWithImpl<
          _$UpdateUsernameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUsernameResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateUsernameResponse implements UpdateUsernameResponse {
  const factory _UpdateUsernameResponse(
          {@JsonKey(name: "message") final String? message}) =
      _$UpdateUsernameResponseImpl;

  factory _UpdateUsernameResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateUsernameResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUsernameResponseImplCopyWith<_$UpdateUsernameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
