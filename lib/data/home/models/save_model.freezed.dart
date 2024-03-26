// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveResponse _$SaveResponseFromJson(Map<String, dynamic> json) {
  return _SaveResponse.fromJson(json);
}

/// @nodoc
mixin _$SaveResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveResponseCopyWith<SaveResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveResponseCopyWith<$Res> {
  factory $SaveResponseCopyWith(
          SaveResponse value, $Res Function(SaveResponse) then) =
      _$SaveResponseCopyWithImpl<$Res, SaveResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class _$SaveResponseCopyWithImpl<$Res, $Val extends SaveResponse>
    implements $SaveResponseCopyWith<$Res> {
  _$SaveResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveResponseImplCopyWith<$Res>
    implements $SaveResponseCopyWith<$Res> {
  factory _$$SaveResponseImplCopyWith(
          _$SaveResponseImpl value, $Res Function(_$SaveResponseImpl) then) =
      __$$SaveResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$SaveResponseImplCopyWithImpl<$Res>
    extends _$SaveResponseCopyWithImpl<$Res, _$SaveResponseImpl>
    implements _$$SaveResponseImplCopyWith<$Res> {
  __$$SaveResponseImplCopyWithImpl(
      _$SaveResponseImpl _value, $Res Function(_$SaveResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SaveResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveResponseImpl implements _SaveResponse {
  const _$SaveResponseImpl({@JsonKey(name: "message") this.message});

  factory _$SaveResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'SaveResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveResponseImplCopyWith<_$SaveResponseImpl> get copyWith =>
      __$$SaveResponseImplCopyWithImpl<_$SaveResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveResponseImplToJson(
      this,
    );
  }
}

abstract class _SaveResponse implements SaveResponse {
  const factory _SaveResponse(
      {@JsonKey(name: "message") final String? message}) = _$SaveResponseImpl;

  factory _SaveResponse.fromJson(Map<String, dynamic> json) =
      _$SaveResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SaveResponseImplCopyWith<_$SaveResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
