// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupRequestImpl _$$SignupRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignupRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
      devicetoken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$SignupRequestImplToJson(_$SignupRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'device_token': instance.devicetoken,
    };

_$SignupResponseImpl _$$SignupResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignupResponseImpl(
      message: json['message'] as String?,
      role: json['role'] as String?,
      userId: json['userId'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$SignupResponseImplToJson(
        _$SignupResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'role': instance.role,
      'userId': instance.userId,
      'email': instance.email,
    };
