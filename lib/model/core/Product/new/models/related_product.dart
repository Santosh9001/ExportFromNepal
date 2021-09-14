class RelatedProduct {
  String? id;
  String? sku;
  String? name;
  dynamic? finalPrice;
  dynamic? price;
  String? image;
  String? sellerName;
  String? sellerLogo;

  RelatedProduct({
    this.id,
    this.sku,
    this.name,
    this.finalPrice,
    this.price,
    this.image,
    this.sellerName,
    this.sellerLogo,
  });

  factory RelatedProduct.fromJson(Map<String, dynamic> json) => RelatedProduct(
        id: json['id'] as String?,
        sku: json['sku'] as String?,
        name: json['name'] as String?,
        finalPrice: json['final_price'] as dynamic?,
        price: json['price'] as dynamic?,
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
