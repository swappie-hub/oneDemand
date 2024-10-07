// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTagsResponseImpl _$$GetTagsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTagsResponseImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetTagsResponseImplToJson(
        _$GetTagsResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };
