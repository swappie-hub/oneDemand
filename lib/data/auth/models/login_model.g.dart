// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      commentNotifications: json['commentNotifications'] as bool?,
      image: json['image'] as String?,
      imageRequiresValidation: json['imageRequiresValidation'] as bool?,
      app: json['app'],
      userId: json['userId'] as String?,
      userType: json['userType'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'commentNotifications': instance.commentNotifications,
      'image': instance.image,
      'imageRequiresValidation': instance.imageRequiresValidation,
      'app': instance.app,
      'userId': instance.userId,
      'userType': instance.userType,
      'message': instance.message,
    };

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      device_token: json['device_token'] as String?,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'device_token': instance.device_token,
    };
