class Categories {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Categories({bool? status, String? message, Data? data}) {
    _status = status;
    _message = message;
    _data = data;
  }

  Categories.fromJson(dynamic json) {
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
  List<CategoryItems>? _categoryItems;

  List<CategoryItems>? get categoryItems => _categoryItems;

  Data({List<CategoryItems>? categoryItems}) {
    _categoryItems = categoryItems;
  }

  Data.fromJson(dynamic json) {
    if (json['items'] != null) {
      _categoryItems = [];
      json['items'].forEach((v) {
        _categoryItems?.add(CategoryItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_categoryItems != null) {
      map['items'] = _categoryItems?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CategoryItems {
  String? _id;
  String? _parentId;
  String? _name;
  String? _image;
  String? _isActive;
  String? _position;
  String? _level;
  int? _productCount;
  String? _childrenCount;

  String? get id => _id;
  String? get parentId => _parentId;
  String? get name => _name;
  String? get image => _image;
  String? get isActive => _isActive;
  String? get position => _position;
  String? get level => _level;
  int? get productCount => _productCount;
  String? get childrenCount => _childrenCount;

  CategoryItems(
      {String? id,
      String? parentId,
      String? name,
      String? image,
      String? isActive,
      String? position,
      String? level,
      int? productCount,
      String? childrenCount}) {
    _id = id;
    _parentId = parentId;
    _name = name;
    _image = image;
    _isActive = isActive;
    _position = position;
    _level = level;
    _productCount = productCount;
    _childrenCount = childrenCount;
  }

  CategoryItems.fromJson(dynamic json) {
    _id = json['id'];
    _parentId = json['parent_id'];
    _name = json['name'];
    _image = json['image'];
    _isActive = json['is_active'];
    _position = json['position'];
    _level = json['level'];
    _productCount = json['product_count'];
    _childrenCount = json['children_count'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['parent_id'] = _parentId;
    map['name'] = _name;
    map['image'] = _image;
    map['is_active'] = _isActive;
    map['position'] = _position;
    map['level'] = _level;
    map['product_count'] = _productCount;
    map['children_count'] = _childrenCount;
    return map;
  }
}
