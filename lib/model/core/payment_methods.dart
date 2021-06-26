/// id : 53
/// identifier : "payment-methods"
/// title : "Payment Terms & Policy"
/// page_layout : "1column"
/// meta_title : ""
/// meta_keywords : ""
/// meta_description : ""
/// content_heading : "Payment Terms & Policy"
/// content : "<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Export From Nepal ensures &amp; guarantees the buyer about the safety of their payment if the transaction is done using this platform. We assure each of our buyers we will not release the payment unless the buyer/shipping career acknowledges the product delivery is completed.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Being three different tier approaches, the provision of payment methods as well may differ for every tier trade depending on the volume and mode of trade.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">For most of the Import and Export related activities buyers are free to choose either of payment methods LC, Bank transfer, Credit Card or Paypal. For some of the bulk orders above the limit, the seller required LC. </span><span style=\"font-weight: 400;\">For the order which involves a huge sum of monetary value we always suggest buyers to put EXPORT FROM NEPAL platform.</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong>1. Letter of Credit (L/C)</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">LC is a commitment in the form of written instrument by a bank on behalf of its customer (known as buyer/importer) to pay the \"counter-value\" of goods/services within a given date to its supplier (known as seller/exporter) according to agreed stipulations and against presentation of specified documents as specified in the instrument. A \"Letter of Credit\" is used as an instrument for settlement of payment arising out of commercial transactions like sales/purchases. In such credit, a payment obligation arises only upon the fulfillment of specified conditions. For the bulk amount of order Letter of Credit must be used.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Note: This method will be applicable for large comercial order used in import &amp; export.</span></p>\r\n<p><strong>2. Bank Transfer</strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Buyer can pay to EXPORT FROM NEPAL’s bank account. Bank information is provided in the platform before completing the transaction. Please provide us with a payment transaction number while completing the order. Once our platform receives the payment we will hold the transaction until the order is completely delivered.</span><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Note: This method will be applicable for import &amp; export activities within the platform.</span><br><br></p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Credit Card</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">For any type of purchase within the platform, buyers can use their credit card to complete the order. We provide you safe and secure payment mode.&nbsp; We will release the payment once the order is acknowledged as delivered.</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. Paypal</strong></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">If buyers want to pay via Paypal, they can use their Paypal wallet to pay on the platform. We will release the payment once the order is acknowledged as delivered.</span></p>"
/// creation_time : "2020-05-15 07:27:33"
/// update_time : "2020-08-24 11:06:21"
/// sort_order : "0"
/// custom_theme : ""
/// custom_root_template : ""
/// active : true

class Payment_methods {
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

  Payment_methods({
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

  Payment_methods.fromJson(dynamic json) {
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