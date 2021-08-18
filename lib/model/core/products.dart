class Products {
  List<Items>? _items;
  List<Filter>? _filter;
  int? _total;
  int? _currentPage;
  int? _pageSize;
  int? _lastPage;

  List<Items>? get items => _items;
  List<Filter>? get filter => _filter;
  int? get total => _total;
  int? get currentPage => _currentPage;
  int? get pageSize => _pageSize;
  int? get lastPage => _lastPage;

  Products({
      List<Items>? items, 
      List<Filter>? filter, 
      int? total, 
      int? currentPage, 
      int? pageSize, 
      int? lastPage}){
    _items = items;
    _filter = filter;
    _total = total;
    _currentPage = currentPage;
    _pageSize = pageSize;
    _lastPage = lastPage;
}

  Products.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    if (json['filter'] != null) {
      _filter = [];
      json['filter'].forEach((v) {
        _filter?.add(Filter.fromJson(v));
      });
    }
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
    if (_filter != null) {
      map['filter'] = _filter?.map((v) => v.toJson()).toList();
    }
    map['total'] = _total;
    map['currentPage'] = _currentPage;
    map['pageSize'] = _pageSize;
    map['lastPage'] = _lastPage;
    return map;
  }

}


class Filter {
  WeightVariant? _weightVariant;

  WeightVariant? get weightVariant => _weightVariant;

  Filter({
      WeightVariant? weightVariant}){
    _weightVariant = weightVariant;
}

  Filter.fromJson(dynamic json) {
    _weightVariant = json['Weight Variant'] != null ? WeightVariant.fromJson(json['Weight Variant']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_weightVariant != null) {
      map['Weight Variant'] = _weightVariant?.toJson();
    }
    return map;
  }

}

class WeightVariant {
  String? _attrCode;
  String? _attrLabel;
  List<Values>? _values;

  String? get attrCode => _attrCode;
  String? get attrLabel => _attrLabel;
  List<Values>? get values => _values;

  WeightVariant({
      String? attrCode, 
      String? attrLabel, 
      List<Values>? values}){
    _attrCode = attrCode;
    _attrLabel = attrLabel;
    _values = values;
}

  WeightVariant.fromJson(dynamic json) {
    _attrCode = json['attr_code'];
    _attrLabel = json['attr_label'];
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['attr_code'] = _attrCode;
    map['attr_label'] = _attrLabel;
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Values {
  String? _display;
  String? _value;
  String? _count;

  String? get display => _display;
  String? get value => _value;
  String? get count => _count;

  Values({
      String? display, 
      String? value, 
      String? count}){
    _display = display;
    _value = value;
    _count = count;
}

  Values.fromJson(dynamic json) {
    _display = json['display'];
    _value = json['value'];
    _count = json['count'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['display'] = _display;
    map['value'] = _value;
    map['count'] = _count;
    return map;
  }

}

class Items {
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

  Items({
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

  Items.fromJson(dynamic json) {
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