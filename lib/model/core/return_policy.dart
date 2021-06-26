/// id : 52
/// identifier : "return-policy"
/// title : "Return Policy"
/// page_layout : "1column"
/// meta_title : ""
/// meta_keywords : ""
/// meta_description : ""
/// content_heading : "Return Policy"
/// content : "<p style=\"text-align: justify;\">Since EXPORT FROM NEPAL is the digital marketplace provider, each seller will have their own return policy. We request all buyers to find out the return policy from the supplier before you complete the order. Buyers can view the privacy policy listed in the suppliers profile.</p>"
/// creation_time : "2020-05-15 07:27:33"
/// update_time : "2020-08-24 11:00:40"
/// sort_order : "0"
/// custom_theme : ""
/// custom_root_template : ""
/// active : true

class Return_policy {
  int? _id;
  String? _identifier;
  String? _title;
  String? _pageLayout;
  String? _metaTitle;
  String? _metaKeywords;
  String? _metaDescription;
  String? _contentHeading;
  String? _content;
  String? _creationTime;
  String? _updateTime;
  String? _sortOrder;
  String? _customTheme;
  String? _customRootTemplate;
  bool? _active;

  int? get id => _id;
  String? get identifier => _identifier;
  String? get title => _title;
  String? get pageLayout => _pageLayout;
  String? get metaTitle => _metaTitle;
  String? get metaKeywords => _metaKeywords;
  String? get metaDescription => _metaDescription;
  String? get contentHeading => _contentHeading;
  String? get content => _content;
  String? get creationTime => _creationTime;
  String? get updateTime => _updateTime;
  String? get sortOrder => _sortOrder;
  String? get customTheme => _customTheme;
  String? get customRootTemplate => _customRootTemplate;
  bool? get active => _active;

  Return_policy({
      int? id, 
      String? identifier, 
      String? title, 
      String? pageLayout, 
      String? metaTitle, 
      String? metaKeywords, 
      String? metaDescription, 
      String? contentHeading, 
      String? content, 
      String? creationTime, 
      String? updateTime, 
      String? sortOrder, 
      String? customTheme, 
      String? customRootTemplate, 
      bool? active}){
    _id = id;
    _identifier = identifier;
    _title = title;
    _pageLayout = pageLayout;
    _metaTitle = metaTitle;
    _metaKeywords = metaKeywords;
    _metaDescription = metaDescription;
    _contentHeading = contentHeading;
    _content = content;
    _creationTime = creationTime;
    _updateTime = updateTime;
    _sortOrder = sortOrder;
    _customTheme = customTheme;
    _customRootTemplate = customRootTemplate;
    _active = active;
}

  Return_policy.fromJson(dynamic json) {
    _id = json["id"];
    _identifier = json["identifier"];
    _title = json["title"];
    _pageLayout = json["page_layout"];
    _metaTitle = json["meta_title"];
    _metaKeywords = json["meta_keywords"];
    _metaDescription = json["meta_description"];
    _contentHeading = json["content_heading"];
    _content = json["content"];
    _creationTime = json["creation_time"];
    _updateTime = json["update_time"];
    _sortOrder = json["sort_order"];
    _customTheme = json["custom_theme"];
    _customRootTemplate = json["custom_root_template"];
    _active = json["active"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["identifier"] = _identifier;
    map["title"] = _title;
    map["page_layout"] = _pageLayout;
    map["meta_title"] = _metaTitle;
    map["meta_keywords"] = _metaKeywords;
    map["meta_description"] = _metaDescription;
    map["content_heading"] = _contentHeading;
    map["content"] = _content;
    map["creation_time"] = _creationTime;
    map["update_time"] = _updateTime;
    map["sort_order"] = _sortOrder;
    map["custom_theme"] = _customTheme;
    map["custom_root_template"] = _customRootTemplate;
    map["active"] = _active;
    return map;
  }

}