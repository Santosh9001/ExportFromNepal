import 'package:flutter/foundation.dart';

import 'custom_attributes.dart';

@immutable
class Items {
  final num? id;
  final String? sku;
  final String? name;
  final num? attributeSetId;
  final num? price;
  final num? status;
  final num? visibility;
  final String? typeId;
  final String? createdAt;
  final String? updatedAt;
  final num? weight;
  // final List<String>? productLinks;
  // final List<String>? tierPrices;
  // final List<CustomAttributes>? customAttributes;

  const Items({
    this.id,
    this.sku,
    this.name,
    this.attributeSetId,
    this.price,
    this.status,
    this.visibility,
    this.typeId,
    this.createdAt,
    this.updatedAt,
    this.weight,
    // this.productLinks,
    // this.tierPrices,
    // this.customAttributes,
  });

  @override
  String toString() {
    return 'Items(id: $id, sku: $sku, name: $name, attributeSetId: $attributeSetId, price: $price, status: $status, visibility: $visibility, typeId: $typeId, createdAt: $createdAt, updatedAt: $updatedAt, weight: $weight';
  }

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json['id'] as num?,
        sku: json['sku'] as String?,
        name: json['name'] as String?,
        attributeSetId: json['attribute_set_id'] as num?,
        price: json['price'] as num?,
        status: json['status'] as num?,
        visibility: json['visibility'] as num?,
        typeId: json['type_id'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        weight: json['weight'] as num?,
        // productLinks: json['product_links'] as List<String>?,
        // tierPrices: json['tier_prices'] as List<String>?,
        // customAttributes: (json['custom_attributes'] as List<dynamic>?)
        //     ?.map((e) => CustomAttributes.fromJson(e as Map<String, dynamic>))
        //     .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'sku': sku,
        'name': name,
        'attribute_set_id': attributeSetId,
        'price': price,
        'status': status,
        'visibility': visibility,
        'type_id': typeId,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'weight': weight,
        // 'product_links': productLinks,
        // 'tier_prices': tierPrices,
        // 'custom_attributes': customAttributes?.map((e) => e.toJson()).toList(),
      };

  Items copyWith({
    num? id,
    String? sku,
    String? name,
    num? attributeSetId,
    num? price,
    num? status,
    num? visibility,
    String? typeId,
    String? createdAt,
    String? updatedAt,
    num? weight,
    List<String>? productLinks,
    List<String>? tierPrices,
    // List<CustomAttributes>? customAttributes,
  }) {
    return Items(
      id: id ?? this.id,
      sku: sku ?? this.sku,
      name: name ?? this.name,
      attributeSetId: attributeSetId ?? this.attributeSetId,
      price: price ?? this.price,
      status: status ?? this.status,
      visibility: visibility ?? this.visibility,
      typeId: typeId ?? this.typeId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      weight: weight ?? this.weight,
      // productLinks: productLinks ?? this.productLinks,
      // tierPrices: tierPrices ?? this.tierPrices,
      // customAttributes: customAttributes ?? this.customAttributes,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Items &&
        // listEquals(other.productLinks, productLinks) &&
        // listEquals(other.tierPrices, tierPrices) &&
        // listEquals(other.customAttributes, customAttributes) &&
        other.id == id &&
        other.sku == sku &&
        other.name == name &&
        other.attributeSetId == attributeSetId &&
        other.price == price &&
        other.status == status &&
        other.visibility == visibility &&
        other.typeId == typeId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.weight == weight;
  }
}
