// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchSubscriptionResponse _$FetchSubscriptionResponseFromJson(
    Map<String, dynamic> json) {
  return _FetchSubscriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchSubscriptionResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSubscriptionResponseCopyWith<FetchSubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSubscriptionResponseCopyWith<$Res> {
  factory $FetchSubscriptionResponseCopyWith(FetchSubscriptionResponse value,
          $Res Function(FetchSubscriptionResponse) then) =
      _$FetchSubscriptionResponseCopyWithImpl<$Res, FetchSubscriptionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") String? data});
}

/// @nodoc
class _$FetchSubscriptionResponseCopyWithImpl<$Res,
        $Val extends FetchSubscriptionResponse>
    implements $FetchSubscriptionResponseCopyWith<$Res> {
  _$FetchSubscriptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchSubscriptionResponseImplCopyWith<$Res>
    implements $FetchSubscriptionResponseCopyWith<$Res> {
  factory _$$FetchSubscriptionResponseImplCopyWith(
          _$FetchSubscriptionResponseImpl value,
          $Res Function(_$FetchSubscriptionResponseImpl) then) =
      __$$FetchSubscriptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") String? data});
}

/// @nodoc
class __$$FetchSubscriptionResponseImplCopyWithImpl<$Res>
    extends _$FetchSubscriptionResponseCopyWithImpl<$Res,
        _$FetchSubscriptionResponseImpl>
    implements _$$FetchSubscriptionResponseImplCopyWith<$Res> {
  __$$FetchSubscriptionResponseImplCopyWithImpl(
      _$FetchSubscriptionResponseImpl _value,
      $Res Function(_$FetchSubscriptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchSubscriptionResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchSubscriptionResponseImpl implements _FetchSubscriptionResponse {
  const _$FetchSubscriptionResponseImpl(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$FetchSubscriptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchSubscriptionResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final String? data;

  @override
  String toString() {
    return 'FetchSubscriptionResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubscriptionResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubscriptionResponseImplCopyWith<_$FetchSubscriptionResponseImpl>
      get copyWith => __$$FetchSubscriptionResponseImplCopyWithImpl<
          _$FetchSubscriptionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchSubscriptionResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchSubscriptionResponse implements FetchSubscriptionResponse {
  const factory _FetchSubscriptionResponse(
          {@JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final String? data}) =
      _$FetchSubscriptionResponseImpl;

  factory _FetchSubscriptionResponse.fromJson(Map<String, dynamic> json) =
      _$FetchSubscriptionResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchSubscriptionResponseImplCopyWith<_$FetchSubscriptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
