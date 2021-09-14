import 'product.dart';
import 'related_product.dart';
import 'reviews.dart';

class Data {
  Product? product;
  Reviews? reviews;
  List<RelatedProduct>? relatedProduct;

  Data({this.product, this.reviews, this.relatedProduct});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
        reviews: json['reviews'] == null
            ? null
            : Reviews.fromJson(json['reviews'] as Map<String, dynamic>),
        relatedProduct: (json['related_product'] as List<dynamic>?)
            ?.map((e) => RelatedProduct.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'product': product?.toJson(),
        'reviews': reviews?.toJson(),
        'related_product': relatedProduct?.map((e) => e.toJson()).toList(),
      };
}
