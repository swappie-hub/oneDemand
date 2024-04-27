// To parse this JSON data, do
//
//     final getAllPlaylistResponse = getAllPlaylistResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'fetch_all_playlist_model.freezed.dart';
part 'fetch_all_playlist_model.g.dart';
// To parse this JSON data, do
//
//     final fetchAllPlaylistResponse = fetchAllPlaylistResponseFromJson(jsonString);

List<FetchAllPlaylistResponse> fetchAllPlaylistResponseFromJson(String str) =>
    List<FetchAllPlaylistResponse>.from(
        json.decode(str).map((x) => FetchAllPlaylistResponse.fromJson(x)));

String fetchAllPlaylistResponseToJson(List<FetchAllPlaylistResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FetchAllPlaylistResponse with _$FetchAllPlaylistResponse {
  const factory FetchAllPlaylistResponse({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "v_id") String? vId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "CategoryId") String? categoryId,
    @JsonKey(name: "videolink") String? videolink,
    @JsonKey(name: "thumnailLink") String? thumnailLink,
    @JsonKey(name: "videoId") String? videoId,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "releaseDateTime") DateTime? releaseDateTime,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "products") List<Product>? products,
    @JsonKey(name: "videoLevel") dynamic videoLevel,
    @JsonKey(name: "CategoryDetails") List<CategoryDetail>? categoryDetails,
    @JsonKey(name: "tagsData") List<TagsDatum>? tagsData,
    @JsonKey(name: "productsData") List<ProductsDatum>? productsData,
    @JsonKey(name: "isFeatured") bool? isFeatured,
  }) = _FetchAllPlaylistResponse;

  factory FetchAllPlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchAllPlaylistResponseFromJson(json);
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
class TagsDatum with _$TagsDatum {
  const factory TagsDatum({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "priority") int? priority,
  }) = _TagsDatum;

  factory TagsDatum.fromJson(Map<String, dynamic> json) =>
      _$TagsDatumFromJson(json);
}
