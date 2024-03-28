// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateEmailRequestImpl _$$UpdateEmailRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEmailRequestImpl(
      email: json['email'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateEmailRequestImplToJson(
        _$UpdateEmailRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userId': instance.userId,
    };

_$UpdateEmailResponseImpl _$$UpdateEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEmailResponseImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UpdateEmailResponseImplToJson(
        _$UpdateEmailResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
