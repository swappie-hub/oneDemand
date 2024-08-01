// To parse this JSON data, do
//
//     final videoDetailResponse = videoDetailResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'video_detail_model.freezed.dart';
part 'video_detail_model.g.dart';

List<VideoDetailResponse> videoDetailResponseFromJson(String str) =>
    List<VideoDetailResponse>.from(
        json.decode(str).map((x) => VideoDetailResponse.fromJson(x)));

String videoDetailResponseToJson(List<VideoDetailResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class VideoDetailResponse with _$VideoDetailResponse {
  const factory VideoDetailResponse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "v_id") String? vId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "CategoryId") String? categoryId,
    @JsonKey(name: "videoLevel") List<String>? videoLevel,
    @JsonKey(name: "videoId") String? videoId,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "products") List<Product>? products,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "videolink") String? videolink,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
    @JsonKey(name: "isFeatured") bool? isFeatured,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
    @JsonKey(name: "tagsDetails") List<TagsDetail>? tagsDetails,
    @JsonKey(name: "productsData") List<ProductsDatum>? productsData,
    @JsonKey(name: "savedvideo") bool? savedvideo,
  }) = _VideoDetailResponse;

  factory VideoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailResponseFromJson(json);
}

@freezed
class CategoryDetail with _$CategoryDetail {
  const factory CategoryDetail({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "__v") int? v,
  }) = _CategoryDetail;

  factory CategoryDetail.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "_id") String? id,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductsDatum with _$ProductsDatum {
  const factory ProductsDatum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "id") String? productsDatumId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "handle") String? handle,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "variants") List<Variant>? variants,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "__v") int? v,
  }) = _ProductsDatum;

  factory ProductsDatum.fromJson(Map<String, dynamic> json) =>
      _$ProductsDatumFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "src") String? src,
    @JsonKey(name: "_id") String? id,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Variant with _$Variant {
  const factory Variant({
    @JsonKey(name: "id") String? variantId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "_id") String? id,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: "referalId") String? referalId,
    @JsonKey(name: "_id") String? id,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class TagsDetail with _$TagsDetail {
  const factory TagsDetail({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "priority") int? priority,
  }) = _TagsDetail;

  factory TagsDetail.fromJson(Map<String, dynamic> json) =>
      _$TagsDetailFromJson(json);
}
