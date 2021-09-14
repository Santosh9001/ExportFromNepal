class Product {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Product({
      bool? status, 
      String? message, 
      Data? data}){
    _status = status;
    _message = message;
    _data = data;
}

  Product.fromJson(dynamic json) {
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

  Data({
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

  Data.fromJson(dynamic json) {
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
  String? _attrCode;
  String? _attrLabel;
  List<Values>? _values;

  String? get attrCode => _attrCode;
  String? get attrLabel => _attrLabel;
  List<Values>? get values => _values;

  Filter({
      String? attrCode, 
      String? attrLabel, 
      List<Values>? values}){
    _attrCode = attrCode;
    _attrLabel = attrLabel;
    _values = values;
}

  Filter.fromJson(dynamic json) {
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
  dynamic _display;
  dynamic _value;
  dynamic _count;

  dynamic get display => _display;
  dynamic get value => _value;
  dynamic get count => _count;

  Values({
    dynamic display,
    dynamic value,
    dynamic count}){
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
  dynamic _id;
  String? _sku;
  String? _name;
  dynamic _finalPrice;
  dynamic _price;
  String? _image;
  String? _sellerName;
  String? _sellerLogo;

  dynamic get id => _id;
  String? get sku => _sku;
  String? get name => _name;
  dynamic get finalPrice => _finalPrice;
  dynamic get price => _price;
  String? get image => _image;
  String? get sellerName => _sellerName;
  String? get sellerLogo => _sellerLogo;

  Items({
    dynamic id,
      String? sku, 
      String? name, 
      dynamic finalPrice,
      dynamic price,
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