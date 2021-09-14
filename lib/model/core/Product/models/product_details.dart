class Product_details {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Product_details({bool? status, String? message, Data? data}) {
    _status = status;
    _message = message;
    _data = data;
  }

  Product_details.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  ProductData? _product;
  Reviews? _reviews;
  List<Related_product>? _relatedProduct;

  ProductData? get product => _product;
  Reviews? get reviews => _reviews;
  List<Related_product>? get relatedProduct => _relatedProduct;

  Data(
      {ProductData? product,
      Reviews? reviews,
      List<Related_product>? relatedProduct}) {
    _product = product;
    _reviews = reviews;
    _relatedProduct = relatedProduct;
  }

  Data.fromJson(dynamic json) {
    _product =
        json['product'] != null ? ProductData.fromJson(json['product']) : null;
    _reviews =
        json['reviews'] != null ? Reviews.fromJson(json['reviews']) : null;
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

  Related_product(
      {String? id,
      String? sku,
      String? name,
      int? finalPrice,
      int? price,
      String? image,
      String? sellerName,
      String? sellerLogo}) {
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
  List<Items>? _items;
  String? _avgRatingPercent;
  int? _total;
  int? _currentPage;
  int? _pageSize;
  int? _lastPage;

  List<Items>? get items => _items;
  String? get avgRatingPercent => _avgRatingPercent;
  int? get total => _total;
  int? get currentPage => _currentPage;
  int? get pageSize => _pageSize;
  int? get lastPage => _lastPage;

  Reviews(
      {List<Items>? items,
      String? avgRatingPercent,
      int? total,
      int? currentPage,
      int? pageSize,
      int? lastPage}) {
    _items = items;
    _avgRatingPercent = avgRatingPercent;
    _total = total;
    _currentPage = currentPage;
    _pageSize = pageSize;
    _lastPage = lastPage;
  }

  Reviews.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _avgRatingPercent = json['avg_rating_percent'];
    _total = json['total'];
    _currentPage = json['currentPage'];
    _pageSize = json['pageSize'];
    _lastPage = json['lastPage'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['avg_rating_percent'] = _avgRatingPercent;
    map['total'] = _total;
    map['currentPage'] = _currentPage;
    map['pageSize'] = _pageSize;
    map['lastPage'] = _lastPage;
    return map;
  }
}

class Items {
  String? _reviewId;
  String? _createdAt;
  String? _title;
  String? _detail;
  String? _nickname;
  String? _rating;
  String? _ratingPercent;

  String? get reviewId => _reviewId;
  String? get createdAt => _createdAt;
  String? get title => _title;
  String? get detail => _detail;
  String? get nickname => _nickname;
  String? get rating => _rating;
  String? get ratingPercent => _ratingPercent;

  Items(
      {String? reviewId,
      String? createdAt,
      String? title,
      String? detail,
      String? nickname,
      String? rating,
      String? ratingPercent}) {
    _reviewId = reviewId;
    _createdAt = createdAt;
    _title = title;
    _detail = detail;
    _nickname = nickname;
    _rating = rating;
    _ratingPercent = ratingPercent;
  }

  Items.fromJson(dynamic json) {
    _reviewId = json['review_id'];
    _createdAt = json['created_at'];
    _title = json['title'];
    _detail = json['detail'];
    _nickname = json['nickname'];
    _rating = json['rating'];
    _ratingPercent = json['rating_percent'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['review_id'] = _reviewId;
    map['created_at'] = _createdAt;
    map['title'] = _title;
    map['detail'] = _detail;
    map['nickname'] = _nickname;
    map['rating'] = _rating;
    map['rating_percent'] = _ratingPercent;
    return map;
  }
}

class ProductData {
  String? _id;
  String? _name;
  String? _sku;
  double? _price;
  double? _finalPrice;
  double? _specialPrice;
  String? _specialFromDate;
  String? _specialToDate;
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
  List<dynamic>? _configurableOptions;
  List<dynamic>? _configurableOptionsLink;

  String? get id => _id;
  String? get name => _name;
  String? get sku => _sku;
  double? get price => _price;
  double? get finalPrice => _finalPrice;
  double? get specialPrice => _specialPrice;
  String? get specialFromDate => _specialFromDate;
  String? get specialToDate => _specialToDate;
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
  List<dynamic>? get configurableOptions => _configurableOptions;
  List<dynamic>? get configurableOptionsLink => _configurableOptionsLink;

  ProductData(
      {String? id,
      String? name,
      String? sku,
      double? price,
      double? finalPrice,
      double? specialPrice,
      String? specialFromDate,
      String? specialToDate,
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
      List<dynamic>? configurableOptions,
      List<dynamic>? configurableOptionsLink}) {
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

  ProductData.fromJson(dynamic json) {
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
    _description = json['description'];
    _shortDescription = json['short_description'];
    _inStock = json['in_stock'];
    _supplierType = json['supplier_type'] != null
        ? json['supplier_type'].cast<String>()
        : [];
    if (json['custom_attribute'] != null) {
      _customAttribute = [];
      json['custom_attribute'].forEach((v) {
        _customAttribute?.add(Custom_attribute.fromJson(v));
      });
    }
    _seller = json['seller'] != null ? Seller.fromJson(json['seller']) : null;
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
      map['media_gallery_entries'] =
          _mediaGalleryEntries?.map((v) => v.toJson()).toList();
    }
    if (_tierPrices != null) {
      map['tier_prices'] = _tierPrices?.map((v) => v.toJson()).toList();
    }
    map['description'] = _description;
    map['short_description'] = _shortDescription;
    map['in_stock'] = _inStock;
    map['supplier_type'] = _supplierType;
    if (_customAttribute != null) {
      map['custom_attribute'] =
          _customAttribute?.map((v) => v.toJson()).toList();
    }
    if (_seller != null) {
      map['seller'] = _seller?.toJson();
    }
    if (_configurableOptions != null) {
      map['configurable_options'] =
          _configurableOptions?.map((v) => v.toJson()).toList();
    }
    if (_configurableOptionsLink != null) {
      map['configurable_options_link'] =
          _configurableOptionsLink?.map((v) => v.toJson()).toList();
    }
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

  Seller(
      {String? name,
      String? logo,
      String? sellerId,
      String? address,
      String? isVerifiedSeller,
      String? isPremiumSeller}) {
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

  Custom_attribute({String? label, String? code, String? value}) {
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

  Media_gallery_entries(
      {String? id,
      String? mediaType,
      dynamic? label,
      String? position,
      List<String>? types,
      String? file}) {
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
}
