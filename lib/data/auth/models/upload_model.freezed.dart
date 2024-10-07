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
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this UploadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UploadResponseCopyWithImpl<$Res, $Val extends UploadResponse>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UploadResponseImplCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res, _$UploadResponseImpl>
    implements _$$UploadResponseImplCopyWith<$Res> {
  __$$UploadResponseImplCopyWithImpl(
      _$UploadResponseImpl _value, $Res Function(_$UploadResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UploadResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadResponseImpl implements _UploadResponse {
  const _$UploadResponseImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$UploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'UploadResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Data? data}) = _$UploadResponseImpl;

  factory _UploadResponse.fromJson(Map<String, dynamic> json) =
      _$UploadResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  Data? get data;

  /// Create a copy of UploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "file_link")
  String? get fileLink => throw _privateConstructorUsedError;
  @JsonKey(name: "cdnLink")
  String? get cdnLink => throw _privateConstructorUsedError;
  @JsonKey(name: "responseData")
  ResponseData? get responseData => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "file_link") String? fileLink,
      @JsonKey(name: "cdnLink") String? cdnLink,
      @JsonKey(name: "responseData") ResponseData? responseData});

  $ResponseDataCopyWith<$Res>? get responseData;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLink = freezed,
    Object? cdnLink = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_value.copyWith(
      fileLink: freezed == fileLink
          ? _value.fileLink
          : fileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      cdnLink: freezed == cdnLink
          ? _value.cdnLink
          : cdnLink // ignore: cast_nullable_to_non_nullable
              as String?,
      responseData: freezed == responseData
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as ResponseData?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseDataCopyWith<$Res>? get responseData {
    if (_value.responseData == null) {
      return null;
    }

    return $ResponseDataCopyWith<$Res>(_value.responseData!, (value) {
      return _then(_value.copyWith(responseData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "file_link") String? fileLink,
      @JsonKey(name: "cdnLink") String? cdnLink,
      @JsonKey(name: "responseData") ResponseData? responseData});

  @override
  $ResponseDataCopyWith<$Res>? get responseData;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLink = freezed,
    Object? cdnLink = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_$DataImpl(
      fileLink: freezed == fileLink
          ? _value.fileLink
          : fileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      cdnLink: freezed == cdnLink
          ? _value.cdnLink
          : cdnLink // ignore: cast_nullable_to_non_nullable
              as String?,
      responseData: freezed == responseData
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as ResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "file_link") this.fileLink,
      @JsonKey(name: "cdnLink") this.cdnLink,
      @JsonKey(name: "responseData") this.responseData});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "file_link")
  final String? fileLink;
  @override
  @JsonKey(name: "cdnLink")
  final String? cdnLink;
  @override
  @JsonKey(name: "responseData")
  final ResponseData? responseData;

  @override
  String toString() {
    return 'Data(fileLink: $fileLink, cdnLink: $cdnLink, responseData: $responseData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.fileLink, fileLink) ||
                other.fileLink == fileLink) &&
            (identical(other.cdnLink, cdnLink) || other.cdnLink == cdnLink) &&
            (identical(other.responseData, responseData) ||
                other.responseData == responseData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileLink, cdnLink, responseData);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
          {@JsonKey(name: "file_link") final String? fileLink,
          @JsonKey(name: "cdnLink") final String? cdnLink,
          @JsonKey(name: "responseData") final ResponseData? responseData}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "file_link")
  String? get fileLink;
  @override
  @JsonKey(name: "cdnLink")
  String? get cdnLink;
  @override
  @JsonKey(name: "responseData")
  ResponseData? get responseData;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  @JsonKey(name: "fieldname")
  String? get fieldname => throw _privateConstructorUsedError;
  @JsonKey(name: "originalname")
  String? get originalname => throw _privateConstructorUsedError;
  @JsonKey(name: "encoding")
  String? get encoding => throw _privateConstructorUsedError;
  @JsonKey(name: "mimetype")
  String? get mimetype => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket")
  String? get bucket => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "acl")
  String? get acl => throw _privateConstructorUsedError;
  @JsonKey(name: "contentType")
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "contentDisposition")
  dynamic get contentDisposition => throw _privateConstructorUsedError;
  @JsonKey(name: "contentEncoding")
  dynamic get contentEncoding => throw _privateConstructorUsedError;
  @JsonKey(name: "storageClass")
  String? get storageClass => throw _privateConstructorUsedError;
  @JsonKey(name: "serverSideEncryption")
  dynamic get serverSideEncryption => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  dynamic get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "etag")
  String? get etag => throw _privateConstructorUsedError;

  /// Serializes this ResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "fieldname") String? fieldname,
      @JsonKey(name: "originalname") String? originalname,
      @JsonKey(name: "encoding") String? encoding,
      @JsonKey(name: "mimetype") String? mimetype,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "bucket") String? bucket,
      @JsonKey(name: "key") String? key,
      @JsonKey(name: "acl") String? acl,
      @JsonKey(name: "contentType") String? contentType,
      @JsonKey(name: "contentDisposition") dynamic contentDisposition,
      @JsonKey(name: "contentEncoding") dynamic contentEncoding,
      @JsonKey(name: "storageClass") String? storageClass,
      @JsonKey(name: "serverSideEncryption") dynamic serverSideEncryption,
      @JsonKey(name: "metadata") dynamic metadata,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "etag") String? etag});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldname = freezed,
    Object? originalname = freezed,
    Object? encoding = freezed,
    Object? mimetype = freezed,
    Object? size = freezed,
    Object? bucket = freezed,
    Object? key = freezed,
    Object? acl = freezed,
    Object? contentType = freezed,
    Object? contentDisposition = freezed,
    Object? contentEncoding = freezed,
    Object? storageClass = freezed,
    Object? serverSideEncryption = freezed,
    Object? metadata = freezed,
    Object? location = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      fieldname: freezed == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String?,
      originalname: freezed == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      acl: freezed == acl
          ? _value.acl
          : acl // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentDisposition: freezed == contentDisposition
          ? _value.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as dynamic,
      contentEncoding: freezed == contentEncoding
          ? _value.contentEncoding
          : contentEncoding // ignore: cast_nullable_to_non_nullable
              as dynamic,
      storageClass: freezed == storageClass
          ? _value.storageClass
          : storageClass // ignore: cast_nullable_to_non_nullable
              as String?,
      serverSideEncryption: freezed == serverSideEncryption
          ? _value.serverSideEncryption
          : serverSideEncryption // ignore: cast_nullable_to_non_nullable
              as dynamic,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDataImplCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$ResponseDataImplCopyWith(
          _$ResponseDataImpl value, $Res Function(_$ResponseDataImpl) then) =
      __$$ResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fieldname") String? fieldname,
      @JsonKey(name: "originalname") String? originalname,
      @JsonKey(name: "encoding") String? encoding,
      @JsonKey(name: "mimetype") String? mimetype,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "bucket") String? bucket,
      @JsonKey(name: "key") String? key,
      @JsonKey(name: "acl") String? acl,
      @JsonKey(name: "contentType") String? contentType,
      @JsonKey(name: "contentDisposition") dynamic contentDisposition,
      @JsonKey(name: "contentEncoding") dynamic contentEncoding,
      @JsonKey(name: "storageClass") String? storageClass,
      @JsonKey(name: "serverSideEncryption") dynamic serverSideEncryption,
      @JsonKey(name: "metadata") dynamic metadata,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "etag") String? etag});
}

/// @nodoc
class __$$ResponseDataImplCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$ResponseDataImpl>
    implements _$$ResponseDataImplCopyWith<$Res> {
  __$$ResponseDataImplCopyWithImpl(
      _$ResponseDataImpl _value, $Res Function(_$ResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldname = freezed,
    Object? originalname = freezed,
    Object? encoding = freezed,
    Object? mimetype = freezed,
    Object? size = freezed,
    Object? bucket = freezed,
    Object? key = freezed,
    Object? acl = freezed,
    Object? contentType = freezed,
    Object? contentDisposition = freezed,
    Object? contentEncoding = freezed,
    Object? storageClass = freezed,
    Object? serverSideEncryption = freezed,
    Object? metadata = freezed,
    Object? location = freezed,
    Object? etag = freezed,
  }) {
    return _then(_$ResponseDataImpl(
      fieldname: freezed == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String?,
      originalname: freezed == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      acl: freezed == acl
          ? _value.acl
          : acl // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentDisposition: freezed == contentDisposition
          ? _value.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as dynamic,
      contentEncoding: freezed == contentEncoding
          ? _value.contentEncoding
          : contentEncoding // ignore: cast_nullable_to_non_nullable
              as dynamic,
      storageClass: freezed == storageClass
          ? _value.storageClass
          : storageClass // ignore: cast_nullable_to_non_nullable
              as String?,
      serverSideEncryption: freezed == serverSideEncryption
          ? _value.serverSideEncryption
          : serverSideEncryption // ignore: cast_nullable_to_non_nullable
              as dynamic,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataImpl implements _ResponseData {
  const _$ResponseDataImpl(
      {@JsonKey(name: "fieldname") this.fieldname,
      @JsonKey(name: "originalname") this.originalname,
      @JsonKey(name: "encoding") this.encoding,
      @JsonKey(name: "mimetype") this.mimetype,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "bucket") this.bucket,
      @JsonKey(name: "key") this.key,
      @JsonKey(name: "acl") this.acl,
      @JsonKey(name: "contentType") this.contentType,
      @JsonKey(name: "contentDisposition") this.contentDisposition,
      @JsonKey(name: "contentEncoding") this.contentEncoding,
      @JsonKey(name: "storageClass") this.storageClass,
      @JsonKey(name: "serverSideEncryption") this.serverSideEncryption,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "etag") this.etag});

  factory _$ResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "fieldname")
  final String? fieldname;
  @override
  @JsonKey(name: "originalname")
  final String? originalname;
  @override
  @JsonKey(name: "encoding")
  final String? encoding;
  @override
  @JsonKey(name: "mimetype")
  final String? mimetype;
  @override
  @JsonKey(name: "size")
  final int? size;
  @override
  @JsonKey(name: "bucket")
  final String? bucket;
  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "acl")
  final String? acl;
  @override
  @JsonKey(name: "contentType")
  final String? contentType;
  @override
  @JsonKey(name: "contentDisposition")
  final dynamic contentDisposition;
  @override
  @JsonKey(name: "contentEncoding")
  final dynamic contentEncoding;
  @override
  @JsonKey(name: "storageClass")
  final String? storageClass;
  @override
  @JsonKey(name: "serverSideEncryption")
  final dynamic serverSideEncryption;
  @override
  @JsonKey(name: "metadata")
  final dynamic metadata;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "etag")
  final String? etag;

  @override
  String toString() {
    return 'ResponseData(fieldname: $fieldname, originalname: $originalname, encoding: $encoding, mimetype: $mimetype, size: $size, bucket: $bucket, key: $key, acl: $acl, contentType: $contentType, contentDisposition: $contentDisposition, contentEncoding: $contentEncoding, storageClass: $storageClass, serverSideEncryption: $serverSideEncryption, metadata: $metadata, location: $location, etag: $etag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataImpl &&
            (identical(other.fieldname, fieldname) ||
                other.fieldname == fieldname) &&
            (identical(other.originalname, originalname) ||
                other.originalname == originalname) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.mimetype, mimetype) ||
                other.mimetype == mimetype) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.acl, acl) || other.acl == acl) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other.contentDisposition, contentDisposition) &&
            const DeepCollectionEquality()
                .equals(other.contentEncoding, contentEncoding) &&
            (identical(other.storageClass, storageClass) ||
                other.storageClass == storageClass) &&
            const DeepCollectionEquality()
                .equals(other.serverSideEncryption, serverSideEncryption) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.etag, etag) || other.etag == etag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fieldname,
      originalname,
      encoding,
      mimetype,
      size,
      bucket,
      key,
      acl,
      contentType,
      const DeepCollectionEquality().hash(contentDisposition),
      const DeepCollectionEquality().hash(contentEncoding),
      storageClass,
      const DeepCollectionEquality().hash(serverSideEncryption),
      const DeepCollectionEquality().hash(metadata),
      location,
      etag);

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      __$$ResponseDataImplCopyWithImpl<_$ResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ResponseData implements ResponseData {
  const factory _ResponseData(
      {@JsonKey(name: "fieldname") final String? fieldname,
      @JsonKey(name: "originalname") final String? originalname,
      @JsonKey(name: "encoding") final String? encoding,
      @JsonKey(name: "mimetype") final String? mimetype,
      @JsonKey(name: "size") final int? size,
      @JsonKey(name: "bucket") final String? bucket,
      @JsonKey(name: "key") final String? key,
      @JsonKey(name: "acl") final String? acl,
      @JsonKey(name: "contentType") final String? contentType,
      @JsonKey(name: "contentDisposition") final dynamic contentDisposition,
      @JsonKey(name: "contentEncoding") final dynamic contentEncoding,
      @JsonKey(name: "storageClass") final String? storageClass,
      @JsonKey(name: "serverSideEncryption") final dynamic serverSideEncryption,
      @JsonKey(name: "metadata") final dynamic metadata,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "etag") final String? etag}) = _$ResponseDataImpl;

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$ResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "fieldname")
  String? get fieldname;
  @override
  @JsonKey(name: "originalname")
  String? get originalname;
  @override
  @JsonKey(name: "encoding")
  String? get encoding;
  @override
  @JsonKey(name: "mimetype")
  String? get mimetype;
  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(name: "bucket")
  String? get bucket;
  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "acl")
  String? get acl;
  @override
  @JsonKey(name: "contentType")
  String? get contentType;
  @override
  @JsonKey(name: "contentDisposition")
  dynamic get contentDisposition;
  @override
  @JsonKey(name: "contentEncoding")
  dynamic get contentEncoding;
  @override
  @JsonKey(name: "storageClass")
  String? get storageClass;
  @override
  @JsonKey(name: "serverSideEncryption")
  dynamic get serverSideEncryption;
  @override
  @JsonKey(name: "metadata")
  dynamic get metadata;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "etag")
  String? get etag;

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
