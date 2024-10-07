// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllPlaylistResponse _$GetAllPlaylistResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAllPlaylistResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllPlaylistResponse {
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this GetAllPlaylistResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllPlaylistResponseCopyWith<GetAllPlaylistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllPlaylistResponseCopyWith<$Res> {
  factory $GetAllPlaylistResponseCopyWith(GetAllPlaylistResponse value,
          $Res Function(GetAllPlaylistResponse) then) =
      _$GetAllPlaylistResponseCopyWithImpl<$Res, GetAllPlaylistResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "label") String? label,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$GetAllPlaylistResponseCopyWithImpl<$Res,
        $Val extends GetAllPlaylistResponse>
    implements $GetAllPlaylistResponseCopyWith<$Res> {
  _$GetAllPlaylistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllPlaylistResponseImplCopyWith<$Res>
    implements $GetAllPlaylistResponseCopyWith<$Res> {
  factory _$$GetAllPlaylistResponseImplCopyWith(
          _$GetAllPlaylistResponseImpl value,
          $Res Function(_$GetAllPlaylistResponseImpl) then) =
      __$$GetAllPlaylistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "label") String? label,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$GetAllPlaylistResponseImplCopyWithImpl<$Res>
    extends _$GetAllPlaylistResponseCopyWithImpl<$Res,
        _$GetAllPlaylistResponseImpl>
    implements _$$GetAllPlaylistResponseImplCopyWith<$Res> {
  __$$GetAllPlaylistResponseImplCopyWithImpl(
      _$GetAllPlaylistResponseImpl _value,
      $Res Function(_$GetAllPlaylistResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_$GetAllPlaylistResponseImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllPlaylistResponseImpl implements _GetAllPlaylistResponse {
  const _$GetAllPlaylistResponseImpl(
      {@JsonKey(name: "label") this.label, @JsonKey(name: "value") this.value});

  factory _$GetAllPlaylistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllPlaylistResponseImplFromJson(json);

  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'GetAllPlaylistResponse(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPlaylistResponseImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  /// Create a copy of GetAllPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllPlaylistResponseImplCopyWith<_$GetAllPlaylistResponseImpl>
      get copyWith => __$$GetAllPlaylistResponseImplCopyWithImpl<
          _$GetAllPlaylistResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllPlaylistResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllPlaylistResponse implements GetAllPlaylistResponse {
  const factory _GetAllPlaylistResponse(
          {@JsonKey(name: "label") final String? label,
          @JsonKey(name: "value") final String? value}) =
      _$GetAllPlaylistResponseImpl;

  factory _GetAllPlaylistResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllPlaylistResponseImpl.fromJson;

  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "value")
  String? get value;

  /// Create a copy of GetAllPlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllPlaylistResponseImplCopyWith<_$GetAllPlaylistResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
