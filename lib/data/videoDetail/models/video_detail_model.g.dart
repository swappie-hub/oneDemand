// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoDetailResponseImpl _$$VideoDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoDetailResponseImpl(
      id: json['_id'] as String?,
      vId: json['v_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryId: json['CategoryId'] as String?,
      videoLevel: (json['videoLevel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoId: json['videoId'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      videolink: json['videolink'] as String?,
      thumnailLink: json['thumnailLink'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      releaseDateTime: json['releaseDateTime'] == null
          ? null
          : DateTime.parse(json['releaseDateTime'] as String),
      isFeatured: json['isFeatured'] as bool?,
      v: (json['__v'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      categoryDetails: (json['CategoryDetails'] as List<dynamic>?)
          ?.map((e) => CategoryDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagsDetails: (json['tagsDetails'] as List<dynamic>?)
          ?.map((e) => TagsDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      productsData: (json['productsData'] as List<dynamic>?)
          ?.map((e) => ProductsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      savedvideo: json['savedvideo'] as bool?,
    );

Map<String, dynamic> _$$VideoDetailResponseImplToJson(
        _$VideoDetailResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'v_id': instance.vId,
      'title': instance.title,
      'description': instance.description,
      'CategoryId': instance.categoryId,
      'videoLevel': instance.videoLevel,
      'videoId': instance.videoId,
      'tags': instance.tags,
      'products': instance.products,
      'createdAt': instance.createdAt?.toIso8601String(),
      'videolink': instance.videolink,
      'thumnailLink': instance.thumnailLink,
      'duration': instance.duration,
      'releaseDateTime': instance.releaseDateTime?.toIso8601String(),
      'isFeatured': instance.isFeatured,
      '__v': instance.v,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'CategoryDetails': instance.categoryDetails,
      'tagsDetails': instance.tagsDetails,
      'productsData': instance.productsData,
      'savedvideo': instance.savedvideo,
    };

_$CategoryDetailImpl _$$CategoryDetailImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CategoryDetailImplToJson(
        _$CategoryDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      '__v': instance.v,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
    };

_$ProductsDatumImpl _$$ProductsDatumImplFromJson(Map<String, dynamic> json) =>
    _$ProductsDatumImpl(
      id: json['_id'] as String?,
      productsDatumId: json['id'] as String?,
      title: json['title'] as String?,
      handle: json['handle'] as String?,
      status: json['status'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductsDatumImplToJson(_$ProductsDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.productsDatumId,
      'title': instance.title,
      'handle': instance.handle,
      'status': instance.status,
      'variants': instance.variants,
      'images': instance.images,
      '__v': instance.v,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      src: json['src'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
      '_id': instance.id,
    };

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      variantId: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) =>
    <String, dynamic>{
      'id': instance.variantId,
      'title': instance.title,
      'price': instance.price,
      '_id': instance.id,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      referalId: json['referalId'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'referalId': instance.referalId,
      '_id': instance.id,
    };

_$TagsDetailImpl _$$TagsDetailImplFromJson(Map<String, dynamic> json) =>
    _$TagsDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TagsDetailImplToJson(_$TagsDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };
