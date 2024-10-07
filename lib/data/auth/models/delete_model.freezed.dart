// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteAccountResponse _$DeleteAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccountResponse {
  @JsonKey(name: "Success")
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this DeleteAccountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountResponseCopyWith<DeleteAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountResponseCopyWith<$Res> {
  factory $DeleteAccountResponseCopyWith(DeleteAccountResponse value,
          $Res Function(DeleteAccountResponse) then) =
      _$DeleteAccountResponseCopyWithImpl<$Res, DeleteAccountResponse>;
  @useResult
  $Res call({@JsonKey(name: "Success") bool? success});
}

/// @nodoc
class _$DeleteAccountResponseCopyWithImpl<$Res,
        $Val extends DeleteAccountResponse>
    implements $DeleteAccountResponseCopyWith<$Res> {
  _$DeleteAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountResponse
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
abstract class _$$DeleteAccountResponseImplCopyWith<$Res>
    implements $DeleteAccountResponseCopyWith<$Res> {
  factory _$$DeleteAccountResponseImplCopyWith(
          _$DeleteAccountResponseImpl value,
          $Res Function(_$DeleteAccountResponseImpl) then) =
      __$$DeleteAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "Success") bool? success});
}

/// @nodoc
class __$$DeleteAccountResponseImplCopyWithImpl<$Res>
    extends _$DeleteAccountResponseCopyWithImpl<$Res,
        _$DeleteAccountResponseImpl>
    implements _$$DeleteAccountResponseImplCopyWith<$Res> {
  __$$DeleteAccountResponseImplCopyWithImpl(_$DeleteAccountResponseImpl _value,
      $Res Function(_$DeleteAccountResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$DeleteAccountResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteAccountResponseImpl implements _DeleteAccountResponse {
  const _$DeleteAccountResponseImpl({@JsonKey(name: "Success") this.success});

  factory _$DeleteAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteAccountResponseImplFromJson(json);

  @override
  @JsonKey(name: "Success")
  final bool? success;

  @override
  String toString() {
    return 'DeleteAccountResponse(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountResponseImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of DeleteAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountResponseImplCopyWith<_$DeleteAccountResponseImpl>
      get copyWith => __$$DeleteAccountResponseImplCopyWithImpl<
          _$DeleteAccountResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAccountResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteAccountResponse implements DeleteAccountResponse {
  const factory _DeleteAccountResponse(
          {@JsonKey(name: "Success") final bool? success}) =
      _$DeleteAccountResponseImpl;

  factory _DeleteAccountResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteAccountResponseImpl.fromJson;

  @override
  @JsonKey(name: "Success")
  bool? get success;

  /// Create a copy of DeleteAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountResponseImplCopyWith<_$DeleteAccountResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
