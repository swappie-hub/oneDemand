// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePasswordRequestImpl _$$UpdatePasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePasswordRequestImpl(
      userId: json['userId'] as String?,
      currentPassword: json['currentPassword'] as String?,
      newPassword: json['newPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$$UpdatePasswordRequestImplToJson(
        _$UpdatePasswordRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };

_$UpdatePasswordResponseImpl _$$UpdatePasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePasswordResponseImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UpdatePasswordResponseImplToJson(
        _$UpdatePasswordResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
