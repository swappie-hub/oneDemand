// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserDetailResponseImpl _$$GetUserDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserDetailResponseImpl(
      id: json['_id'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      commentNotifications: json['commentNotifications'] as bool?,
      image: json['image'] as String?,
      imageRequiresValidation: json['imageRequiresValidation'] as bool?,
    );

Map<String, dynamic> _$$GetUserDetailResponseImplToJson(
        _$GetUserDetailResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'commentNotifications': instance.commentNotifications,
      'image': instance.image,
      'imageRequiresValidation': instance.imageRequiresValidation,
    };
