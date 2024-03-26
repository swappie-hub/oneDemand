// To parse this JSON data, do
//
//     final subscriptionResponse = subscriptionResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

SubscriptionResponse subscriptionResponseFromJson(String str) =>
    SubscriptionResponse.fromJson(json.decode(str));

String subscriptionResponseToJson(SubscriptionResponse data) =>
    json.encode(data.toJson());

@freezed
class SubscriptionResponse with _$SubscriptionResponse {
  const factory SubscriptionResponse({
    @JsonKey(name: "list") List<ListElement>? list,
  }) = _SubscriptionResponse;

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    @JsonKey(name: "item_price") ItemPrice? itemPrice,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}

@freezed
class ItemPrice with _$ItemPrice {
  const factory ItemPrice({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "item_family_id") String? itemFamilyId,
    @JsonKey(name: "item_id") String? itemId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "external_name") String? externalName,
    @JsonKey(name: "pricing_model") String? pricingModel,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "period") int? period,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "period_unit") String? periodUnit,
    @JsonKey(name: "trial_period") int? trialPeriod,
    @JsonKey(name: "trial_period_unit") String? trialPeriodUnit,
    @JsonKey(name: "free_quantity") int? freeQuantity,
    @JsonKey(name: "channel") String? channel,
    @JsonKey(name: "resource_version") int? resourceVersion,
    @JsonKey(name: "updated_at") int? updatedAt,
    @JsonKey(name: "created_at") int? createdAt,
    @JsonKey(name: "is_taxable") bool? isTaxable,
    @JsonKey(name: "metadata") Metadata? metadata,
    @JsonKey(name: "item_type") String? itemType,
    @JsonKey(name: "show_description_in_invoices")
    bool? showDescriptionInInvoices,
    @JsonKey(name: "show_description_in_quotes") bool? showDescriptionInQuotes,
    @JsonKey(name: "object") String? object,
  }) = _ItemPrice;

  factory ItemPrice.fromJson(Map<String, dynamic> json) =>
      _$ItemPriceFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata() = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
