/// id : 5
/// identifier : "about-us"
/// title : "About us"
/// page_layout : "1column"
/// meta_title : ""
/// meta_keywords : ""
/// meta_description : ""
/// content_heading : "About us"
/// content : "<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Founded in 2020, Export from Nepal is a leading comprehensive full-fledged third-party B2B-B2C hybrid e-commerce marketplace platform developed and operated by Him Tech Inc. in a collaborative approach with Export From Nepal Pvt. Ltd. dedicated to serving global trade focusing on providing a platform to small, medium, and large enterprises as well as retailers of specific regions selling high-quality Nepali products and services to global consumers. This is the global marketplace for high quality made in Nepal products and services.&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Being Nepal’s first export-based global e-commerce marketplace for Nepali product-driven exporters, importers, wholesalers, retailers, and end consumers, we are dedicated to filling the gap between global buyers and Nepali suppliers. As a company, we strive to lead with our guiding principles and to help spread the idea of sustainable, handmade, eco-friendly, natural, and wellness products.</span></p>\r\n<p><strong>Vision</strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Our vision is to scale up the Nepalese export industry by being the first and foremost consumer-driven Nepalese global e-commerce platform ensuring the reach of Nepalese products in every nook of the world.</span></p>\r\n<p><strong>Mission</strong></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">To facilitate global trade between worldwide buyers and Nepali product-driven sellers.</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">To provide accurate information about Nepali products and sellers to global buyers</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">To help buyers and suppliers communicate and do business with each other effectively and efficiently&nbsp;</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">To provide a secure way of payment and escrow service for buyers &amp; sellers protection</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">To provide the guidelines for preparation, packaging, shipment and reliable services</span></li>\r\n</ul>"
/// creation_time : "2020-05-11 10:22:46"
/// update_time : "2020-08-14 08:55:30"
/// sort_order : "0"
/// custom_theme : ""
/// custom_root_template : ""
/// active : true

class Aboutus {
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

  Aboutus({
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

  Aboutus.fromJson(dynamic json) {
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