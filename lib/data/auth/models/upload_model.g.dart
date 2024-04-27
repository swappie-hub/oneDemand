// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadResponseImpl _$$UploadResponseImplFromJson(Map<String, dynamic> json) =>
    _$UploadResponseImpl(
      presignedUrls: (json['presignedUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pollingJwt: json['pollingJwt'] as String?,
      key: json['key'] as String?,
      uploadId: json['uploadId'] as String?,
      fileName: json['fileName'] as String?,
      fileType: json['fileType'] as String?,
      contentDisposition: json['contentDisposition'] as String?,
      chunkCount: json['chunkCount'] as int?,
      chunkSize: json['chunkSize'] as int?,
      pollingUrl: json['pollingUrl'] as String?,
    );

Map<String, dynamic> _$$UploadResponseImplToJson(
        _$UploadResponseImpl instance) =>
    <String, dynamic>{
      'presignedUrls': instance.presignedUrls,
      'pollingJwt': instance.pollingJwt,
      'key': instance.key,
      'uploadId': instance.uploadId,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'contentDisposition': instance.contentDisposition,
      'chunkCount': instance.chunkCount,
      'chunkSize': instance.chunkSize,
      'pollingUrl': instance.pollingUrl,
    };
