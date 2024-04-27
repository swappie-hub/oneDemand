// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_playlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPlaylistVidieoRequestImpl _$$AddPlaylistVidieoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPlaylistVidieoRequestImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$AddPlaylistVidieoRequestImplToJson(
        _$AddPlaylistVidieoRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'videos': instance.videos,
      'userId': instance.userId,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: json['_id'] as String?,
      vId: json['v_id'] as String?,
      title: json['title'] as String?,
      description: json['description'],
      duration: json['duration'] as int?,
      categoryId: json['CategoryId'] as String?,
      videolink: json['videolink'] as String?,
      thumnailLink: json['thumnailLink'] as String?,
      videoId: json['videoId'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      releaseDateTime: json['releaseDateTime'] == null
          ? null
          : DateTime.parse(json['releaseDateTime'] as String),
      v: json['__v'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoLevel: (json['videoLevel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryDetails: (json['CategoryDetails'] as List<dynamic>?)
          ?.map((e) => CategoryDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagsData: (json['tagsData'] as List<dynamic>?)
          ?.map((e) => TagsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      productsData: (json['productsData'] as List<dynamic>?)
          ?.map((e) => ProductsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: json['label'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'v_id': instance.vId,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'CategoryId': instance.categoryId,
      'videolink': instance.videolink,
      'thumnailLink': instance.thumnailLink,
      'videoId': instance.videoId,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'releaseDateTime': instance.releaseDateTime?.toIso8601String(),
      '__v': instance.v,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'products': instance.products,
      'videoLevel': instance.videoLevel,
      'CategoryDetails': instance.categoryDetails,
      'tagsData': instance.tagsData,
      'productsData': instance.productsData,
      'label': instance.label,
      'value': instance.value,
    };

_$CategoryDetailImpl _$$CategoryDetailImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDetailImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      v: json['__v'] as int?,
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
      v: json['__v'] as int?,
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

_$TagsDatumImpl _$$TagsDatumImplFromJson(Map<String, dynamic> json) =>
    _$TagsDatumImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      v: json['__v'] as int?,
      priority: json['priority'] as int?,
    );

Map<String, dynamic> _$$TagsDatumImplToJson(_$TagsDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      '__v': instance.v,
      'priority': instance.priority,
    };
