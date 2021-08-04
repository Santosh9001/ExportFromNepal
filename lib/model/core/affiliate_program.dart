/// id : 58
/// identifier : "affiliate-program"
/// title : "Affiliate Program"
/// page_layout : "1column"
/// meta_title : ""
/// meta_keywords : ""
/// meta_description : ""
/// content_heading : ""
/// content : "<p style=\"text-align: justify;\"><span data-contrast=\"auto\">ExportfromNepal.com is not just a platform to sell the Nepali products, it is just a medium to achieve our bigger goal of promoting Nepali products and contributing to the overall economy of Nepal. We are in a battle in the global arena to promote our products and unique identity. For, creating awareness and achieving this bigger goal, we are planning to collaborate with non-profit organizations.&nbsp;</span><span data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:160,&quot;335559740&quot;:259}\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span data-contrast=\"auto\">The social initiative is a mutual approach where we will be help</span><span data-contrast=\"auto\">ing</span><span data-contrast=\"auto\"> the non-profit organizations in creating awareness on the importance of consuming Nepali products and promoting different local brands to the global world. While working for the greater good, we will be supporting different impactful non-profit organizations as well.</span><span data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:160,&quot;335559740&quot;:259}\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span data-contrast=\"auto\">We have a provision of registering the non-profit organization on our platform.</span> <span data-contrast=\"auto\">(Partnering).</span><span data-contrast=\"auto\"> Once you (non-profit) register in our platform, we will provide you the </span><span data-contrast=\"auto\">dedicated url </span><span data-contrast=\"auto\">which you can promote in your social media platform or your website. For every purchase made by the customer via your platform we will be donating a </span><span data-contrast=\"auto\">1.0% </span><span data-contrast=\"auto\">to the particular organization.&nbsp;</span><span data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:160,&quot;335559740&quot;:259}\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span data-contrast=\"auto\">With the motto ‘Giving Back to Society’, we want to help financially to the organization whereas even promoting the local products of your own district. It is therefore, while promoting our platform we encourage you to promote your very own local product from your district. </span>&nbsp;<br>&nbsp;<br><span data-contrast=\"auto\">Simply </span><span data-contrast=\"auto\">export your products from</span><span data-contrast=\"auto\"> </span><strong><span data-contrast=\"auto\">exportfromnepal</span></strong><strong><span data-contrast=\"auto\">.com</span></strong><span data-contrast=\"auto\"> to support your favorite charity.</span><span data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559738&quot;:240,&quot;335559739&quot;:240,&quot;335559740&quot;:259}\">&nbsp;</span></p>\r\n<p><span data-contrast=\"auto\">Please contact us at <a href=\"mailto:nonprofit@exportfromnepal.com\">nonprofit@exportfromnepal.com </a>to register your non-profit organization.</span><span data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559738&quot;:240,&quot;335559739&quot;:240,&quot;335559740&quot;:259}\">&nbsp;</span></p>\r\n<div class=\"actions-toolbar\"><div class=\"primary\"><button class=\"action submit primary\" onclick=\"location.href='/affiliate/account/create'\"><span>Join Now</span></button></div></div>"
/// creation_time : "2020-07-31 08:08:46"
/// update_time : "2021-04-30 06:31:57"
/// sort_order : "0"
/// custom_theme : ""
/// custom_root_template : ""
/// active : true

class Affiliate_program {
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

  Affiliate_program({
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

  Affiliate_program.fromJson(dynamic json) {
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