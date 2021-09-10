class User_blogs {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  User_blogs({
      bool? status, 
      String? message, 
      Data? data}){
    _status = status;
    _message = message;
    _data = data;
}

  User_blogs.fromJson(dynamic json) {
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
  List<BCategories>? _categories;
  List<String>? _archive;
  int? _total;
  int? _currentPage;
  String? _pageSize;
  int? _lastPage;

  List<Items>? get items => _items;
  List<BCategories>? get categories => _categories;
  List<String>? get archive => _archive;
  int? get total => _total;
  int? get currentPage => _currentPage;
  String? get pageSize => _pageSize;
  int? get lastPage => _lastPage;

  Data({
      List<Items>? items, 
      List<BCategories>? categories, 
      List<String>? archive, 
      int? total, 
      int? currentPage, 
      String? pageSize, 
      int? lastPage}){
    _items = items;
    _categories = categories;
    _archive = archive;
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
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(BCategories.fromJson(v));
      });
    }
    _archive = json['archive'] != null ? json['archive'].cast<String>() : [];
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
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['archive'] = _archive;
    map['total'] = _total;
    map['currentPage'] = _currentPage;
    map['pageSize'] = _pageSize;
    map['lastPage'] = _lastPage;
    return map;
  }

}

class Categories {
  String? _id;
  String? _title;

  String? get id => _id;
  String? get title => _title;

  Categories({
      String? id, 
      String? title}){
    _id = id;
    _title = title;
}

  Categories.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    return map;
  }

}

class Items {
  String? _title;
  String? _publishTime;
  String? _shortContent;
  bool? _featuredImage;
  List<Categories>? _categories;
  String? _author;

  String? get title => _title;
  String? get publishTime => _publishTime;
  String? get shortContent => _shortContent;
  bool? get featuredImage => _featuredImage;
  List<Categories>? get categories => _categories;
  String? get author => _author;

  Items({
      String? title, 
      String? publishTime, 
      String? shortContent, 
      bool? featuredImage, 
      List<Categories>? categories, 
      String? author}){
    _title = title;
    _publishTime = publishTime;
    _shortContent = shortContent;
    _featuredImage = featuredImage;
    _categories = categories;
    _author = author;
}

  Items.fromJson(dynamic json) {
    _title = json['title'];
    _publishTime = json['publish_time'];
    _shortContent = json['short_content'];
    _featuredImage = json['featured_image'];
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Categories.fromJson(v));
      });
    }
    _author = json['author'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['title'] = _title;
    map['publish_time'] = _publishTime;
    map['short_content'] = _shortContent;
    map['featured_image'] = _featuredImage;
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['author'] = _author;
    return map;
  }

}

class BCategories {
  String? _categoryId;
  String? _title;

  String? get categoryId => _categoryId;
  String? get title => _title;

  BCategories({
      String? categoryId, 
      String? title}){
    _categoryId = categoryId;
    _title = title;
}

  BCategories.fromJson(dynamic json) {
    _categoryId = json['category_id'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['category_id'] = _categoryId;
    map['title'] = _title;
    return map;
  }

}