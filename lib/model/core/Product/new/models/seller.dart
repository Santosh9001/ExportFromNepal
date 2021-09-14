class Seller {
  String? name;
  String? logo;
  String? sellerId;
  String? address;
  String? isVerifiedSeller;
  String? isPremiumSeller;

  Seller({
    this.name,
    this.logo,
    this.sellerId,
    this.address,
    this.isVerifiedSeller,
    this.isPremiumSeller,
  });

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
        name: json['name'] as String?,
        logo: json['logo'] as String?,
        sellerId: json['seller_id'] as String?,
        address: json['address'] as String?,
        isVerifiedSeller: json['is_verified_seller'] as String?,
        isPremiumSeller: json['is_premium_seller'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'logo': logo,
        'seller_id': sellerId,
        'address': address,
        'is_verified_seller': isVerifiedSeller,
        'is_premium_seller': isPremiumSeller,
      };
}
