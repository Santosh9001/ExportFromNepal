/*
class Test {
  Product? _product;
  Reviews? _reviews;
  List<Related_product>? _relatedProduct;

  Product? get product => _product;
  Reviews? get reviews => _reviews;
  List<Related_product>? get relatedProduct => _relatedProduct;

  Test({
      Product? product, 
      Reviews? reviews, 
      List<Related_product>? relatedProduct}){
    _product = product;
    _reviews = reviews;
    _relatedProduct = relatedProduct;
}

  Test.fromJson(dynamic json) {
    _product = json['product'] != null ? Product.fromJson(json['product']) : null;
    _reviews = json['reviews'] != null ? Reviews.fromJson(json['reviews']) : null;
    if (json['related_product'] != null) {
      _relatedProduct = [];
      json['related_product'].forEach((v) {
        _relatedProduct?.add(Related_product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_product != null) {
      map['product'] = _product?.toJson();
    }
    if (_reviews != null) {
      map['reviews'] = _reviews?.toJson();
    }
    if (_relatedProduct != null) {
      map['related_product'] = _relatedProduct?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Related_product {
  String? _id;
  String? _sku;
  String? _name;
  int? _finalPrice;
  int? _price;
  String? _image;
  String? _sellerName;
  String? _sellerLogo;

  String? get id => _id;
  String? get sku => _sku;
  String? get name => _name;
  int? get finalPrice => _finalPrice;
  int? get price => _price;
  String? get image => _image;
  String? get sellerName => _sellerName;
  String? get sellerLogo => _sellerLogo;

  Related_product({
      String? id, 
      String? sku, 
      String? name, 
      int? finalPrice, 
      int? price, 
      String? image, 
      String? sellerName, 
      String? sellerLogo}){
    _id = id;
    _sku = sku;
    _name = name;
    _finalPrice = finalPrice;
    _price = price;
    _image = image;
    _sellerName = sellerName;
    _sellerLogo = sellerLogo;
}

  Related_product.fromJson(dynamic json) {
    _id = json['id'];
    _sku = json['sku'];
    _name = json['name'];
    _finalPrice = json['final_price'];
    _price = json['price'];
    _image = json['image'];
    _sellerName = json['seller_name'];
    _sellerLogo = json['seller_logo'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['sku'] = _sku;
    map['name'] = _name;
    map['final_price'] = _finalPrice;
    map['price'] = _price;
    map['image'] = _image;
    map['seller_name'] = _sellerName;
    map['seller_logo'] = _sellerLogo;
    return map;
  }

}

class Reviews {
  String? _avgRatingPercent;
  int? _count;
  List<Reviews>? _reviews;

  String? get avgRatingPercent => _avgRatingPercent;
  int? get count => _count;
  List<Reviews>? get reviews => _reviews;

  Reviews({
      String? avgRatingPercent, 
      int? count, 
      List<Reviews>? reviews}){
    _avgRatingPercent = avgRatingPercent;
    _count = count;
    _reviews = reviews;
}

  Reviews.fromJson(dynamic json) {
    _avgRatingPercent = json['avg_rating_percent'];
    _count = json['count'];
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add(Reviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['avg_rating_percent'] = _avgRatingPercent;
    map['count'] = _count;
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Reviews {
  String? _reviewId;
  String? _createdAt;
  String? _entityId;
  String? _entityPkValue;
  String? _statusId;
  String? _detailId;
  String? _title;
  String? _detail;
  String? _nickname;
  String? _customerId;
  String? _entityCode;
  List<Rating_votes>? _ratingVotes;

  String? get reviewId => _reviewId;
  String? get createdAt => _createdAt;
  String? get entityId => _entityId;
  String? get entityPkValue => _entityPkValue;
  String? get statusId => _statusId;
  String? get detailId => _detailId;
  String? get title => _title;
  String? get detail => _detail;
  String? get nickname => _nickname;
  String? get customerId => _customerId;
  String? get entityCode => _entityCode;
  List<Rating_votes>? get ratingVotes => _ratingVotes;

  Reviews({
      String? reviewId, 
      String? createdAt, 
      String? entityId, 
      String? entityPkValue, 
      String? statusId, 
      String? detailId, 
      String? title, 
      String? detail, 
      String? nickname, 
      String? customerId, 
      String? entityCode, 
      List<Rating_votes>? ratingVotes}){
    _reviewId = reviewId;
    _createdAt = createdAt;
    _entityId = entityId;
    _entityPkValue = entityPkValue;
    _statusId = statusId;
    _detailId = detailId;
    _title = title;
    _detail = detail;
    _nickname = nickname;
    _customerId = customerId;
    _entityCode = entityCode;
    _ratingVotes = ratingVotes;
}

  Reviews.fromJson(dynamic json) {
    _reviewId = json['review_id'];
    _createdAt = json['created_at'];
    _entityId = json['entity_id'];
    _entityPkValue = json['entity_pk_value'];
    _statusId = json['status_id'];
    _detailId = json['detail_id'];
    _title = json['title'];
    _detail = json['detail'];
    _nickname = json['nickname'];
    _customerId = json['customer_id'];
    _entityCode = json['entity_code'];
    if (json['rating_votes'] != null) {
      _ratingVotes = [];
      json['rating_votes'].forEach((v) {
        _ratingVotes?.add(Rating_votes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['review_id'] = _reviewId;
    map['created_at'] = _createdAt;
    map['entity_id'] = _entityId;
    map['entity_pk_value'] = _entityPkValue;
    map['status_id'] = _statusId;
    map['detail_id'] = _detailId;
    map['title'] = _title;
    map['detail'] = _detail;
    map['nickname'] = _nickname;
    map['customer_id'] = _customerId;
    map['entity_code'] = _entityCode;
    if (_ratingVotes != null) {
      map['rating_votes'] = _ratingVotes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Rating_votes {
  String? _voteId;
  String? _optionId;
  String? _remoteIp;
  String? _remoteIpLong;
  String? _customerId;
  String? _entityPkValue;
  String? _ratingId;
  String? _reviewId;
  String? _percent;
  String? _value;
  String? _ratingCode;
  String? _storeId;

  String? get voteId => _voteId;
  String? get optionId => _optionId;
  String? get remoteIp => _remoteIp;
  String? get remoteIpLong => _remoteIpLong;
  String? get customerId => _customerId;
  String? get entityPkValue => _entityPkValue;
  String? get ratingId => _ratingId;
  String? get reviewId => _reviewId;
  String? get percent => _percent;
  String? get value => _value;
  String? get ratingCode => _ratingCode;
  String? get storeId => _storeId;

  Rating_votes({
      String? voteId, 
      String? optionId, 
      String? remoteIp, 
      String? remoteIpLong, 
      String? customerId, 
      String? entityPkValue, 
      String? ratingId, 
      String? reviewId, 
      String? percent, 
      String? value, 
      String? ratingCode, 
      String? storeId}){
    _voteId = voteId;
    _optionId = optionId;
    _remoteIp = remoteIp;
    _remoteIpLong = remoteIpLong;
    _customerId = customerId;
    _entityPkValue = entityPkValue;
    _ratingId = ratingId;
    _reviewId = reviewId;
    _percent = percent;
    _value = value;
    _ratingCode = ratingCode;
    _storeId = storeId;
}

  Rating_votes.fromJson(dynamic json) {
    _voteId = json['vote_id'];
    _optionId = json['option_id'];
    _remoteIp = json['remote_ip'];
    _remoteIpLong = json['remote_ip_long'];
    _customerId = json['customer_id'];
    _entityPkValue = json['entity_pk_value'];
    _ratingId = json['rating_id'];
    _reviewId = json['review_id'];
    _percent = json['percent'];
    _value = json['value'];
    _ratingCode = json['rating_code'];
    _storeId = json['store_id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['vote_id'] = _voteId;
    map['option_id'] = _optionId;
    map['remote_ip'] = _remoteIp;
    map['remote_ip_long'] = _remoteIpLong;
    map['customer_id'] = _customerId;
    map['entity_pk_value'] = _entityPkValue;
    map['rating_id'] = _ratingId;
    map['review_id'] = _reviewId;
    map['percent'] = _percent;
    map['value'] = _value;
    map['rating_code'] = _ratingCode;
    map['store_id'] = _storeId;
    return map;
  }

}

class Product {
  String? _id;
  String? _name;
  String? _sku;
  int? _price;
  int? _finalPrice;
  int? _specialPrice;
  dynamic? _specialFromDate;
  dynamic? _specialToDate;
  String? _isFeatured;
  String? _status;
  String? _typeId;
  String? _attributeSetId;
  String? _visibility;
  double? _weight;
  List<Media_gallery_entries>? _mediaGalleryEntries;
  List<dynamic>? _tierPrices;
  String? _description;
  String? _shortDescription;
  String? _inStock;
  List<String>? _supplierType;
  List<Custom_attribute>? _customAttribute;
  Seller? _seller;
  Configurable_options? _configurableOptions;
  Configurable_options_link? _configurableOptionsLink;

  String? get id => _id;
  String? get name => _name;
  String? get sku => _sku;
  int? get price => _price;
  int? get finalPrice => _finalPrice;
  int? get specialPrice => _specialPrice;
  dynamic? get specialFromDate => _specialFromDate;
  dynamic? get specialToDate => _specialToDate;
  String? get isFeatured => _isFeatured;
  String? get status => _status;
  String? get typeId => _typeId;
  String? get attributeSetId => _attributeSetId;
  String? get visibility => _visibility;
  double? get weight => _weight;
  List<Media_gallery_entries>? get mediaGalleryEntries => _mediaGalleryEntries;
  List<dynamic>? get tierPrices => _tierPrices;
  String? get description => _description;
  String? get shortDescription => _shortDescription;
  String? get inStock => _inStock;
  List<String>? get supplierType => _supplierType;
  List<Custom_attribute>? get customAttribute => _customAttribute;
  Seller? get seller => _seller;
  Configurable_options? get configurableOptions => _configurableOptions;
  Configurable_options_link? get configurableOptionsLink => _configurableOptionsLink;

  Product({
      String? id, 
      String? name, 
      String? sku, 
      int? price, 
      int? finalPrice, 
      int? specialPrice, 
      dynamic? specialFromDate, 
      dynamic? specialToDate, 
      String? isFeatured, 
      String? status, 
      String? typeId, 
      String? attributeSetId, 
      String? visibility, 
      double? weight, 
      List<Media_gallery_entries>? mediaGalleryEntries, 
      List<dynamic>? tierPrices, 
      String? description, 
      String? shortDescription, 
      String? inStock, 
      List<String>? supplierType, 
      List<Custom_attribute>? customAttribute, 
      Seller? seller, 
      Configurable_options? configurableOptions, 
      Configurable_options_link? configurableOptionsLink}){
    _id = id;
    _name = name;
    _sku = sku;
    _price = price;
    _finalPrice = finalPrice;
    _specialPrice = specialPrice;
    _specialFromDate = specialFromDate;
    _specialToDate = specialToDate;
    _isFeatured = isFeatured;
    _status = status;
    _typeId = typeId;
    _attributeSetId = attributeSetId;
    _visibility = visibility;
    _weight = weight;
    _mediaGalleryEntries = mediaGalleryEntries;
    _tierPrices = tierPrices;
    _description = description;
    _shortDescription = shortDescription;
    _inStock = inStock;
    _supplierType = supplierType;
    _customAttribute = customAttribute;
    _seller = seller;
    _configurableOptions = configurableOptions;
    _configurableOptionsLink = configurableOptionsLink;
}

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _sku = json['sku'];
    _price = json['price'];
    _finalPrice = json['final_price'];
    _specialPrice = json['special_price'];
    _specialFromDate = json['special_from_date'];
    _specialToDate = json['special_to_date'];
    _isFeatured = json['is_featured'];
    _status = json['status'];
    _typeId = json['type_id'];
    _attributeSetId = json['attribute_set_id'];
    _visibility = json['visibility'];
    _weight = json['weight'];
    if (json['media_gallery_entries'] != null) {
      _mediaGalleryEntries = [];
      json['media_gallery_entries'].forEach((v) {
        _mediaGalleryEntries?.add(Media_gallery_entries.fromJson(v));
      });
    }
    if (json['tier_prices'] != null) {
      _tierPrices = [];
      json['tier_prices'].forEach((v) {
        _tierPrices?.add(dynamic.fromJson(v));
      });
    }
    _description = json['description'];
    _shortDescription = json['short_description'];
    _inStock = json['in_stock'];
    _supplierType = json['supplier_type'] != null ? json['supplier_type'].cast<String>() : [];
    if (json['custom_attribute'] != null) {
      _customAttribute = [];
      json['custom_attribute'].forEach((v) {
        _customAttribute?.add(Custom_attribute.fromJson(v));
      });
    }
    _seller = json['seller'] != null ? Seller.fromJson(json['seller']) : null;
    _configurableOptions = json['configurable_options'] != null ? Configurable_options.fromJson(json['configurableOptions']) : null;
    _configurableOptionsLink = json['configurable_options_link'] != null ? Configurable_options_link.fromJson(json['configurableOptionsLink']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['sku'] = _sku;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    map['special_price'] = _specialPrice;
    map['special_from_date'] = _specialFromDate;
    map['special_to_date'] = _specialToDate;
    map['is_featured'] = _isFeatured;
    map['status'] = _status;
    map['type_id'] = _typeId;
    map['attribute_set_id'] = _attributeSetId;
    map['visibility'] = _visibility;
    map['weight'] = _weight;
    if (_mediaGalleryEntries != null) {
      map['media_gallery_entries'] = _mediaGalleryEntries?.map((v) => v.toJson()).toList();
    }
    if (_tierPrices != null) {
      map['tier_prices'] = _tierPrices?.map((v) => v.toJson()).toList();
    }
    map['description'] = _description;
    map['short_description'] = _shortDescription;
    map['in_stock'] = _inStock;
    map['supplier_type'] = _supplierType;
    if (_customAttribute != null) {
      map['custom_attribute'] = _customAttribute?.map((v) => v.toJson()).toList();
    }
    if (_seller != null) {
      map['seller'] = _seller?.toJson();
    }
    if (_configurableOptions != null) {
      map['configurable_options'] = _configurableOptions?.toJson();
    }
    if (_configurableOptionsLink != null) {
      map['configurable_options_link'] = _configurableOptionsLink?.toJson();
    }
    return map;
  }

}

class Configurable_options_link {
  1231-1-Black-S? _1231-1-Black-S;
  1231-1-Black-XXL? _1231-1-Black-XXL;
  1231-1-Black-XL? _1231-1-Black-XL;
  1231-1-Black-L? _1231-1-Black-L;
  1231-1-Black-M? _1231-1-Black-M;
  1231-1-Blue-M? _1231-1-Blue-M;
  1231-1-Blue-S? _1231-1-Blue-S;
  1231-1-Blue-XXL? _1231-1-Blue-XXL;
  1231-1-Blue-XL? _1231-1-Blue-XL;
  1231-1-Blue-L? _1231-1-Blue-L;
  1231-1-Brown-M? _1231-1-Brown-M;
  1231-1-Brown-S? _1231-1-Brown-S;
  1231-1-Brown-XXL? _1231-1-Brown-XXL;
  1231-1-Brown-XL? _1231-1-Brown-XL;
  1231-1-Brown-L? _1231-1-Brown-L;
  1231-1-Gray-M? _1231-1-Gray-M;
  1231-1-Gray-S? _1231-1-Gray-S;
  1231-1-Gray-XXL? _1231-1-Gray-XXL;
  1231-1-Gray-XL? _1231-1-Gray-XL;
  1231-1-Gray-L? _1231-1-Gray-L;
  1231-1-Green-L? _1231-1-Green-L;
  1231-1-Green-M? _1231-1-Green-M;
  1231-1-Green-S? _1231-1-Green-S;
  1231-1-Green-XXL? _1231-1-Green-XXL;
  1231-1-Green-XL? _1231-1-Green-XL;
  1231-1-Lavender-L? _1231-1-Lavender-L;
  1231-1-Lavender-M? _1231-1-Lavender-M;
  1231-1-Lavender-S? _1231-1-Lavender-S;
  1231-1-Lavender-XXL? _1231-1-Lavender-XXL;
  1231-1-Lavender-XL? _1231-1-Lavender-XL;
  1231-1-Multicolored-L? _1231-1-Multicolored-L;
  1231-1-Multicolored-M? _1231-1-Multicolored-M;
  1231-1-Multicolored-S? _1231-1-Multicolored-S;
  1231-1-Multicolored-XXL? _1231-1-Multicolored-XXL;
  1231-1-Multicolored-XL? _1231-1-Multicolored-XL;
  1231-1-Orange-XL? _1231-1-Orange-XL;
  1231-1-Orange-L? _1231-1-Orange-L;
  1231-1-Orange-M? _1231-1-Orange-M;
  1231-1-Orange-S? _1231-1-Orange-S;
  1231-1-Orange-XXL? _1231-1-Orange-XXL;
  1231-1-Purple-XL? _1231-1-Purple-XL;
  1231-1-Purple-L? _1231-1-Purple-L;
  1231-1-Purple-M? _1231-1-Purple-M;
  1231-1-Purple-S? _1231-1-Purple-S;
  1231-1-Purple-XXL? _1231-1-Purple-XXL;
  1231-1-Red-XL? _1231-1-Red-XL;
  1231-1-Red-L? _1231-1-Red-L;
  1231-1-Red-M? _1231-1-Red-M;
  1231-1-Red-S? _1231-1-Red-S;
  1231-1-Red-XXL? _1231-1-Red-XXL;
  1231-1-White-XXL? _1231-1-White-XXL;
  1231-1-White-XL? _1231-1-White-XL;
  1231-1-White-L? _1231-1-White-L;
  1231-1-White-M? _1231-1-White-M;
  1231-1-White-S? _1231-1-White-S;
  1231-1-Yellow-XXL? _1231-1-Yellow-XXL;
  1231-1-Yellow-XL? _1231-1-Yellow-XL;
  1231-1-Yellow-L? _1231-1-Yellow-L;
  1231-1-Yellow-M? _1231-1-Yellow-M;
  1231-1-Yellow-S? _1231-1-Yellow-S;
  1231-1-Black/Silver-XXL? _1231-1-Black/Silver-XXL;
  1231-1-Black/Silver-XL? _1231-1-Black/Silver-XL;
  1231-1-Black/Silver-L? _1231-1-Black/Silver-L;
  1231-1-Black/Silver-M? _1231-1-Black/Silver-M;
  1231-1-Black/Silver-S? _1231-1-Black/Silver-S;
  1231-1-Navy-XXL? _1231-1-Navy-XXL;
  1231-1-Navy-XL? _1231-1-Navy-XL;
  1231-1-Navy-L? _1231-1-Navy-L;
  1231-1-Navy-M? _1231-1-Navy-M;
  1231-1-Navy-S? _1231-1-Navy-S;
  1231-1-Maroon-S? _1231-1-Maroon-S;
  1231-1-Pink-S? _1231-1-Pink-S;
  1231-1-Maroon-XXL? _1231-1-Maroon-XXL;
  1231-1-Pink-XXL? _1231-1-Pink-XXL;
  1231-1-Maroon-XL? _1231-1-Maroon-XL;
  1231-1-Pink-XL? _1231-1-Pink-XL;
  1231-1-Maroon-L? _1231-1-Maroon-L;
  1231-1-Pink-L? _1231-1-Pink-L;
  1231-1-Maroon-M? _1231-1-Maroon-M;
  1231-1-Pink-M? _1231-1-Pink-M;

  1231-1-Black-S? get 1231-1-Black-S => _1231-1-Black-S;
  1231-1-Black-XXL? get 1231-1-Black-XXL => _1231-1-Black-XXL;
  1231-1-Black-XL? get 1231-1-Black-XL => _1231-1-Black-XL;
  1231-1-Black-L? get 1231-1-Black-L => _1231-1-Black-L;
  1231-1-Black-M? get 1231-1-Black-M => _1231-1-Black-M;
  1231-1-Blue-M? get 1231-1-Blue-M => _1231-1-Blue-M;
  1231-1-Blue-S? get 1231-1-Blue-S => _1231-1-Blue-S;
  1231-1-Blue-XXL? get 1231-1-Blue-XXL => _1231-1-Blue-XXL;
  1231-1-Blue-XL? get 1231-1-Blue-XL => _1231-1-Blue-XL;
  1231-1-Blue-L? get 1231-1-Blue-L => _1231-1-Blue-L;
  1231-1-Brown-M? get 1231-1-Brown-M => _1231-1-Brown-M;
  1231-1-Brown-S? get 1231-1-Brown-S => _1231-1-Brown-S;
  1231-1-Brown-XXL? get 1231-1-Brown-XXL => _1231-1-Brown-XXL;
  1231-1-Brown-XL? get 1231-1-Brown-XL => _1231-1-Brown-XL;
  1231-1-Brown-L? get 1231-1-Brown-L => _1231-1-Brown-L;
  1231-1-Gray-M? get 1231-1-Gray-M => _1231-1-Gray-M;
  1231-1-Gray-S? get 1231-1-Gray-S => _1231-1-Gray-S;
  1231-1-Gray-XXL? get 1231-1-Gray-XXL => _1231-1-Gray-XXL;
  1231-1-Gray-XL? get 1231-1-Gray-XL => _1231-1-Gray-XL;
  1231-1-Gray-L? get 1231-1-Gray-L => _1231-1-Gray-L;
  1231-1-Green-L? get 1231-1-Green-L => _1231-1-Green-L;
  1231-1-Green-M? get 1231-1-Green-M => _1231-1-Green-M;
  1231-1-Green-S? get 1231-1-Green-S => _1231-1-Green-S;
  1231-1-Green-XXL? get 1231-1-Green-XXL => _1231-1-Green-XXL;
  1231-1-Green-XL? get 1231-1-Green-XL => _1231-1-Green-XL;
  1231-1-Lavender-L? get 1231-1-Lavender-L => _1231-1-Lavender-L;
  1231-1-Lavender-M? get 1231-1-Lavender-M => _1231-1-Lavender-M;
  1231-1-Lavender-S? get 1231-1-Lavender-S => _1231-1-Lavender-S;
  1231-1-Lavender-XXL? get 1231-1-Lavender-XXL => _1231-1-Lavender-XXL;
  1231-1-Lavender-XL? get 1231-1-Lavender-XL => _1231-1-Lavender-XL;
  1231-1-Multicolored-L? get 1231-1-Multicolored-L => _1231-1-Multicolored-L;
  1231-1-Multicolored-M? get 1231-1-Multicolored-M => _1231-1-Multicolored-M;
  1231-1-Multicolored-S? get 1231-1-Multicolored-S => _1231-1-Multicolored-S;
  1231-1-Multicolored-XXL? get 1231-1-Multicolored-XXL => _1231-1-Multicolored-XXL;
  1231-1-Multicolored-XL? get 1231-1-Multicolored-XL => _1231-1-Multicolored-XL;
  1231-1-Orange-XL? get 1231-1-Orange-XL => _1231-1-Orange-XL;
  1231-1-Orange-L? get 1231-1-Orange-L => _1231-1-Orange-L;
  1231-1-Orange-M? get 1231-1-Orange-M => _1231-1-Orange-M;
  1231-1-Orange-S? get 1231-1-Orange-S => _1231-1-Orange-S;
  1231-1-Orange-XXL? get 1231-1-Orange-XXL => _1231-1-Orange-XXL;
  1231-1-Purple-XL? get 1231-1-Purple-XL => _1231-1-Purple-XL;
  1231-1-Purple-L? get 1231-1-Purple-L => _1231-1-Purple-L;
  1231-1-Purple-M? get 1231-1-Purple-M => _1231-1-Purple-M;
  1231-1-Purple-S? get 1231-1-Purple-S => _1231-1-Purple-S;
  1231-1-Purple-XXL? get 1231-1-Purple-XXL => _1231-1-Purple-XXL;
  1231-1-Red-XL? get 1231-1-Red-XL => _1231-1-Red-XL;
  1231-1-Red-L? get 1231-1-Red-L => _1231-1-Red-L;
  1231-1-Red-M? get 1231-1-Red-M => _1231-1-Red-M;
  1231-1-Red-S? get 1231-1-Red-S => _1231-1-Red-S;
  1231-1-Red-XXL? get 1231-1-Red-XXL => _1231-1-Red-XXL;
  1231-1-White-XXL? get 1231-1-White-XXL => _1231-1-White-XXL;
  1231-1-White-XL? get 1231-1-White-XL => _1231-1-White-XL;
  1231-1-White-L? get 1231-1-White-L => _1231-1-White-L;
  1231-1-White-M? get 1231-1-White-M => _1231-1-White-M;
  1231-1-White-S? get 1231-1-White-S => _1231-1-White-S;
  1231-1-Yellow-XXL? get 1231-1-Yellow-XXL => _1231-1-Yellow-XXL;
  1231-1-Yellow-XL? get 1231-1-Yellow-XL => _1231-1-Yellow-XL;
  1231-1-Yellow-L? get 1231-1-Yellow-L => _1231-1-Yellow-L;
  1231-1-Yellow-M? get 1231-1-Yellow-M => _1231-1-Yellow-M;
  1231-1-Yellow-S? get 1231-1-Yellow-S => _1231-1-Yellow-S;
  1231-1-Black/Silver-XXL? get 1231-1-Black/Silver-XXL => _1231-1-Black/Silver-XXL;
  1231-1-Black/Silver-XL? get 1231-1-Black/Silver-XL => _1231-1-Black/Silver-XL;
  1231-1-Black/Silver-L? get 1231-1-Black/Silver-L => _1231-1-Black/Silver-L;
  1231-1-Black/Silver-M? get 1231-1-Black/Silver-M => _1231-1-Black/Silver-M;
  1231-1-Black/Silver-S? get 1231-1-Black/Silver-S => _1231-1-Black/Silver-S;
  1231-1-Navy-XXL? get 1231-1-Navy-XXL => _1231-1-Navy-XXL;
  1231-1-Navy-XL? get 1231-1-Navy-XL => _1231-1-Navy-XL;
  1231-1-Navy-L? get 1231-1-Navy-L => _1231-1-Navy-L;
  1231-1-Navy-M? get 1231-1-Navy-M => _1231-1-Navy-M;
  1231-1-Navy-S? get 1231-1-Navy-S => _1231-1-Navy-S;
  1231-1-Maroon-S? get 1231-1-Maroon-S => _1231-1-Maroon-S;
  1231-1-Pink-S? get 1231-1-Pink-S => _1231-1-Pink-S;
  1231-1-Maroon-XXL? get 1231-1-Maroon-XXL => _1231-1-Maroon-XXL;
  1231-1-Pink-XXL? get 1231-1-Pink-XXL => _1231-1-Pink-XXL;
  1231-1-Maroon-XL? get 1231-1-Maroon-XL => _1231-1-Maroon-XL;
  1231-1-Pink-XL? get 1231-1-Pink-XL => _1231-1-Pink-XL;
  1231-1-Maroon-L? get 1231-1-Maroon-L => _1231-1-Maroon-L;
  1231-1-Pink-L? get 1231-1-Pink-L => _1231-1-Pink-L;
  1231-1-Maroon-M? get 1231-1-Maroon-M => _1231-1-Maroon-M;
  1231-1-Pink-M? get 1231-1-Pink-M => _1231-1-Pink-M;

  Configurable_options_link({
      1231-1-Black-S? 1231-1-Black-S, 
      1231-1-Black-XXL? 1231-1-Black-XXL, 
      1231-1-Black-XL? 1231-1-Black-XL, 
      1231-1-Black-L? 1231-1-Black-L, 
      1231-1-Black-M? 1231-1-Black-M, 
      1231-1-Blue-M? 1231-1-Blue-M, 
      1231-1-Blue-S? 1231-1-Blue-S, 
      1231-1-Blue-XXL? 1231-1-Blue-XXL, 
      1231-1-Blue-XL? 1231-1-Blue-XL, 
      1231-1-Blue-L? 1231-1-Blue-L, 
      1231-1-Brown-M? 1231-1-Brown-M, 
      1231-1-Brown-S? 1231-1-Brown-S, 
      1231-1-Brown-XXL? 1231-1-Brown-XXL, 
      1231-1-Brown-XL? 1231-1-Brown-XL, 
      1231-1-Brown-L? 1231-1-Brown-L, 
      1231-1-Gray-M? 1231-1-Gray-M, 
      1231-1-Gray-S? 1231-1-Gray-S, 
      1231-1-Gray-XXL? 1231-1-Gray-XXL, 
      1231-1-Gray-XL? 1231-1-Gray-XL, 
      1231-1-Gray-L? 1231-1-Gray-L, 
      1231-1-Green-L? 1231-1-Green-L, 
      1231-1-Green-M? 1231-1-Green-M, 
      1231-1-Green-S? 1231-1-Green-S, 
      1231-1-Green-XXL? 1231-1-Green-XXL, 
      1231-1-Green-XL? 1231-1-Green-XL, 
      1231-1-Lavender-L? 1231-1-Lavender-L, 
      1231-1-Lavender-M? 1231-1-Lavender-M, 
      1231-1-Lavender-S? 1231-1-Lavender-S, 
      1231-1-Lavender-XXL? 1231-1-Lavender-XXL, 
      1231-1-Lavender-XL? 1231-1-Lavender-XL, 
      1231-1-Multicolored-L? 1231-1-Multicolored-L, 
      1231-1-Multicolored-M? 1231-1-Multicolored-M, 
      1231-1-Multicolored-S? 1231-1-Multicolored-S, 
      1231-1-Multicolored-XXL? 1231-1-Multicolored-XXL, 
      1231-1-Multicolored-XL? 1231-1-Multicolored-XL, 
      1231-1-Orange-XL? 1231-1-Orange-XL, 
      1231-1-Orange-L? 1231-1-Orange-L, 
      1231-1-Orange-M? 1231-1-Orange-M, 
      1231-1-Orange-S? 1231-1-Orange-S, 
      1231-1-Orange-XXL? 1231-1-Orange-XXL, 
      1231-1-Purple-XL? 1231-1-Purple-XL, 
      1231-1-Purple-L? 1231-1-Purple-L, 
      1231-1-Purple-M? 1231-1-Purple-M, 
      1231-1-Purple-S? 1231-1-Purple-S, 
      1231-1-Purple-XXL? 1231-1-Purple-XXL, 
      1231-1-Red-XL? 1231-1-Red-XL, 
      1231-1-Red-L? 1231-1-Red-L, 
      1231-1-Red-M? 1231-1-Red-M, 
      1231-1-Red-S? 1231-1-Red-S, 
      1231-1-Red-XXL? 1231-1-Red-XXL, 
      1231-1-White-XXL? 1231-1-White-XXL, 
      1231-1-White-XL? 1231-1-White-XL, 
      1231-1-White-L? 1231-1-White-L, 
      1231-1-White-M? 1231-1-White-M, 
      1231-1-White-S? 1231-1-White-S, 
      1231-1-Yellow-XXL? 1231-1-Yellow-XXL, 
      1231-1-Yellow-XL? 1231-1-Yellow-XL, 
      1231-1-Yellow-L? 1231-1-Yellow-L, 
      1231-1-Yellow-M? 1231-1-Yellow-M, 
      1231-1-Yellow-S? 1231-1-Yellow-S, 
      1231-1-Black/Silver-XXL? 1231-1-Black/Silver-XXL, 
      1231-1-Black/Silver-XL? 1231-1-Black/Silver-XL, 
      1231-1-Black/Silver-L? 1231-1-Black/Silver-L, 
      1231-1-Black/Silver-M? 1231-1-Black/Silver-M, 
      1231-1-Black/Silver-S? 1231-1-Black/Silver-S, 
      1231-1-Navy-XXL? 1231-1-Navy-XXL, 
      1231-1-Navy-XL? 1231-1-Navy-XL, 
      1231-1-Navy-L? 1231-1-Navy-L, 
      1231-1-Navy-M? 1231-1-Navy-M, 
      1231-1-Navy-S? 1231-1-Navy-S, 
      1231-1-Maroon-S? 1231-1-Maroon-S, 
      1231-1-Pink-S? 1231-1-Pink-S, 
      1231-1-Maroon-XXL? 1231-1-Maroon-XXL, 
      1231-1-Pink-XXL? 1231-1-Pink-XXL, 
      1231-1-Maroon-XL? 1231-1-Maroon-XL, 
      1231-1-Pink-XL? 1231-1-Pink-XL, 
      1231-1-Maroon-L? 1231-1-Maroon-L, 
      1231-1-Pink-L? 1231-1-Pink-L, 
      1231-1-Maroon-M? 1231-1-Maroon-M, 
      1231-1-Pink-M? 1231-1-Pink-M}){
    _1231-1-Black-S = 1231-1-Black-S;
    _1231-1-Black-XXL = 1231-1-Black-XXL;
    _1231-1-Black-XL = 1231-1-Black-XL;
    _1231-1-Black-L = 1231-1-Black-L;
    _1231-1-Black-M = 1231-1-Black-M;
    _1231-1-Blue-M = 1231-1-Blue-M;
    _1231-1-Blue-S = 1231-1-Blue-S;
    _1231-1-Blue-XXL = 1231-1-Blue-XXL;
    _1231-1-Blue-XL = 1231-1-Blue-XL;
    _1231-1-Blue-L = 1231-1-Blue-L;
    _1231-1-Brown-M = 1231-1-Brown-M;
    _1231-1-Brown-S = 1231-1-Brown-S;
    _1231-1-Brown-XXL = 1231-1-Brown-XXL;
    _1231-1-Brown-XL = 1231-1-Brown-XL;
    _1231-1-Brown-L = 1231-1-Brown-L;
    _1231-1-Gray-M = 1231-1-Gray-M;
    _1231-1-Gray-S = 1231-1-Gray-S;
    _1231-1-Gray-XXL = 1231-1-Gray-XXL;
    _1231-1-Gray-XL = 1231-1-Gray-XL;
    _1231-1-Gray-L = 1231-1-Gray-L;
    _1231-1-Green-L = 1231-1-Green-L;
    _1231-1-Green-M = 1231-1-Green-M;
    _1231-1-Green-S = 1231-1-Green-S;
    _1231-1-Green-XXL = 1231-1-Green-XXL;
    _1231-1-Green-XL = 1231-1-Green-XL;
    _1231-1-Lavender-L = 1231-1-Lavender-L;
    _1231-1-Lavender-M = 1231-1-Lavender-M;
    _1231-1-Lavender-S = 1231-1-Lavender-S;
    _1231-1-Lavender-XXL = 1231-1-Lavender-XXL;
    _1231-1-Lavender-XL = 1231-1-Lavender-XL;
    _1231-1-Multicolored-L = 1231-1-Multicolored-L;
    _1231-1-Multicolored-M = 1231-1-Multicolored-M;
    _1231-1-Multicolored-S = 1231-1-Multicolored-S;
    _1231-1-Multicolored-XXL = 1231-1-Multicolored-XXL;
    _1231-1-Multicolored-XL = 1231-1-Multicolored-XL;
    _1231-1-Orange-XL = 1231-1-Orange-XL;
    _1231-1-Orange-L = 1231-1-Orange-L;
    _1231-1-Orange-M = 1231-1-Orange-M;
    _1231-1-Orange-S = 1231-1-Orange-S;
    _1231-1-Orange-XXL = 1231-1-Orange-XXL;
    _1231-1-Purple-XL = 1231-1-Purple-XL;
    _1231-1-Purple-L = 1231-1-Purple-L;
    _1231-1-Purple-M = 1231-1-Purple-M;
    _1231-1-Purple-S = 1231-1-Purple-S;
    _1231-1-Purple-XXL = 1231-1-Purple-XXL;
    _1231-1-Red-XL = 1231-1-Red-XL;
    _1231-1-Red-L = 1231-1-Red-L;
    _1231-1-Red-M = 1231-1-Red-M;
    _1231-1-Red-S = 1231-1-Red-S;
    _1231-1-Red-XXL = 1231-1-Red-XXL;
    _1231-1-White-XXL = 1231-1-White-XXL;
    _1231-1-White-XL = 1231-1-White-XL;
    _1231-1-White-L = 1231-1-White-L;
    _1231-1-White-M = 1231-1-White-M;
    _1231-1-White-S = 1231-1-White-S;
    _1231-1-Yellow-XXL = 1231-1-Yellow-XXL;
    _1231-1-Yellow-XL = 1231-1-Yellow-XL;
    _1231-1-Yellow-L = 1231-1-Yellow-L;
    _1231-1-Yellow-M = 1231-1-Yellow-M;
    _1231-1-Yellow-S = 1231-1-Yellow-S;
    _1231-1-Black/Silver-XXL = 1231-1-Black/Silver-XXL;
    _1231-1-Black/Silver-XL = 1231-1-Black/Silver-XL;
    _1231-1-Black/Silver-L = 1231-1-Black/Silver-L;
    _1231-1-Black/Silver-M = 1231-1-Black/Silver-M;
    _1231-1-Black/Silver-S = 1231-1-Black/Silver-S;
    _1231-1-Navy-XXL = 1231-1-Navy-XXL;
    _1231-1-Navy-XL = 1231-1-Navy-XL;
    _1231-1-Navy-L = 1231-1-Navy-L;
    _1231-1-Navy-M = 1231-1-Navy-M;
    _1231-1-Navy-S = 1231-1-Navy-S;
    _1231-1-Maroon-S = 1231-1-Maroon-S;
    _1231-1-Pink-S = 1231-1-Pink-S;
    _1231-1-Maroon-XXL = 1231-1-Maroon-XXL;
    _1231-1-Pink-XXL = 1231-1-Pink-XXL;
    _1231-1-Maroon-XL = 1231-1-Maroon-XL;
    _1231-1-Pink-XL = 1231-1-Pink-XL;
    _1231-1-Maroon-L = 1231-1-Maroon-L;
    _1231-1-Pink-L = 1231-1-Pink-L;
    _1231-1-Maroon-M = 1231-1-Maroon-M;
    _1231-1-Pink-M = 1231-1-Pink-M;
}

  Configurable_options_link.fromJson(dynamic json) {
    _1231-1-Black-S = json['1231-1-Black-S'] != null ? 1231-1-Black-S.fromJson(json['1231-1-Black-S']) : null;
    _1231-1-Black-XXL = json['1231-1-Black-XXL'] != null ? 1231-1-Black-XXL.fromJson(json['1231-1-Black-XXL']) : null;
    _1231-1-Black-XL = json['1231-1-Black-XL'] != null ? 1231-1-Black-XL.fromJson(json['1231-1-Black-XL']) : null;
    _1231-1-Black-L = json['1231-1-Black-L'] != null ? 1231-1-Black-L.fromJson(json['1231-1-Black-L']) : null;
    _1231-1-Black-M = json['1231-1-Black-M'] != null ? 1231-1-Black-M.fromJson(json['1231-1-Black-M']) : null;
    _1231-1-Blue-M = json['1231-1-Blue-M'] != null ? 1231-1-Blue-M.fromJson(json['1231-1-Blue-M']) : null;
    _1231-1-Blue-S = json['1231-1-Blue-S'] != null ? 1231-1-Blue-S.fromJson(json['1231-1-Blue-S']) : null;
    _1231-1-Blue-XXL = json['1231-1-Blue-XXL'] != null ? 1231-1-Blue-XXL.fromJson(json['1231-1-Blue-XXL']) : null;
    _1231-1-Blue-XL = json['1231-1-Blue-XL'] != null ? 1231-1-Blue-XL.fromJson(json['1231-1-Blue-XL']) : null;
    _1231-1-Blue-L = json['1231-1-Blue-L'] != null ? 1231-1-Blue-L.fromJson(json['1231-1-Blue-L']) : null;
    _1231-1-Brown-M = json['1231-1-Brown-M'] != null ? 1231-1-Brown-M.fromJson(json['1231-1-Brown-M']) : null;
    _1231-1-Brown-S = json['1231-1-Brown-S'] != null ? 1231-1-Brown-S.fromJson(json['1231-1-Brown-S']) : null;
    _1231-1-Brown-XXL = json['1231-1-Brown-XXL'] != null ? 1231-1-Brown-XXL.fromJson(json['1231-1-Brown-XXL']) : null;
    _1231-1-Brown-XL = json['1231-1-Brown-XL'] != null ? 1231-1-Brown-XL.fromJson(json['1231-1-Brown-XL']) : null;
    _1231-1-Brown-L = json['1231-1-Brown-L'] != null ? 1231-1-Brown-L.fromJson(json['1231-1-Brown-L']) : null;
    _1231-1-Gray-M = json['1231-1-Gray-M'] != null ? 1231-1-Gray-M.fromJson(json['1231-1-Gray-M']) : null;
    _1231-1-Gray-S = json['1231-1-Gray-S'] != null ? 1231-1-Gray-S.fromJson(json['1231-1-Gray-S']) : null;
    _1231-1-Gray-XXL = json['1231-1-Gray-XXL'] != null ? 1231-1-Gray-XXL.fromJson(json['1231-1-Gray-XXL']) : null;
    _1231-1-Gray-XL = json['1231-1-Gray-XL'] != null ? 1231-1-Gray-XL.fromJson(json['1231-1-Gray-XL']) : null;
    _1231-1-Gray-L = json['1231-1-Gray-L'] != null ? 1231-1-Gray-L.fromJson(json['1231-1-Gray-L']) : null;
    _1231-1-Green-L = json['1231-1-Green-L'] != null ? 1231-1-Green-L.fromJson(json['1231-1-Green-L']) : null;
    _1231-1-Green-M = json['1231-1-Green-M'] != null ? 1231-1-Green-M.fromJson(json['1231-1-Green-M']) : null;
    _1231-1-Green-S = json['1231-1-Green-S'] != null ? 1231-1-Green-S.fromJson(json['1231-1-Green-S']) : null;
    _1231-1-Green-XXL = json['1231-1-Green-XXL'] != null ? 1231-1-Green-XXL.fromJson(json['1231-1-Green-XXL']) : null;
    _1231-1-Green-XL = json['1231-1-Green-XL'] != null ? 1231-1-Green-XL.fromJson(json['1231-1-Green-XL']) : null;
    _1231-1-Lavender-L = json['1231-1-Lavender-L'] != null ? 1231-1-Lavender-L.fromJson(json['1231-1-Lavender-L']) : null;
    _1231-1-Lavender-M = json['1231-1-Lavender-M'] != null ? 1231-1-Lavender-M.fromJson(json['1231-1-Lavender-M']) : null;
    _1231-1-Lavender-S = json['1231-1-Lavender-S'] != null ? 1231-1-Lavender-S.fromJson(json['1231-1-Lavender-S']) : null;
    _1231-1-Lavender-XXL = json['1231-1-Lavender-XXL'] != null ? 1231-1-Lavender-XXL.fromJson(json['1231-1-Lavender-XXL']) : null;
    _1231-1-Lavender-XL = json['1231-1-Lavender-XL'] != null ? 1231-1-Lavender-XL.fromJson(json['1231-1-Lavender-XL']) : null;
    _1231-1-Multicolored-L = json['1231-1-Multicolored-L'] != null ? 1231-1-Multicolored-L.fromJson(json['1231-1-Multicolored-L']) : null;
    _1231-1-Multicolored-M = json['1231-1-Multicolored-M'] != null ? 1231-1-Multicolored-M.fromJson(json['1231-1-Multicolored-M']) : null;
    _1231-1-Multicolored-S = json['1231-1-Multicolored-S'] != null ? 1231-1-Multicolored-S.fromJson(json['1231-1-Multicolored-S']) : null;
    _1231-1-Multicolored-XXL = json['1231-1-Multicolored-XXL'] != null ? 1231-1-Multicolored-XXL.fromJson(json['1231-1-Multicolored-XXL']) : null;
    _1231-1-Multicolored-XL = json['1231-1-Multicolored-XL'] != null ? 1231-1-Multicolored-XL.fromJson(json['1231-1-Multicolored-XL']) : null;
    _1231-1-Orange-XL = json['1231-1-Orange-XL'] != null ? 1231-1-Orange-XL.fromJson(json['1231-1-Orange-XL']) : null;
    _1231-1-Orange-L = json['1231-1-Orange-L'] != null ? 1231-1-Orange-L.fromJson(json['1231-1-Orange-L']) : null;
    _1231-1-Orange-M = json['1231-1-Orange-M'] != null ? 1231-1-Orange-M.fromJson(json['1231-1-Orange-M']) : null;
    _1231-1-Orange-S = json['1231-1-Orange-S'] != null ? 1231-1-Orange-S.fromJson(json['1231-1-Orange-S']) : null;
    _1231-1-Orange-XXL = json['1231-1-Orange-XXL'] != null ? 1231-1-Orange-XXL.fromJson(json['1231-1-Orange-XXL']) : null;
    _1231-1-Purple-XL = json['1231-1-Purple-XL'] != null ? 1231-1-Purple-XL.fromJson(json['1231-1-Purple-XL']) : null;
    _1231-1-Purple-L = json['1231-1-Purple-L'] != null ? 1231-1-Purple-L.fromJson(json['1231-1-Purple-L']) : null;
    _1231-1-Purple-M = json['1231-1-Purple-M'] != null ? 1231-1-Purple-M.fromJson(json['1231-1-Purple-M']) : null;
    _1231-1-Purple-S = json['1231-1-Purple-S'] != null ? 1231-1-Purple-S.fromJson(json['1231-1-Purple-S']) : null;
    _1231-1-Purple-XXL = json['1231-1-Purple-XXL'] != null ? 1231-1-Purple-XXL.fromJson(json['1231-1-Purple-XXL']) : null;
    _1231-1-Red-XL = json['1231-1-Red-XL'] != null ? 1231-1-Red-XL.fromJson(json['1231-1-Red-XL']) : null;
    _1231-1-Red-L = json['1231-1-Red-L'] != null ? 1231-1-Red-L.fromJson(json['1231-1-Red-L']) : null;
    _1231-1-Red-M = json['1231-1-Red-M'] != null ? 1231-1-Red-M.fromJson(json['1231-1-Red-M']) : null;
    _1231-1-Red-S = json['1231-1-Red-S'] != null ? 1231-1-Red-S.fromJson(json['1231-1-Red-S']) : null;
    _1231-1-Red-XXL = json['1231-1-Red-XXL'] != null ? 1231-1-Red-XXL.fromJson(json['1231-1-Red-XXL']) : null;
    _1231-1-White-XXL = json['1231-1-White-XXL'] != null ? 1231-1-White-XXL.fromJson(json['1231-1-White-XXL']) : null;
    _1231-1-White-XL = json['1231-1-White-XL'] != null ? 1231-1-White-XL.fromJson(json['1231-1-White-XL']) : null;
    _1231-1-White-L = json['1231-1-White-L'] != null ? 1231-1-White-L.fromJson(json['1231-1-White-L']) : null;
    _1231-1-White-M = json['1231-1-White-M'] != null ? 1231-1-White-M.fromJson(json['1231-1-White-M']) : null;
    _1231-1-White-S = json['1231-1-White-S'] != null ? 1231-1-White-S.fromJson(json['1231-1-White-S']) : null;
    _1231-1-Yellow-XXL = json['1231-1-Yellow-XXL'] != null ? 1231-1-Yellow-XXL.fromJson(json['1231-1-Yellow-XXL']) : null;
    _1231-1-Yellow-XL = json['1231-1-Yellow-XL'] != null ? 1231-1-Yellow-XL.fromJson(json['1231-1-Yellow-XL']) : null;
    _1231-1-Yellow-L = json['1231-1-Yellow-L'] != null ? 1231-1-Yellow-L.fromJson(json['1231-1-Yellow-L']) : null;
    _1231-1-Yellow-M = json['1231-1-Yellow-M'] != null ? 1231-1-Yellow-M.fromJson(json['1231-1-Yellow-M']) : null;
    _1231-1-Yellow-S = json['1231-1-Yellow-S'] != null ? 1231-1-Yellow-S.fromJson(json['1231-1-Yellow-S']) : null;
    _1231-1-Black/Silver-XXL = json['1231-1-Black/Silver-XXL'] != null ? 1231-1-Black/Silver-XXL.fromJson(json['1231-1-Black/Silver-XXL']) : null;
    _1231-1-Black/Silver-XL = json['1231-1-Black/Silver-XL'] != null ? 1231-1-Black/Silver-XL.fromJson(json['1231-1-Black/Silver-XL']) : null;
    _1231-1-Black/Silver-L = json['1231-1-Black/Silver-L'] != null ? 1231-1-Black/Silver-L.fromJson(json['1231-1-Black/Silver-L']) : null;
    _1231-1-Black/Silver-M = json['1231-1-Black/Silver-M'] != null ? 1231-1-Black/Silver-M.fromJson(json['1231-1-Black/Silver-M']) : null;
    _1231-1-Black/Silver-S = json['1231-1-Black/Silver-S'] != null ? 1231-1-Black/Silver-S.fromJson(json['1231-1-Black/Silver-S']) : null;
    _1231-1-Navy-XXL = json['1231-1-Navy-XXL'] != null ? 1231-1-Navy-XXL.fromJson(json['1231-1-Navy-XXL']) : null;
    _1231-1-Navy-XL = json['1231-1-Navy-XL'] != null ? 1231-1-Navy-XL.fromJson(json['1231-1-Navy-XL']) : null;
    _1231-1-Navy-L = json['1231-1-Navy-L'] != null ? 1231-1-Navy-L.fromJson(json['1231-1-Navy-L']) : null;
    _1231-1-Navy-M = json['1231-1-Navy-M'] != null ? 1231-1-Navy-M.fromJson(json['1231-1-Navy-M']) : null;
    _1231-1-Navy-S = json['1231-1-Navy-S'] != null ? 1231-1-Navy-S.fromJson(json['1231-1-Navy-S']) : null;
    _1231-1-Maroon-S = json['1231-1-Maroon-S'] != null ? 1231-1-Maroon-S.fromJson(json['1231-1-Maroon-S']) : null;
    _1231-1-Pink-S = json['1231-1-Pink-S'] != null ? 1231-1-Pink-S.fromJson(json['1231-1-Pink-S']) : null;
    _1231-1-Maroon-XXL = json['1231-1-Maroon-XXL'] != null ? 1231-1-Maroon-XXL.fromJson(json['1231-1-Maroon-XXL']) : null;
    _1231-1-Pink-XXL = json['1231-1-Pink-XXL'] != null ? 1231-1-Pink-XXL.fromJson(json['1231-1-Pink-XXL']) : null;
    _1231-1-Maroon-XL = json['1231-1-Maroon-XL'] != null ? 1231-1-Maroon-XL.fromJson(json['1231-1-Maroon-XL']) : null;
    _1231-1-Pink-XL = json['1231-1-Pink-XL'] != null ? 1231-1-Pink-XL.fromJson(json['1231-1-Pink-XL']) : null;
    _1231-1-Maroon-L = json['1231-1-Maroon-L'] != null ? 1231-1-Maroon-L.fromJson(json['1231-1-Maroon-L']) : null;
    _1231-1-Pink-L = json['1231-1-Pink-L'] != null ? 1231-1-Pink-L.fromJson(json['1231-1-Pink-L']) : null;
    _1231-1-Maroon-M = json['1231-1-Maroon-M'] != null ? 1231-1-Maroon-M.fromJson(json['1231-1-Maroon-M']) : null;
    _1231-1-Pink-M = json['1231-1-Pink-M'] != null ? 1231-1-Pink-M.fromJson(json['1231-1-Pink-M']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_1231-1-Black-S != null) {
      map['1231-1-Black-S'] = _1231-1-Black-S?.toJson();
    }
    if (_1231-1-Black-XXL != null) {
      map['1231-1-Black-XXL'] = _1231-1-Black-XXL?.toJson();
    }
    if (_1231-1-Black-XL != null) {
      map['1231-1-Black-XL'] = _1231-1-Black-XL?.toJson();
    }
    if (_1231-1-Black-L != null) {
      map['1231-1-Black-L'] = _1231-1-Black-L?.toJson();
    }
    if (_1231-1-Black-M != null) {
      map['1231-1-Black-M'] = _1231-1-Black-M?.toJson();
    }
    if (_1231-1-Blue-M != null) {
      map['1231-1-Blue-M'] = _1231-1-Blue-M?.toJson();
    }
    if (_1231-1-Blue-S != null) {
      map['1231-1-Blue-S'] = _1231-1-Blue-S?.toJson();
    }
    if (_1231-1-Blue-XXL != null) {
      map['1231-1-Blue-XXL'] = _1231-1-Blue-XXL?.toJson();
    }
    if (_1231-1-Blue-XL != null) {
      map['1231-1-Blue-XL'] = _1231-1-Blue-XL?.toJson();
    }
    if (_1231-1-Blue-L != null) {
      map['1231-1-Blue-L'] = _1231-1-Blue-L?.toJson();
    }
    if (_1231-1-Brown-M != null) {
      map['1231-1-Brown-M'] = _1231-1-Brown-M?.toJson();
    }
    if (_1231-1-Brown-S != null) {
      map['1231-1-Brown-S'] = _1231-1-Brown-S?.toJson();
    }
    if (_1231-1-Brown-XXL != null) {
      map['1231-1-Brown-XXL'] = _1231-1-Brown-XXL?.toJson();
    }
    if (_1231-1-Brown-XL != null) {
      map['1231-1-Brown-XL'] = _1231-1-Brown-XL?.toJson();
    }
    if (_1231-1-Brown-L != null) {
      map['1231-1-Brown-L'] = _1231-1-Brown-L?.toJson();
    }
    if (_1231-1-Gray-M != null) {
      map['1231-1-Gray-M'] = _1231-1-Gray-M?.toJson();
    }
    if (_1231-1-Gray-S != null) {
      map['1231-1-Gray-S'] = _1231-1-Gray-S?.toJson();
    }
    if (_1231-1-Gray-XXL != null) {
      map['1231-1-Gray-XXL'] = _1231-1-Gray-XXL?.toJson();
    }
    if (_1231-1-Gray-XL != null) {
      map['1231-1-Gray-XL'] = _1231-1-Gray-XL?.toJson();
    }
    if (_1231-1-Gray-L != null) {
      map['1231-1-Gray-L'] = _1231-1-Gray-L?.toJson();
    }
    if (_1231-1-Green-L != null) {
      map['1231-1-Green-L'] = _1231-1-Green-L?.toJson();
    }
    if (_1231-1-Green-M != null) {
      map['1231-1-Green-M'] = _1231-1-Green-M?.toJson();
    }
    if (_1231-1-Green-S != null) {
      map['1231-1-Green-S'] = _1231-1-Green-S?.toJson();
    }
    if (_1231-1-Green-XXL != null) {
      map['1231-1-Green-XXL'] = _1231-1-Green-XXL?.toJson();
    }
    if (_1231-1-Green-XL != null) {
      map['1231-1-Green-XL'] = _1231-1-Green-XL?.toJson();
    }
    if (_1231-1-Lavender-L != null) {
      map['1231-1-Lavender-L'] = _1231-1-Lavender-L?.toJson();
    }
    if (_1231-1-Lavender-M != null) {
      map['1231-1-Lavender-M'] = _1231-1-Lavender-M?.toJson();
    }
    if (_1231-1-Lavender-S != null) {
      map['1231-1-Lavender-S'] = _1231-1-Lavender-S?.toJson();
    }
    if (_1231-1-Lavender-XXL != null) {
      map['1231-1-Lavender-XXL'] = _1231-1-Lavender-XXL?.toJson();
    }
    if (_1231-1-Lavender-XL != null) {
      map['1231-1-Lavender-XL'] = _1231-1-Lavender-XL?.toJson();
    }
    if (_1231-1-Multicolored-L != null) {
      map['1231-1-Multicolored-L'] = _1231-1-Multicolored-L?.toJson();
    }
    if (_1231-1-Multicolored-M != null) {
      map['1231-1-Multicolored-M'] = _1231-1-Multicolored-M?.toJson();
    }
    if (_1231-1-Multicolored-S != null) {
      map['1231-1-Multicolored-S'] = _1231-1-Multicolored-S?.toJson();
    }
    if (_1231-1-Multicolored-XXL != null) {
      map['1231-1-Multicolored-XXL'] = _1231-1-Multicolored-XXL?.toJson();
    }
    if (_1231-1-Multicolored-XL != null) {
      map['1231-1-Multicolored-XL'] = _1231-1-Multicolored-XL?.toJson();
    }
    if (_1231-1-Orange-XL != null) {
      map['1231-1-Orange-XL'] = _1231-1-Orange-XL?.toJson();
    }
    if (_1231-1-Orange-L != null) {
      map['1231-1-Orange-L'] = _1231-1-Orange-L?.toJson();
    }
    if (_1231-1-Orange-M != null) {
      map['1231-1-Orange-M'] = _1231-1-Orange-M?.toJson();
    }
    if (_1231-1-Orange-S != null) {
      map['1231-1-Orange-S'] = _1231-1-Orange-S?.toJson();
    }
    if (_1231-1-Orange-XXL != null) {
      map['1231-1-Orange-XXL'] = _1231-1-Orange-XXL?.toJson();
    }
    if (_1231-1-Purple-XL != null) {
      map['1231-1-Purple-XL'] = _1231-1-Purple-XL?.toJson();
    }
    if (_1231-1-Purple-L != null) {
      map['1231-1-Purple-L'] = _1231-1-Purple-L?.toJson();
    }
    if (_1231-1-Purple-M != null) {
      map['1231-1-Purple-M'] = _1231-1-Purple-M?.toJson();
    }
    if (_1231-1-Purple-S != null) {
      map['1231-1-Purple-S'] = _1231-1-Purple-S?.toJson();
    }
    if (_1231-1-Purple-XXL != null) {
      map['1231-1-Purple-XXL'] = _1231-1-Purple-XXL?.toJson();
    }
    if (_1231-1-Red-XL != null) {
      map['1231-1-Red-XL'] = _1231-1-Red-XL?.toJson();
    }
    if (_1231-1-Red-L != null) {
      map['1231-1-Red-L'] = _1231-1-Red-L?.toJson();
    }
    if (_1231-1-Red-M != null) {
      map['1231-1-Red-M'] = _1231-1-Red-M?.toJson();
    }
    if (_1231-1-Red-S != null) {
      map['1231-1-Red-S'] = _1231-1-Red-S?.toJson();
    }
    if (_1231-1-Red-XXL != null) {
      map['1231-1-Red-XXL'] = _1231-1-Red-XXL?.toJson();
    }
    if (_1231-1-White-XXL != null) {
      map['1231-1-White-XXL'] = _1231-1-White-XXL?.toJson();
    }
    if (_1231-1-White-XL != null) {
      map['1231-1-White-XL'] = _1231-1-White-XL?.toJson();
    }
    if (_1231-1-White-L != null) {
      map['1231-1-White-L'] = _1231-1-White-L?.toJson();
    }
    if (_1231-1-White-M != null) {
      map['1231-1-White-M'] = _1231-1-White-M?.toJson();
    }
    if (_1231-1-White-S != null) {
      map['1231-1-White-S'] = _1231-1-White-S?.toJson();
    }
    if (_1231-1-Yellow-XXL != null) {
      map['1231-1-Yellow-XXL'] = _1231-1-Yellow-XXL?.toJson();
    }
    if (_1231-1-Yellow-XL != null) {
      map['1231-1-Yellow-XL'] = _1231-1-Yellow-XL?.toJson();
    }
    if (_1231-1-Yellow-L != null) {
      map['1231-1-Yellow-L'] = _1231-1-Yellow-L?.toJson();
    }
    if (_1231-1-Yellow-M != null) {
      map['1231-1-Yellow-M'] = _1231-1-Yellow-M?.toJson();
    }
    if (_1231-1-Yellow-S != null) {
      map['1231-1-Yellow-S'] = _1231-1-Yellow-S?.toJson();
    }
    if (_1231-1-Black/Silver-XXL != null) {
      map['1231-1-Black/Silver-XXL'] = _1231-1-Black/Silver-XXL?.toJson();
    }
    if (_1231-1-Black/Silver-XL != null) {
      map['1231-1-Black/Silver-XL'] = _1231-1-Black/Silver-XL?.toJson();
    }
    if (_1231-1-Black/Silver-L != null) {
      map['1231-1-Black/Silver-L'] = _1231-1-Black/Silver-L?.toJson();
    }
    if (_1231-1-Black/Silver-M != null) {
      map['1231-1-Black/Silver-M'] = _1231-1-Black/Silver-M?.toJson();
    }
    if (_1231-1-Black/Silver-S != null) {
      map['1231-1-Black/Silver-S'] = _1231-1-Black/Silver-S?.toJson();
    }
    if (_1231-1-Navy-XXL != null) {
      map['1231-1-Navy-XXL'] = _1231-1-Navy-XXL?.toJson();
    }
    if (_1231-1-Navy-XL != null) {
      map['1231-1-Navy-XL'] = _1231-1-Navy-XL?.toJson();
    }
    if (_1231-1-Navy-L != null) {
      map['1231-1-Navy-L'] = _1231-1-Navy-L?.toJson();
    }
    if (_1231-1-Navy-M != null) {
      map['1231-1-Navy-M'] = _1231-1-Navy-M?.toJson();
    }
    if (_1231-1-Navy-S != null) {
      map['1231-1-Navy-S'] = _1231-1-Navy-S?.toJson();
    }
    if (_1231-1-Maroon-S != null) {
      map['1231-1-Maroon-S'] = _1231-1-Maroon-S?.toJson();
    }
    if (_1231-1-Pink-S != null) {
      map['1231-1-Pink-S'] = _1231-1-Pink-S?.toJson();
    }
    if (_1231-1-Maroon-XXL != null) {
      map['1231-1-Maroon-XXL'] = _1231-1-Maroon-XXL?.toJson();
    }
    if (_1231-1-Pink-XXL != null) {
      map['1231-1-Pink-XXL'] = _1231-1-Pink-XXL?.toJson();
    }
    if (_1231-1-Maroon-XL != null) {
      map['1231-1-Maroon-XL'] = _1231-1-Maroon-XL?.toJson();
    }
    if (_1231-1-Pink-XL != null) {
      map['1231-1-Pink-XL'] = _1231-1-Pink-XL?.toJson();
    }
    if (_1231-1-Maroon-L != null) {
      map['1231-1-Maroon-L'] = _1231-1-Maroon-L?.toJson();
    }
    if (_1231-1-Pink-L != null) {
      map['1231-1-Pink-L'] = _1231-1-Pink-L?.toJson();
    }
    if (_1231-1-Maroon-M != null) {
      map['1231-1-Maroon-M'] = _1231-1-Maroon-M?.toJson();
    }
    if (_1231-1-Pink-M != null) {
      map['1231-1-Pink-M'] = _1231-1-Pink-M?.toJson();
    }
    return map;
  }

}

class 1231-1-Pink-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Pink-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Pink-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Maroon-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Maroon-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Maroon-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Pink-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Pink-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Pink-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Maroon-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Maroon-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Maroon-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Pink-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Pink-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Pink-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Maroon-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Maroon-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Maroon-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Pink-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Pink-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Pink-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Maroon-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Maroon-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Maroon-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Pink-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Pink-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Pink-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Maroon-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Maroon-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Maroon-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Navy-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Navy-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Navy-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Navy-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Navy-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Navy-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Navy-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Navy-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Navy-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Navy-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Navy-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Navy-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Navy-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Navy-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Navy-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black/Silver-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black/Silver-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black/Silver-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black/Silver-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black/Silver-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black/Silver-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black/Silver-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black/Silver-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black/Silver-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black/Silver-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black/Silver-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black/Silver-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black/Silver-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black/Silver-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black/Silver-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Yellow-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Yellow-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Yellow-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Yellow-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Yellow-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Yellow-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Yellow-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Yellow-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Yellow-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Yellow-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Yellow-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Yellow-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Yellow-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Yellow-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Yellow-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-White-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-White-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-White-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-White-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-White-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-White-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-White-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-White-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-White-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-White-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-White-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-White-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-White-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-White-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-White-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Red-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Red-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Red-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Red-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Red-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Red-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Red-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Red-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Red-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Red-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Red-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Red-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Red-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Red-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Red-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Purple-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Purple-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Purple-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Purple-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Purple-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Purple-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Purple-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Purple-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Purple-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Purple-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Purple-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Purple-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Purple-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Purple-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Purple-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Orange-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Orange-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Orange-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Orange-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Orange-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Orange-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Orange-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Orange-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Orange-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Orange-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Orange-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Orange-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Orange-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Orange-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Orange-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Multicolored-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Multicolored-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Multicolored-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Multicolored-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Multicolored-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Multicolored-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Multicolored-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Multicolored-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Multicolored-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Multicolored-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Multicolored-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Multicolored-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Multicolored-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Multicolored-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Multicolored-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Lavender-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Lavender-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Lavender-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Lavender-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Lavender-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Lavender-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Lavender-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Lavender-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Lavender-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Lavender-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Lavender-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Lavender-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Lavender-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Lavender-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Lavender-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Green-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Green-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Green-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Green-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Green-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Green-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Green-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Green-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Green-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Green-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Green-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Green-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Green-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Green-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Green-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Gray-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Gray-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Gray-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Gray-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Gray-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Gray-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Gray-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Gray-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Gray-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Gray-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Gray-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Gray-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Gray-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Gray-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Gray-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Brown-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Brown-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Brown-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Brown-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Brown-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Brown-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Brown-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Brown-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Brown-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Brown-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Brown-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Brown-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Brown-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Brown-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Brown-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Blue-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Blue-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Blue-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Blue-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Blue-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Blue-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Blue-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Blue-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Blue-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Blue-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Blue-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Blue-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Blue-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Blue-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Blue-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black-M {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black-M({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black-M.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black-L {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black-L({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black-L.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black-XL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black-XL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black-XL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black-XXL {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black-XXL({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black-XXL.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class 1231-1-Black-S {
  String? _sku;
  Color? _color;
  Size? _size;
  int? _stock;
  String? _price;
  int? _finalPrice;

  String? get sku => _sku;
  Color? get color => _color;
  Size? get size => _size;
  int? get stock => _stock;
  String? get price => _price;
  int? get finalPrice => _finalPrice;

  1231-1-Black-S({
      String? sku, 
      Color? color, 
      Size? size, 
      int? stock, 
      String? price, 
      int? finalPrice}){
    _sku = sku;
    _color = color;
    _size = size;
    _stock = stock;
    _price = price;
    _finalPrice = finalPrice;
}

  1231-1-Black-S.fromJson(dynamic json) {
    _sku = json['sku'];
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
    _stock = json['stock'];
    _price = json['price'];
    _finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['sku'] = _sku;
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    map['stock'] = _stock;
    map['price'] = _price;
    map['final_price'] = _finalPrice;
    return map;
  }

}

class Size {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Size({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Size.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Color {
  String? _label;
  String? _id;

  String? get label => _label;
  String? get id => _id;

  Color({
      String? label, 
      String? id}){
    _label = label;
    _id = id;
}

  Color.fromJson(dynamic json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['id'] = _id;
    return map;
  }

}

class Configurable_options {
  Color? _color;
  Size? _size;

  Color? get color => _color;
  Size? get size => _size;

  Configurable_options({
      Color? color, 
      Size? size}){
    _color = color;
    _size = size;
}

  Configurable_options.fromJson(dynamic json) {
    _color = json['color'] != null ? Color.fromJson(json['color']) : null;
    _size = json['size'] != null ? Size.fromJson(json['size']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_color != null) {
      map['color'] = _color?.toJson();
    }
    if (_size != null) {
      map['size'] = _size?.toJson();
    }
    return map;
  }

}

class Size {
  String? _attributeId;
  String? _attributeCode;
  String? _label;
  List<Values>? _values;

  String? get attributeId => _attributeId;
  String? get attributeCode => _attributeCode;
  String? get label => _label;
  List<Values>? get values => _values;

  Size({
      String? attributeId, 
      String? attributeCode, 
      String? label, 
      List<Values>? values}){
    _attributeId = attributeId;
    _attributeCode = attributeCode;
    _label = label;
    _values = values;
}

  Size.fromJson(dynamic json) {
    _attributeId = json['attribute_id'];
    _attributeCode = json['attribute_code'];
    _label = json['label'];
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['attribute_id'] = _attributeId;
    map['attribute_code'] = _attributeCode;
    map['label'] = _label;
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Values {
  String? _id;
  String? _label;
  String? _type;
  String? _value;

  String? get id => _id;
  String? get label => _label;
  String? get type => _type;
  String? get value => _value;

  Values({
      String? id, 
      String? label, 
      String? type, 
      String? value}){
    _id = id;
    _label = label;
    _type = type;
    _value = value;
}

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _label = json['label'];
    _type = json['type'];
    _value = json['value'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['label'] = _label;
    map['type'] = _type;
    map['value'] = _value;
    return map;
  }

}

class Color {
  String? _attributeId;
  String? _attributeCode;
  String? _label;
  List<Values>? _values;

  String? get attributeId => _attributeId;
  String? get attributeCode => _attributeCode;
  String? get label => _label;
  List<Values>? get values => _values;

  Color({
      String? attributeId, 
      String? attributeCode, 
      String? label, 
      List<Values>? values}){
    _attributeId = attributeId;
    _attributeCode = attributeCode;
    _label = label;
    _values = values;
}

  Color.fromJson(dynamic json) {
    _attributeId = json['attribute_id'];
    _attributeCode = json['attribute_code'];
    _label = json['label'];
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['attribute_id'] = _attributeId;
    map['attribute_code'] = _attributeCode;
    map['label'] = _label;
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Values {
  String? _id;
  String? _label;
  String? _type;
  String? _value;

  String? get id => _id;
  String? get label => _label;
  String? get type => _type;
  String? get value => _value;

  Values({
      String? id, 
      String? label, 
      String? type, 
      String? value}){
    _id = id;
    _label = label;
    _type = type;
    _value = value;
}

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _label = json['label'];
    _type = json['type'];
    _value = json['value'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['label'] = _label;
    map['type'] = _type;
    map['value'] = _value;
    return map;
  }

}

class Seller {
  String? _name;
  String? _logo;
  String? _sellerId;
  String? _address;
  String? _isVerifiedSeller;
  String? _isPremiumSeller;

  String? get name => _name;
  String? get logo => _logo;
  String? get sellerId => _sellerId;
  String? get address => _address;
  String? get isVerifiedSeller => _isVerifiedSeller;
  String? get isPremiumSeller => _isPremiumSeller;

  Seller({
      String? name, 
      String? logo, 
      String? sellerId, 
      String? address, 
      String? isVerifiedSeller, 
      String? isPremiumSeller}){
    _name = name;
    _logo = logo;
    _sellerId = sellerId;
    _address = address;
    _isVerifiedSeller = isVerifiedSeller;
    _isPremiumSeller = isPremiumSeller;
}

  Seller.fromJson(dynamic json) {
    _name = json['name'];
    _logo = json['logo'];
    _sellerId = json['seller_id'];
    _address = json['address'];
    _isVerifiedSeller = json['is_verified_seller'];
    _isPremiumSeller = json['is_premium_seller'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['logo'] = _logo;
    map['seller_id'] = _sellerId;
    map['address'] = _address;
    map['is_verified_seller'] = _isVerifiedSeller;
    map['is_premium_seller'] = _isPremiumSeller;
    return map;
  }

}

class Custom_attribute {
  String? _label;
  String? _code;
  String? _value;

  String? get label => _label;
  String? get code => _code;
  String? get value => _value;

  Custom_attribute({
      String? label, 
      String? code, 
      String? value}){
    _label = label;
    _code = code;
    _value = value;
}

  Custom_attribute.fromJson(dynamic json) {
    _label = json['label'];
    _code = json['code'];
    _value = json['value'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = _label;
    map['code'] = _code;
    map['value'] = _value;
    return map;
  }

}

class Media_gallery_entries {
  String? _id;
  String? _mediaType;
  dynamic? _label;
  String? _position;
  List<String>? _types;
  String? _file;

  String? get id => _id;
  String? get mediaType => _mediaType;
  dynamic? get label => _label;
  String? get position => _position;
  List<String>? get types => _types;
  String? get file => _file;

  Media_gallery_entries({
      String? id, 
      String? mediaType, 
      dynamic? label, 
      String? position, 
      List<String>? types, 
      String? file}){
    _id = id;
    _mediaType = mediaType;
    _label = label;
    _position = position;
    _types = types;
    _file = file;
}

  Media_gallery_entries.fromJson(dynamic json) {
    _id = json['id'];
    _mediaType = json['media_type'];
    _label = json['label'];
    _position = json['position'];
    _types = json['types'] != null ? json['types'].cast<String>() : [];
    _file = json['file'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['media_type'] = _mediaType;
    map['label'] = _label;
    map['position'] = _position;
    map['types'] = _types;
    map['file'] = _file;
    return map;
  }

}*/