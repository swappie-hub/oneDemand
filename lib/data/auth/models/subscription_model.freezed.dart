// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionResponse _$SubscriptionResponseFromJson(Map<String, dynamic> json) {
  return _SubscriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionResponse {
  @JsonKey(name: "list")
  List<ListElement>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionResponseCopyWith<SubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionResponseCopyWith<$Res> {
  factory $SubscriptionResponseCopyWith(SubscriptionResponse value,
          $Res Function(SubscriptionResponse) then) =
      _$SubscriptionResponseCopyWithImpl<$Res, SubscriptionResponse>;
  @useResult
  $Res call({@JsonKey(name: "list") List<ListElement>? list});
}

/// @nodoc
class _$SubscriptionResponseCopyWithImpl<$Res,
        $Val extends SubscriptionResponse>
    implements $SubscriptionResponseCopyWith<$Res> {
  _$SubscriptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionResponseImplCopyWith<$Res>
    implements $SubscriptionResponseCopyWith<$Res> {
  factory _$$SubscriptionResponseImplCopyWith(_$SubscriptionResponseImpl value,
          $Res Function(_$SubscriptionResponseImpl) then) =
      __$$SubscriptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<ListElement>? list});
}

/// @nodoc
class __$$SubscriptionResponseImplCopyWithImpl<$Res>
    extends _$SubscriptionResponseCopyWithImpl<$Res, _$SubscriptionResponseImpl>
    implements _$$SubscriptionResponseImplCopyWith<$Res> {
  __$$SubscriptionResponseImplCopyWithImpl(_$SubscriptionResponseImpl _value,
      $Res Function(_$SubscriptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$SubscriptionResponseImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionResponseImpl implements _SubscriptionResponse {
  const _$SubscriptionResponseImpl(
      {@JsonKey(name: "list") final List<ListElement>? list})
      : _list = list;

  factory _$SubscriptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionResponseImplFromJson(json);

  final List<ListElement>? _list;
  @override
  @JsonKey(name: "list")
  List<ListElement>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubscriptionResponse(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionResponseImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionResponseImplCopyWith<_$SubscriptionResponseImpl>
      get copyWith =>
          __$$SubscriptionResponseImplCopyWithImpl<_$SubscriptionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionResponseImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionResponse implements SubscriptionResponse {
  const factory _SubscriptionResponse(
          {@JsonKey(name: "list") final List<ListElement>? list}) =
      _$SubscriptionResponseImpl;

  factory _SubscriptionResponse.fromJson(Map<String, dynamic> json) =
      _$SubscriptionResponseImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<ListElement>? get list;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionResponseImplCopyWith<_$SubscriptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  @JsonKey(name: "item_price")
  ItemPrice? get itemPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call({@JsonKey(name: "item_price") ItemPrice? itemPrice});

  $ItemPriceCopyWith<$Res>? get itemPrice;
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemPrice = freezed,
  }) {
    return _then(_value.copyWith(
      itemPrice: freezed == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as ItemPrice?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemPriceCopyWith<$Res>? get itemPrice {
    if (_value.itemPrice == null) {
      return null;
    }

    return $ItemPriceCopyWith<$Res>(_value.itemPrice!, (value) {
      return _then(_value.copyWith(itemPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
          _$ListElementImpl value, $Res Function(_$ListElementImpl) then) =
      __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "item_price") ItemPrice? itemPrice});

  @override
  $ItemPriceCopyWith<$Res>? get itemPrice;
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
      _$ListElementImpl _value, $Res Function(_$ListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemPrice = freezed,
  }) {
    return _then(_$ListElementImpl(
      itemPrice: freezed == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as ItemPrice?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl({@JsonKey(name: "item_price") this.itemPrice});

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  @JsonKey(name: "item_price")
  final ItemPrice? itemPrice;

  @override
  String toString() {
    return 'ListElement(itemPrice: $itemPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
          {@JsonKey(name: "item_price") final ItemPrice? itemPrice}) =
      _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  @JsonKey(name: "item_price")
  ItemPrice? get itemPrice;
  @override
  @JsonKey(ignore: true)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemPrice _$ItemPriceFromJson(Map<String, dynamic> json) {
  return _ItemPrice.fromJson(json);
}

/// @nodoc
mixin _$ItemPrice {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "item_family_id")
  String? get itemFamilyId => throw _privateConstructorUsedError;
  @JsonKey(name: "item_id")
  String? get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "external_name")
  String? get externalName => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_model")
  String? get pricingModel => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "period")
  int? get period => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "period_unit")
  String? get periodUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "trial_period")
  int? get trialPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: "trial_period_unit")
  String? get trialPeriodUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "free_quantity")
  int? get freeQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "channel")
  String? get channel => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_version")
  int? get resourceVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_taxable")
  bool? get isTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "item_type")
  String? get itemType => throw _privateConstructorUsedError;
  @JsonKey(name: "show_description_in_invoices")
  bool? get showDescriptionInInvoices => throw _privateConstructorUsedError;
  @JsonKey(name: "show_description_in_quotes")
  bool? get showDescriptionInQuotes => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemPriceCopyWith<ItemPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPriceCopyWith<$Res> {
  factory $ItemPriceCopyWith(ItemPrice value, $Res Function(ItemPrice) then) =
      _$ItemPriceCopyWithImpl<$Res, ItemPrice>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "show_description_in_quotes")
      bool? showDescriptionInQuotes,
      @JsonKey(name: "object") String? object});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$ItemPriceCopyWithImpl<$Res, $Val extends ItemPrice>
    implements $ItemPriceCopyWith<$Res> {
  _$ItemPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? itemFamilyId = freezed,
    Object? itemId = freezed,
    Object? status = freezed,
    Object? externalName = freezed,
    Object? pricingModel = freezed,
    Object? price = freezed,
    Object? period = freezed,
    Object? currencyCode = freezed,
    Object? periodUnit = freezed,
    Object? trialPeriod = freezed,
    Object? trialPeriodUnit = freezed,
    Object? freeQuantity = freezed,
    Object? channel = freezed,
    Object? resourceVersion = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? isTaxable = freezed,
    Object? metadata = freezed,
    Object? itemType = freezed,
    Object? showDescriptionInInvoices = freezed,
    Object? showDescriptionInQuotes = freezed,
    Object? object = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      itemFamilyId: freezed == itemFamilyId
          ? _value.itemFamilyId
          : itemFamilyId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      externalName: freezed == externalName
          ? _value.externalName
          : externalName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingModel: freezed == pricingModel
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      periodUnit: freezed == periodUnit
          ? _value.periodUnit
          : periodUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      trialPeriod: freezed == trialPeriod
          ? _value.trialPeriod
          : trialPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      trialPeriodUnit: freezed == trialPeriodUnit
          ? _value.trialPeriodUnit
          : trialPeriodUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      freeQuantity: freezed == freeQuantity
          ? _value.freeQuantity
          : freeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceVersion: freezed == resourceVersion
          ? _value.resourceVersion
          : resourceVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      isTaxable: freezed == isTaxable
          ? _value.isTaxable
          : isTaxable // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      showDescriptionInInvoices: freezed == showDescriptionInInvoices
          ? _value.showDescriptionInInvoices
          : showDescriptionInInvoices // ignore: cast_nullable_to_non_nullable
              as bool?,
      showDescriptionInQuotes: freezed == showDescriptionInQuotes
          ? _value.showDescriptionInQuotes
          : showDescriptionInQuotes // ignore: cast_nullable_to_non_nullable
              as bool?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemPriceImplCopyWith<$Res>
    implements $ItemPriceCopyWith<$Res> {
  factory _$$ItemPriceImplCopyWith(
          _$ItemPriceImpl value, $Res Function(_$ItemPriceImpl) then) =
      __$$ItemPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "show_description_in_quotes")
      bool? showDescriptionInQuotes,
      @JsonKey(name: "object") String? object});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$ItemPriceImplCopyWithImpl<$Res>
    extends _$ItemPriceCopyWithImpl<$Res, _$ItemPriceImpl>
    implements _$$ItemPriceImplCopyWith<$Res> {
  __$$ItemPriceImplCopyWithImpl(
      _$ItemPriceImpl _value, $Res Function(_$ItemPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? itemFamilyId = freezed,
    Object? itemId = freezed,
    Object? status = freezed,
    Object? externalName = freezed,
    Object? pricingModel = freezed,
    Object? price = freezed,
    Object? period = freezed,
    Object? currencyCode = freezed,
    Object? periodUnit = freezed,
    Object? trialPeriod = freezed,
    Object? trialPeriodUnit = freezed,
    Object? freeQuantity = freezed,
    Object? channel = freezed,
    Object? resourceVersion = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? isTaxable = freezed,
    Object? metadata = freezed,
    Object? itemType = freezed,
    Object? showDescriptionInInvoices = freezed,
    Object? showDescriptionInQuotes = freezed,
    Object? object = freezed,
  }) {
    return _then(_$ItemPriceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      itemFamilyId: freezed == itemFamilyId
          ? _value.itemFamilyId
          : itemFamilyId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      externalName: freezed == externalName
          ? _value.externalName
          : externalName // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingModel: freezed == pricingModel
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      periodUnit: freezed == periodUnit
          ? _value.periodUnit
          : periodUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      trialPeriod: freezed == trialPeriod
          ? _value.trialPeriod
          : trialPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      trialPeriodUnit: freezed == trialPeriodUnit
          ? _value.trialPeriodUnit
          : trialPeriodUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      freeQuantity: freezed == freeQuantity
          ? _value.freeQuantity
          : freeQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceVersion: freezed == resourceVersion
          ? _value.resourceVersion
          : resourceVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      isTaxable: freezed == isTaxable
          ? _value.isTaxable
          : isTaxable // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      showDescriptionInInvoices: freezed == showDescriptionInInvoices
          ? _value.showDescriptionInInvoices
          : showDescriptionInInvoices // ignore: cast_nullable_to_non_nullable
              as bool?,
      showDescriptionInQuotes: freezed == showDescriptionInQuotes
          ? _value.showDescriptionInQuotes
          : showDescriptionInQuotes // ignore: cast_nullable_to_non_nullable
              as bool?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemPriceImpl implements _ItemPrice {
  const _$ItemPriceImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "item_family_id") this.itemFamilyId,
      @JsonKey(name: "item_id") this.itemId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "external_name") this.externalName,
      @JsonKey(name: "pricing_model") this.pricingModel,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "period") this.period,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "period_unit") this.periodUnit,
      @JsonKey(name: "trial_period") this.trialPeriod,
      @JsonKey(name: "trial_period_unit") this.trialPeriodUnit,
      @JsonKey(name: "free_quantity") this.freeQuantity,
      @JsonKey(name: "channel") this.channel,
      @JsonKey(name: "resource_version") this.resourceVersion,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "is_taxable") this.isTaxable,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "item_type") this.itemType,
      @JsonKey(name: "show_description_in_invoices")
      this.showDescriptionInInvoices,
      @JsonKey(name: "show_description_in_quotes") this.showDescriptionInQuotes,
      @JsonKey(name: "object") this.object});

  factory _$ItemPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemPriceImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "item_family_id")
  final String? itemFamilyId;
  @override
  @JsonKey(name: "item_id")
  final String? itemId;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "external_name")
  final String? externalName;
  @override
  @JsonKey(name: "pricing_model")
  final String? pricingModel;
  @override
  @JsonKey(name: "price")
  final int? price;
  @override
  @JsonKey(name: "period")
  final int? period;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "period_unit")
  final String? periodUnit;
  @override
  @JsonKey(name: "trial_period")
  final int? trialPeriod;
  @override
  @JsonKey(name: "trial_period_unit")
  final String? trialPeriodUnit;
  @override
  @JsonKey(name: "free_quantity")
  final int? freeQuantity;
  @override
  @JsonKey(name: "channel")
  final String? channel;
  @override
  @JsonKey(name: "resource_version")
  final int? resourceVersion;
  @override
  @JsonKey(name: "updated_at")
  final int? updatedAt;
  @override
  @JsonKey(name: "created_at")
  final int? createdAt;
  @override
  @JsonKey(name: "is_taxable")
  final bool? isTaxable;
  @override
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @override
  @JsonKey(name: "item_type")
  final String? itemType;
  @override
  @JsonKey(name: "show_description_in_invoices")
  final bool? showDescriptionInInvoices;
  @override
  @JsonKey(name: "show_description_in_quotes")
  final bool? showDescriptionInQuotes;
  @override
  @JsonKey(name: "object")
  final String? object;

  @override
  String toString() {
    return 'ItemPrice(id: $id, name: $name, itemFamilyId: $itemFamilyId, itemId: $itemId, status: $status, externalName: $externalName, pricingModel: $pricingModel, price: $price, period: $period, currencyCode: $currencyCode, periodUnit: $periodUnit, trialPeriod: $trialPeriod, trialPeriodUnit: $trialPeriodUnit, freeQuantity: $freeQuantity, channel: $channel, resourceVersion: $resourceVersion, updatedAt: $updatedAt, createdAt: $createdAt, isTaxable: $isTaxable, metadata: $metadata, itemType: $itemType, showDescriptionInInvoices: $showDescriptionInInvoices, showDescriptionInQuotes: $showDescriptionInQuotes, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemPriceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.itemFamilyId, itemFamilyId) ||
                other.itemFamilyId == itemFamilyId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.externalName, externalName) ||
                other.externalName == externalName) &&
            (identical(other.pricingModel, pricingModel) ||
                other.pricingModel == pricingModel) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.periodUnit, periodUnit) ||
                other.periodUnit == periodUnit) &&
            (identical(other.trialPeriod, trialPeriod) ||
                other.trialPeriod == trialPeriod) &&
            (identical(other.trialPeriodUnit, trialPeriodUnit) ||
                other.trialPeriodUnit == trialPeriodUnit) &&
            (identical(other.freeQuantity, freeQuantity) ||
                other.freeQuantity == freeQuantity) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.resourceVersion, resourceVersion) ||
                other.resourceVersion == resourceVersion) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isTaxable, isTaxable) ||
                other.isTaxable == isTaxable) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.showDescriptionInInvoices,
                    showDescriptionInInvoices) ||
                other.showDescriptionInInvoices == showDescriptionInInvoices) &&
            (identical(
                    other.showDescriptionInQuotes, showDescriptionInQuotes) ||
                other.showDescriptionInQuotes == showDescriptionInQuotes) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        itemFamilyId,
        itemId,
        status,
        externalName,
        pricingModel,
        price,
        period,
        currencyCode,
        periodUnit,
        trialPeriod,
        trialPeriodUnit,
        freeQuantity,
        channel,
        resourceVersion,
        updatedAt,
        createdAt,
        isTaxable,
        metadata,
        itemType,
        showDescriptionInInvoices,
        showDescriptionInQuotes,
        object
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemPriceImplCopyWith<_$ItemPriceImpl> get copyWith =>
      __$$ItemPriceImplCopyWithImpl<_$ItemPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemPriceImplToJson(
      this,
    );
  }
}

abstract class _ItemPrice implements ItemPrice {
  const factory _ItemPrice(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "item_family_id") final String? itemFamilyId,
      @JsonKey(name: "item_id") final String? itemId,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "external_name") final String? externalName,
      @JsonKey(name: "pricing_model") final String? pricingModel,
      @JsonKey(name: "price") final int? price,
      @JsonKey(name: "period") final int? period,
      @JsonKey(name: "currency_code") final String? currencyCode,
      @JsonKey(name: "period_unit") final String? periodUnit,
      @JsonKey(name: "trial_period") final int? trialPeriod,
      @JsonKey(name: "trial_period_unit") final String? trialPeriodUnit,
      @JsonKey(name: "free_quantity") final int? freeQuantity,
      @JsonKey(name: "channel") final String? channel,
      @JsonKey(name: "resource_version") final int? resourceVersion,
      @JsonKey(name: "updated_at") final int? updatedAt,
      @JsonKey(name: "created_at") final int? createdAt,
      @JsonKey(name: "is_taxable") final bool? isTaxable,
      @JsonKey(name: "metadata") final Metadata? metadata,
      @JsonKey(name: "item_type") final String? itemType,
      @JsonKey(name: "show_description_in_invoices")
      final bool? showDescriptionInInvoices,
      @JsonKey(name: "show_description_in_quotes")
      final bool? showDescriptionInQuotes,
      @JsonKey(name: "object") final String? object}) = _$ItemPriceImpl;

  factory _ItemPrice.fromJson(Map<String, dynamic> json) =
      _$ItemPriceImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "item_family_id")
  String? get itemFamilyId;
  @override
  @JsonKey(name: "item_id")
  String? get itemId;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "external_name")
  String? get externalName;
  @override
  @JsonKey(name: "pricing_model")
  String? get pricingModel;
  @override
  @JsonKey(name: "price")
  int? get price;
  @override
  @JsonKey(name: "period")
  int? get period;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "period_unit")
  String? get periodUnit;
  @override
  @JsonKey(name: "trial_period")
  int? get trialPeriod;
  @override
  @JsonKey(name: "trial_period_unit")
  String? get trialPeriodUnit;
  @override
  @JsonKey(name: "free_quantity")
  int? get freeQuantity;
  @override
  @JsonKey(name: "channel")
  String? get channel;
  @override
  @JsonKey(name: "resource_version")
  int? get resourceVersion;
  @override
  @JsonKey(name: "updated_at")
  int? get updatedAt;
  @override
  @JsonKey(name: "created_at")
  int? get createdAt;
  @override
  @JsonKey(name: "is_taxable")
  bool? get isTaxable;
  @override
  @JsonKey(name: "metadata")
  Metadata? get metadata;
  @override
  @JsonKey(name: "item_type")
  String? get itemType;
  @override
  @JsonKey(name: "show_description_in_invoices")
  bool? get showDescriptionInInvoices;
  @override
  @JsonKey(name: "show_description_in_quotes")
  bool? get showDescriptionInQuotes;
  @override
  @JsonKey(name: "object")
  String? get object;
  @override
  @JsonKey(ignore: true)
  _$$ItemPriceImplCopyWith<_$ItemPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl();

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  String toString() {
    return 'Metadata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MetadataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata() = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;
}
