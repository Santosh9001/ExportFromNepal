import 'custom_attribute.dart';
import 'media_gallery_entry.dart';
import 'seller.dart';

class Product {
  String? id;
  String? name;
  String? sku;
  num? price;
  num? finalPrice;
  num? specialPrice;
  String? specialFromDate;
  String? specialToDate;
  String? isFeatured;
  String? status;
  String? typeId;
  String? attributeSetId;
  String? visibility;
  num? weight;
  List<MediaGalleryEntry>? mediaGalleryEntries;
  List<dynamic>? tierPrices;
  String? description;
  String? shortDescription;
  String? inStock;
  List<String>? supplierType;
  // List<CustomAttribute>? customAttribute;
  Seller? seller;
  List<dynamic>? configurableOptions;
  List<dynamic>? configurableOptionsLink;

  Product({
    this.id,
    this.name,
    this.sku,
    this.price,
    this.finalPrice,
    this.specialPrice,
    this.specialFromDate,
    this.specialToDate,
    this.isFeatured,
    this.status,
    this.typeId,
    this.attributeSetId,
    this.visibility,
    this.weight,
    this.mediaGalleryEntries,
    this.tierPrices,
    this.description,
    this.shortDescription,
    this.inStock,
    this.supplierType,
    // this.customAttribute,
    this.seller,
    this.configurableOptions,
    this.configurableOptionsLink,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as String?,
        name: json['name'] as String?,
        sku: json['sku'] as String?,
        price: json['price'] as num?,
        finalPrice: json['final_price'] as num?,
        specialPrice: json['special_price'] as num?,
        specialFromDate: json['special_from_date'] as String?,
        specialToDate: json['special_to_date'] as String?,
        isFeatured: json['is_featured'] as String?,
        status: json['status'] as String?,
        typeId: json['type_id'] as String?,
        attributeSetId: json['attribute_set_id'] as String?,
        visibility: json['visibility'] as String?,
        weight: json['weight'] as num?,
        mediaGalleryEntries: (json['media_gallery_entries'] as List<dynamic>?)
            ?.map((e) => MediaGalleryEntry.fromJson(e as Map<String, dynamic>))
            .toList(),
        tierPrices: json['tier_prices'] as List<dynamic>?,
        description: json['description'] as String?,
        shortDescription: json['short_description'] as String?,
        inStock: json['in_stock'] as String?,
        // supplierType: json['supplier_type'] as List<String>?,
        // customAttribute: (json['custom_attribute'] as List<dynamic>?)
        //     ?.map((e) => CustomAttribute.fromJson(e as Map<String, dynamic>))
        //     .toList(),
        seller: json['seller'] == null
            ? null
            : Seller.fromJson(json['seller'] as Map<String, dynamic>),
        // configurableOptions: json['configurable_options'] as List<dynamic>?,
        // configurableOptionsLink:
        //     json['configurable_options_link'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'sku': sku,
        'price': price,
        'final_price': finalPrice,
        'special_price': specialPrice,
        'special_from_date': specialFromDate,
        'special_to_date': specialToDate,
        'is_featured': isFeatured,
        'status': status,
        'type_id': typeId,
        'attribute_set_id': attributeSetId,
        'visibility': visibility,
        'weight': weight,
        'media_gallery_entries':
            mediaGalleryEntries?.map((e) => e.toJson()).toList(),
        'tier_prices': tierPrices,
        'description': description,
        'short_description': shortDescription,
        'in_stock': inStock,
        'supplier_type': supplierType,
        // 'custom_attribute': customAttribute?.map((e) => e.toJson()).toList(),
        'seller': seller?.toJson(),
        'configurable_options': configurableOptions,
        'configurable_options_link': configurableOptionsLink,
      };
}
