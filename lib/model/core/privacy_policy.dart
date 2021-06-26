/// id : 48
/// identifier : "privacy-policy"
/// title : "Privacy Policy"
/// page_layout : "1column"
/// meta_title : ""
/// meta_keywords : ""
/// meta_description : ""
/// content_heading : "Privacy Policy"
/// content : "<div class=\"privacy-policy cms-content\">\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">ExportfromNepal.com values ‘Trust’ which is what binds us to create efficient services to our stakeholders along with creating deeper relationships with our stakeholders, customers and our employees. We are highly concerned about the trust that you have shown to us, and we ensure that your personal information will be handled and used sensibly and ethically. The privacy policy provides detailed information on how your personal information is collected, used and in certain conditions disclosed in accordance with the product and services offered by ExportfromNepal.com</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">This privacy policy is applied to all the users accessing our platform via websites or mobile application. Being a Business to Business (B2B) as well as Business to Customer (B2C) platform, the privacy policy will be applied to all the sellers as well as buyers registering in our platform.For those visiting our website doesn’t have to worry about their personal information unless you register your account for selling or buying.&nbsp;</span></p>\r\n<p><strong>We would request every user, stakeholders and customers to periodically read our privacy policy as with the changing time and new situations the privacy policy is subject to change without prior notice.&nbsp;</strong></p>\r\n<p><strong>By visiting and registering yourself on our website you are accepting the privacy policy described here.&nbsp;</strong></p>\r\n<h3><span style=\"font-weight: 400;\">1. Personal Information collection:&nbsp;</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">You don’t need an account to browse and visit our website, which means you don't have to provide any information while browsing. However, if you purchase any order, </span><span style=\"font-weight: 400;\">the account should be created with your personal information. The personal information that you are asked for registration like name, telephone number, email address, payment details, delivery address and any other information are the one we collect.&nbsp;&nbsp;</span></p>\r\n<h3><span style=\"font-weight: 400;\">2. Uses of your personal information:</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The information you provided are must for processing your purchase and having safe and efficient delivery of the product. </span><span style=\"font-weight: 400;\">In addition your information lets us provide you with customized services and features that most likely meet your needs and to make your shopping experience safer and efficient.&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The information will also be provided to the sellers and third party in order to deliver your products, enhance customer services, resolving disputes. In addition, the information is used to do internal market analysis for knowing the customers demands and demography. We also use this data in suggesting your desired products, notifying you new changes and for other services. <br></span></p>\r\n<h3><span style=\"font-weight: 400;\">3. Disclosing your information:</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">We will not disclose and sell your information for any commercial and personal benefits apart from making the customer service more efficient and safer. Your personal information will only be provided to the needed staff, our sellers and third parties involved in the delivery of your products.&nbsp;</span></p>\r\n<h3><span style=\"font-weight: 400;\">4. Cookies:</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The cookies have been used in our website to make your presence more convenient. Cookies are the tiny texts that help us in identifying you as an unique entity and your preferences that you made on our website. Cookies allow us to monitor the action you have taken in our website and</span><span style=\"font-weight: 400;\"> collect your information which web pages you browse, the links or advertisements you viewed.</span><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<h3><span style=\"font-weight: 400;\">5. Data Security</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">We not only ensure not misusing your data by our organization but also make sure that we applied the most advanced and appropriate security measures to protect unlawful access, misuse and destruction of your personal information. We provided the secure server for storing your personal information disabling any unauthorized access.&nbsp;</span></p>\r\n<h3><span style=\"font-weight: 400;\">6. Your consent and right</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The personal information you provide to us during your registration is purely a voluntary act, therefore by using our website and providing the personal information, you consent us on using the information as mentioned above in this privacy policy. You also have a right to request for your personal data if you feel any misuse have been conducted. </span></p>\r\n</div>"
/// creation_time : "2020-05-15 07:19:36"
/// update_time : "2020-08-24 10:56:11"
/// sort_order : "0"
/// custom_theme : ""
/// custom_root_template : ""
/// active : true

class Privacy_policy {
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

  Privacy_policy({
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

  Privacy_policy.fromJson(dynamic json) {
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