import 'package:flutter/foundation.dart';

import 'items.dart';

@immutable
class Product {
  final List<Items>? items;
  final dynamic searchCriteria;
  final int? totalCount;

  const Product({this.items, this.searchCriteria, this.totalCount});

  @override
  String toString() {
    return 'Product(items: $items, searchCriteria: $searchCriteria, totalCount: $totalCount)';
  }

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
            .toList(),
        searchCriteria: json['search_criteria'],
        totalCount: json['total_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
        'search_criteria': searchCriteria,
        'total_count': totalCount,
      };

  Product copyWith({
    List<Items>? items,
    dynamic searchCriteria,
    int? totalCount,
  }) {
    return Product(
      items: items ?? this.items,
      searchCriteria: searchCriteria ?? this.searchCriteria,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        other.searchCriteria == searchCriteria &&
        other.totalCount == totalCount &&
        listEquals(other.items, items);
  }

  @override
  int get hashCode =>
      items.hashCode ^ searchCriteria.hashCode ^ totalCount.hashCode;
}
