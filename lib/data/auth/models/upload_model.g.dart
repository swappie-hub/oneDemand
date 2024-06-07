// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadResponseImpl _$$UploadResponseImplFromJson(Map<String, dynamic> json) =>
    _$UploadResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UploadResponseImplToJson(
        _$UploadResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      fileLink: json['file_link'] as String?,
      cdnLink: json['cdnLink'] as String?,
      responseData: json['responseData'] == null
          ? null
          : ResponseData.fromJson(json['responseData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'file_link': instance.fileLink,
      'cdnLink': instance.cdnLink,
      'responseData': instance.responseData,
    };

_$ResponseDataImpl _$$ResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDataImpl(
      fieldname: json['fieldname'] as String?,
      originalname: json['originalname'] as String?,
      encoding: json['encoding'] as String?,
      mimetype: json['mimetype'] as String?,
      size: json['size'] as int?,
      bucket: json['bucket'] as String?,
      key: json['key'] as String?,
      acl: json['acl'] as String?,
      contentType: json['contentType'] as String?,
      contentDisposition: json['contentDisposition'],
      contentEncoding: json['contentEncoding'],
      storageClass: json['storageClass'] as String?,
      serverSideEncryption: json['serverSideEncryption'],
      metadata: json['metadata'],
      location: json['location'] as String?,
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$$ResponseDataImplToJson(_$ResponseDataImpl instance) =>
    <String, dynamic>{
      'fieldname': instance.fieldname,
      'originalname': instance.originalname,
      'encoding': instance.encoding,
      'mimetype': instance.mimetype,
      'size': instance.size,
      'bucket': instance.bucket,
      'key': instance.key,
      'acl': instance.acl,
      'contentType': instance.contentType,
      'contentDisposition': instance.contentDisposition,
      'contentEncoding': instance.contentEncoding,
      'storageClass': instance.storageClass,
      'serverSideEncryption': instance.serverSideEncryption,
      'metadata': instance.metadata,
      'location': instance.location,
      'etag': instance.etag,
    };
