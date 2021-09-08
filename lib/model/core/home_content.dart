class Home_content {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Home_content({
      bool? status, 
      String? message, 
      Data? data}){
    _status = status;
    _message = message;
    _data = data;
}

  Home_content.fromJson(dynamic json) {
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
  Advertisement? _advertisement;
  Notice? _notice;
  Bannerslider? _bannerslider;
  Collection? _collection;

  Advertisement? get advertisement => _advertisement;
  Notice? get notice => _notice;
  Bannerslider? get bannerslider => _bannerslider;
  Collection? get collection => _collection;

  Data({
      Advertisement? advertisement, 
      Notice? notice, 
      Bannerslider? bannerslider, 
      Collection? collection}){
    _advertisement = advertisement;
    _notice = notice;
    _bannerslider = bannerslider;
    _collection = collection;
}

  Data.fromJson(dynamic json) {
    _advertisement = json['advertisement'] != null ? Advertisement.fromJson(json['advertisement']) : null;
    _notice = json['notice'] != null ? Notice.fromJson(json['notice']) : null;
    _bannerslider = json['bannerslider'] != null ? Bannerslider.fromJson(json['bannerslider']) : null;
    _collection = json['collection'] != null ? Collection.fromJson(json['collection']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_advertisement != null) {
      map['advertisement'] = _advertisement?.toJson();
    }
    if (_notice != null) {
      map['notice'] = _notice?.toJson();
    }
    if (_bannerslider != null) {
      map['bannerslider'] = _bannerslider?.toJson();
    }
    if (_collection != null) {
      map['collection'] = _collection?.toJson();
    }
    return map;
  }

}

class Collection {
  List<Items>? _items;

  List<Items>? get items => _items;

  Collection({
      List<Items>? items}){
    _items = items;
}

  Collection.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  String? _name;
  String? _image;
  int? _categoryId;

  String? get name => _name;
  String? get image => _image;
  int? get categoryId => _categoryId;

  Items({
      String? name, 
      String? image, 
      int? categoryId}){
    _name = name;
    _image = image;
    _categoryId = categoryId;
}

  Items.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['category_id'] = _categoryId;
    return map;
  }

}

class Bannerslider {
  List<BannerItems>? _items;

  List<BannerItems>? get items => _items;

  Bannerslider({
      List<BannerItems>? items}){
    _items = items;
}

  Bannerslider.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(BannerItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class BannerItems {
  String? _name;
  String? _image;
  String? _link;

  String? get name => _name;
  String? get image => _image;
  String? get link => _link;

  BannerItems({
      String? name, 
      String? image, 
      String? link}){
    _name = name;
    _image = image;
    _link = link;
}

  BannerItems.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _link = json['link'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['link'] = _link;
    return map;
  }

}

class Notice {
  String? _data;

  String? get data => _data;

  Notice({
      String? data}){
    _data = data;
}

  Notice.fromJson(dynamic json) {
    _data = json['data'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['data'] = _data;
    return map;
  }

}

class Advertisement {
  String? _image;
  String? _url;

  String? get image => _image;
  String? get url => _url;

  Advertisement({
      String? image, 
      String? url}){
    _image = image;
    _url = url;
}

  Advertisement.fromJson(dynamic json) {
    _image = json['image'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['image'] = _image;
    map['url'] = _url;
    return map;
  }

}