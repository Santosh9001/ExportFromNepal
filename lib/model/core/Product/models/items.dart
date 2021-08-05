import 'package:flutter/foundation.dart';

@immutable
class Items {
  final String? id;
  final String? sku;
  final String? name;
  final num? finalPrice;
  final num? price;
  final String? image;
  final String? sellerName;
  final String? sellerLogo;

  const Items({
    this.id,
    this.sku,
    this.name,
    this.finalPrice,
    this.price,
    this.image,
    this.sellerName,
    this.sellerLogo,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json['id'] as String?,
        sku: json['sku'] as String?,
        name: json['name'] as String?,
        finalPrice: json['final_price'] as num?,
        price: json['price'] as num?,
        image: json['image'] as String?,
        sellerName: json['seller_name'] as String?,
        sellerLogo: json['seller_logo'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'sku': sku,
        'name': name,
        'final_price': finalPrice,
        'price': price,
        'image': image,
        'seller_name': sellerName,
        'seller_logo': sellerLogo,
      };
}
