// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_username_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUsernameRequestImpl _$$UpdateUsernameRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUsernameRequestImpl(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateUsernameRequestImplToJson(
        _$UpdateUsernameRequestImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'userId': instance.userId,
    };

_$UpdateUsernameResponseImpl _$$UpdateUsernameResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUsernameResponseImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UpdateUsernameResponseImplToJson(
        _$UpdateUsernameResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
