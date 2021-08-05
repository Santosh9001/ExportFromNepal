import 'package:flutter/foundation.dart';

import 'items.dart';

@immutable
class Product {
  final List<Items>? items;

  const Product({this.items});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
