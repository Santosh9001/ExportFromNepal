
class Categories {
  int? _id;
  int? _parentId;
  String? _name;
  String? _image;
  bool? _isActive;
  int? _position;
  int? _level;
  int? _productCount;
  List<Children_data>? _childrenData;

  int? get id => _id;
  int? get parentId => _parentId;
  String? get name => _name;
  String? get image => _image;
  bool? get isActive => _isActive;
  int? get position => _position;
  int? get level => _level;
  int? get productCount => _productCount;
  List<Children_data>? get childrenData => _childrenData;

  Categories({
      int? id, 
      int? parentId, 
      String? name, 
      String? image, 
      bool? isActive, 
      int? position, 
      int? level, 
      int? productCount, 
      List<Children_data>? childrenData}){
    _id = id;
    _parentId = parentId;
    _name = name;
    _image = image;
    _isActive = isActive;
    _position = position;
    _level = level;
    _productCount = productCount;
    _childrenData = childrenData;
}

  Categories.fromJson(dynamic json) {
    _id = json["id"];
    _parentId = json["parent_id"];
    _name = json["name"];
    _image = json["image"];
    _isActive = json["is_active"];
    _position = json["position"];
    _level = json["level"];
    _productCount = json["product_count"];
    if (json["children_data"] != null) {
      _childrenData = [];
      json["children_data"].forEach((v) {
        _childrenData?.add(Children_data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["parent_id"] = _parentId;
    map["name"] = _name;
    map["image"] = _image;
    map["is_active"] = _isActive;
    map["position"] = _position;
    map["level"] = _level;
    map["product_count"] = _productCount;
    if (_childrenData != null) {
      map["children_data"] = _childrenData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Children_data {
  int? _id;
  int? _parentId;
  String? _name;
  String? _image;
  bool? _isActive;
  int? _position;
  int? _level;
  int? _productCount;
  List<Children_data>? _childrenData;

  int? get id => _id;
  int? get parentId => _parentId;
  String? get name => _name;
  String? get image => _image;
  bool? get isActive => _isActive;
  int? get position => _position;
  int? get level => _level;
  int? get productCount => _productCount;
  List<Children_data>? get childrenData => _childrenData;

  Children_data({
      int? id, 
      int? parentId, 
      String? name, 
      String? image, 
      bool? isActive, 
      int? position, 
      int? level, 
      int? productCount, 
      List<Children_data>? childrenData}){
    _id = id;
    _parentId = parentId;
    _name = name;
    _image = image;
    _isActive = isActive;
    _position = position;
    _level = level;
    _productCount = productCount;
    _childrenData = childrenData;
}

  Children_data.fromJson(dynamic json) {
    _id = json["id"];
    _parentId = json["parent_id"];
    _name = json["name"];
    _image = json["image"];
    _isActive = json["is_active"];
    _position = json["position"];
    _level = json["level"];
    _productCount = json["product_count"];
    if (json["children_data"] != null) {
      _childrenData = [];
      json["children_data"].forEach((v) {
        _childrenData?.add(Children_data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["parent_id"] = _parentId;
    map["name"] = _name;
    map["image"] = _image;
    map["is_active"] = _isActive;
    map["position"] = _position;
    map["level"] = _level;
    map["product_count"] = _productCount;
    if (_childrenData != null) {
      map["children_data"] = _childrenData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}