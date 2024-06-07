// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_to_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadImageProfileRequestImpl _$$UploadImageProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadImageProfileRequestImpl(
      userId: json['userId'] as String?,
      imageUrl: json['imageURL'] as String?,
    );

Map<String, dynamic> _$$UploadImageProfileRequestImplToJson(
        _$UploadImageProfileRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'imageURL': instance.imageUrl,
    };

_$UploadImageProfileResponseImpl _$$UploadImageProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadImageProfileResponseImpl(
      requiresValidation: json['requiresValidation'] as bool?,
    );

Map<String, dynamic> _$$UploadImageProfileResponseImplToJson(
        _$UploadImageProfileResponseImpl instance) =>
    <String, dynamic>{
      'requiresValidation': instance.requiresValidation,
    };
