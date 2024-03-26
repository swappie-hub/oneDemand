// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgetPasswordRequestImpl _$$ForgetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgetPasswordRequestImpl(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ForgetPasswordRequestImplToJson(
        _$ForgetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$ForgetPasswordResponseImpl _$$ForgetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgetPasswordResponseImpl(
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$$ForgetPasswordResponseImplToJson(
        _$ForgetPasswordResponseImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
    };
