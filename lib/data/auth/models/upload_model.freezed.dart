// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadResponse _$UploadResponseFromJson(Map<String, dynamic> json) {
  return _UploadResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadResponse {
  @JsonKey(name: "presignedUrls")
  List<String>? get presignedUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "pollingJwt")
  String? get pollingJwt => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadId")
  String? get uploadId => throw _privateConstructorUsedError;
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "fileType")
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: "contentDisposition")
  String? get contentDisposition => throw _privateConstructorUsedError;
  @JsonKey(name: "chunkCount")
  int? get chunkCount => throw _privateConstructorUsedError;
  @JsonKey(name: "chunkSize")
  int? get chunkSize => throw _privateConstructorUsedError;
  @JsonKey(name: "pollingUrl")
  String? get pollingUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadResponseCopyWith<UploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResponseCopyWith<$Res> {
  factory $UploadResponseCopyWith(
          UploadResponse value, $Res Function(UploadResponse) then) =
      _$UploadResponseCopyWithImpl<$Res, UploadResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "presignedUrls") List<String>? presignedUrls,
      @JsonKey(name: "pollingJwt") String? pollingJwt,
      @JsonKey(name: "key") String? key,
      @JsonKey(name: "uploadId") String? uploadId,
      @JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "fileType") String? fileType,
      @JsonKey(name: "contentDisposition") String? contentDisposition,
      @JsonKey(name: "chunkCount") int? chunkCount,
      @JsonKey(name: "chunkSize") int? chunkSize,
      @JsonKey(name: "pollingUrl") String? pollingUrl});
}

/// @nodoc
class _$UploadResponseCopyWithImpl<$Res, $Val extends UploadResponse>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrls = freezed,
    Object? pollingJwt = freezed,
    Object? key = freezed,
    Object? uploadId = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? contentDisposition = freezed,
    Object? chunkCount = freezed,
    Object? chunkSize = freezed,
    Object? pollingUrl = freezed,
  }) {
    return _then(_value.copyWith(
      presignedUrls: freezed == presignedUrls
          ? _value.presignedUrls
          : presignedUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pollingJwt: freezed == pollingJwt
          ? _value.pollingJwt
          : pollingJwt // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadId: freezed == uploadId
          ? _value.uploadId
          : uploadId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentDisposition: freezed == contentDisposition
          ? _value.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as String?,
      chunkCount: freezed == chunkCount
          ? _value.chunkCount
          : chunkCount // ignore: cast_nullable_to_non_nullable
              as int?,
      chunkSize: freezed == chunkSize
          ? _value.chunkSize
          : chunkSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pollingUrl: freezed == pollingUrl
          ? _value.pollingUrl
          : pollingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadResponseImplCopyWith<$Res>
    implements $UploadResponseCopyWith<$Res> {
  factory _$$UploadResponseImplCopyWith(_$UploadResponseImpl value,
          $Res Function(_$UploadResponseImpl) then) =
      __$$UploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "presignedUrls") List<String>? presignedUrls,
      @JsonKey(name: "pollingJwt") String? pollingJwt,
      @JsonKey(name: "key") String? key,
      @JsonKey(name: "uploadId") String? uploadId,
      @JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "fileType") String? fileType,
      @JsonKey(name: "contentDisposition") String? contentDisposition,
      @JsonKey(name: "chunkCount") int? chunkCount,
      @JsonKey(name: "chunkSize") int? chunkSize,
      @JsonKey(name: "pollingUrl") String? pollingUrl});
}

/// @nodoc
class __$$UploadResponseImplCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res, _$UploadResponseImpl>
    implements _$$UploadResponseImplCopyWith<$Res> {
  __$$UploadResponseImplCopyWithImpl(
      _$UploadResponseImpl _value, $Res Function(_$UploadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrls = freezed,
    Object? pollingJwt = freezed,
    Object? key = freezed,
    Object? uploadId = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? contentDisposition = freezed,
    Object? chunkCount = freezed,
    Object? chunkSize = freezed,
    Object? pollingUrl = freezed,
  }) {
    return _then(_$UploadResponseImpl(
      presignedUrls: freezed == presignedUrls
          ? _value._presignedUrls
          : presignedUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pollingJwt: freezed == pollingJwt
          ? _value.pollingJwt
          : pollingJwt // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadId: freezed == uploadId
          ? _value.uploadId
          : uploadId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentDisposition: freezed == contentDisposition
          ? _value.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as String?,
      chunkCount: freezed == chunkCount
          ? _value.chunkCount
          : chunkCount // ignore: cast_nullable_to_non_nullable
              as int?,
      chunkSize: freezed == chunkSize
          ? _value.chunkSize
          : chunkSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pollingUrl: freezed == pollingUrl
          ? _value.pollingUrl
          : pollingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadResponseImpl implements _UploadResponse {
  const _$UploadResponseImpl(
      {@JsonKey(name: "presignedUrls") final List<String>? presignedUrls,
      @JsonKey(name: "pollingJwt") this.pollingJwt,
      @JsonKey(name: "key") this.key,
      @JsonKey(name: "uploadId") this.uploadId,
      @JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "fileType") this.fileType,
      @JsonKey(name: "contentDisposition") this.contentDisposition,
      @JsonKey(name: "chunkCount") this.chunkCount,
      @JsonKey(name: "chunkSize") this.chunkSize,
      @JsonKey(name: "pollingUrl") this.pollingUrl})
      : _presignedUrls = presignedUrls;

  factory _$UploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResponseImplFromJson(json);

  final List<String>? _presignedUrls;
  @override
  @JsonKey(name: "presignedUrls")
  List<String>? get presignedUrls {
    final value = _presignedUrls;
    if (value == null) return null;
    if (_presignedUrls is EqualUnmodifiableListView) return _presignedUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pollingJwt")
  final String? pollingJwt;
  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "uploadId")
  final String? uploadId;
  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "fileType")
  final String? fileType;
  @override
  @JsonKey(name: "contentDisposition")
  final String? contentDisposition;
  @override
  @JsonKey(name: "chunkCount")
  final int? chunkCount;
  @override
  @JsonKey(name: "chunkSize")
  final int? chunkSize;
  @override
  @JsonKey(name: "pollingUrl")
  final String? pollingUrl;

  @override
  String toString() {
    return 'UploadResponse(presignedUrls: $presignedUrls, pollingJwt: $pollingJwt, key: $key, uploadId: $uploadId, fileName: $fileName, fileType: $fileType, contentDisposition: $contentDisposition, chunkCount: $chunkCount, chunkSize: $chunkSize, pollingUrl: $pollingUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._presignedUrls, _presignedUrls) &&
            (identical(other.pollingJwt, pollingJwt) ||
                other.pollingJwt == pollingJwt) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.uploadId, uploadId) ||
                other.uploadId == uploadId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.contentDisposition, contentDisposition) ||
                other.contentDisposition == contentDisposition) &&
            (identical(other.chunkCount, chunkCount) ||
                other.chunkCount == chunkCount) &&
            (identical(other.chunkSize, chunkSize) ||
                other.chunkSize == chunkSize) &&
            (identical(other.pollingUrl, pollingUrl) ||
                other.pollingUrl == pollingUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_presignedUrls),
      pollingJwt,
      key,
      uploadId,
      fileName,
      fileType,
      contentDisposition,
      chunkCount,
      chunkSize,
      pollingUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      __$$UploadResponseImplCopyWithImpl<_$UploadResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadResponse implements UploadResponse {
  const factory _UploadResponse(
          {@JsonKey(name: "presignedUrls") final List<String>? presignedUrls,
          @JsonKey(name: "pollingJwt") final String? pollingJwt,
          @JsonKey(name: "key") final String? key,
          @JsonKey(name: "uploadId") final String? uploadId,
          @JsonKey(name: "fileName") final String? fileName,
          @JsonKey(name: "fileType") final String? fileType,
          @JsonKey(name: "contentDisposition") final String? contentDisposition,
          @JsonKey(name: "chunkCount") final int? chunkCount,
          @JsonKey(name: "chunkSize") final int? chunkSize,
          @JsonKey(name: "pollingUrl") final String? pollingUrl}) =
      _$UploadResponseImpl;

  factory _UploadResponse.fromJson(Map<String, dynamic> json) =
      _$UploadResponseImpl.fromJson;

  @override
  @JsonKey(name: "presignedUrls")
  List<String>? get presignedUrls;
  @override
  @JsonKey(name: "pollingJwt")
  String? get pollingJwt;
  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "uploadId")
  String? get uploadId;
  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "fileType")
  String? get fileType;
  @override
  @JsonKey(name: "contentDisposition")
  String? get contentDisposition;
  @override
  @JsonKey(name: "chunkCount")
  int? get chunkCount;
  @override
  @JsonKey(name: "chunkSize")
  int? get chunkSize;
  @override
  @JsonKey(name: "pollingUrl")
  String? get pollingUrl;
  @override
  @JsonKey(ignore: true)
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
