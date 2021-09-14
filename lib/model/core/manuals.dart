class Manuals {
  List<Items>? _items;
  Search_criteria? _searchCriteria;
  int? _totalCount;

  List<Items>? get items => _items;
  int? get totalCount => _totalCount;

  Manuals(
      {List<Items>? items, Search_criteria? searchCriteria, int? totalCount}) {
    _items = items;
    _searchCriteria = searchCriteria;
    _totalCount = totalCount;
  }

  Manuals.fromJson(dynamic json) {
    if (json["items"] != null) {
      _items = [];
      json["items"].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _totalCount = json["total_count"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_items != null) {
      map["items"] = _items?.map((v) => v.toJson()).toList();
    }
    if (_searchCriteria != null) {
      map["search_criteria"] = _searchCriteria?.toJson();
    }
    map["total_count"] = _totalCount;
    return map;
  }
}

class Search_criteria {
  List<dynamic>? _filterGroups;

  List<dynamic>? get filterGroups => _filterGroups;

  Search_criteria({List<dynamic>? filterGroups}) {
    _filterGroups = filterGroups;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_filterGroups != null) {
      map["filter_groups"] = _filterGroups?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Items {
  String? _manualId;
  String? _file;
  String? _name;

  String? get manualId => _manualId;
  String? get file => _file;
  String? get name => _name;

  Items({String? manualId, String? file, String? name}) {
    _manualId = manualId;
    _file = file;
    _name = name;
  }

  Items.fromJson(dynamic json) {
    _manualId = json["manual_id"];
    _file = json["file"];
    _name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["manual_id"] = _manualId;
    map["file"] = _file;
    map["name"] = _name;
    return map;
  }
}
