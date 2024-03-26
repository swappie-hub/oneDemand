// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionResponseImpl _$$SubscriptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionResponseImpl(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscriptionResponseImplToJson(
        _$SubscriptionResponseImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      itemPrice: json['item_price'] == null
          ? null
          : ItemPrice.fromJson(json['item_price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'item_price': instance.itemPrice,
    };

_$ItemPriceImpl _$$ItemPriceImplFromJson(Map<String, dynamic> json) =>
    _$ItemPriceImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      itemFamilyId: json['item_family_id'] as String?,
      itemId: json['item_id'] as String?,
      status: json['status'] as String?,
      externalName: json['external_name'] as String?,
      pricingModel: json['pricing_model'] as String?,
      price: json['price'] as int?,
      period: json['period'] as int?,
      currencyCode: json['currency_code'] as String?,
      periodUnit: json['period_unit'] as String?,
      trialPeriod: json['trial_period'] as int?,
      trialPeriodUnit: json['trial_period_unit'] as String?,
      freeQuantity: json['free_quantity'] as int?,
      channel: json['channel'] as String?,
      resourceVersion: json['resource_version'] as int?,
      updatedAt: json['updated_at'] as int?,
      createdAt: json['created_at'] as int?,
      isTaxable: json['is_taxable'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      itemType: json['item_type'] as String?,
      showDescriptionInInvoices: json['show_description_in_invoices'] as bool?,
      showDescriptionInQuotes: json['show_description_in_quotes'] as bool?,
      object: json['object'] as String?,
    );

Map<String, dynamic> _$$ItemPriceImplToJson(_$ItemPriceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'item_family_id': instance.itemFamilyId,
      'item_id': instance.itemId,
      'status': instance.status,
      'external_name': instance.externalName,
      'pricing_model': instance.pricingModel,
      'price': instance.price,
      'period': instance.period,
      'currency_code': instance.currencyCode,
      'period_unit': instance.periodUnit,
      'trial_period': instance.trialPeriod,
      'trial_period_unit': instance.trialPeriodUnit,
      'free_quantity': instance.freeQuantity,
      'channel': instance.channel,
      'resource_version': instance.resourceVersion,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'is_taxable': instance.isTaxable,
      'metadata': instance.metadata,
      'item_type': instance.itemType,
      'show_description_in_invoices': instance.showDescriptionInInvoices,
      'show_description_in_quotes': instance.showDescriptionInQuotes,
      'object': instance.object,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl();

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{};
