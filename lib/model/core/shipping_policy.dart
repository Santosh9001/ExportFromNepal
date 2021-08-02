/// id : 49
/// identifier : "shipping-policy"
/// title : "Shipping Terms"
/// page_layout : "1column"
/// meta_title : ""
/// meta_keywords : ""
/// meta_description : ""
/// content_heading : "Shipping Terms"
/// content : "<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">EXPORT FROM NEPAL team is not currently handling shipping itself but we will facilitate our buyers while choosing shipping agents, shipment terms and other shipment related queries.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Since the platform is working on a three tier approach the shipping terms and policy differ from tire to tire approach. Please find the below information about the detail of each tire approach and respective shipping:</span></p>\r\n<h3><span style=\"font-weight: 400;\">Tier One: Exporter</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The tier one categories provide the platform for the manufacturers/exporters of Nepal in exporting their products around the globe. For exporting the products exporters have to follow the Incoterms rules provided by the Nepal government, which are internationally </span><span style=\"font-weight: 400;\">recognized standard and are used worldwide in international and domestic contracts for the sale of goods. </span><span style=\"font-weight: 400;\">Exporters will follow 4 different shipment terms for reference of price. It is upto seller &amp; buyer agreement for choosing the shipment terms. If you are new to the import &amp; export industry please find below description about the shipment term before choosing it.</span></p>\r\n<p><strong>Ex Work:&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The seller delivers the goods at the disposal of the buyer at the seller’s premises or at another named place (i.e., works, factory, warehouse, etc.). The seller does not need to load the goods on any collecting vehicle, nor does it need to clear the goods for export, where such clearance is applicable. The buyer is responsible for all other risks, transportation costs, Insurance, taxes and duties from that point onwards.</span></p>\r\n<p><strong>Cost, Insurance and Freight (CIF):&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The seller delivers the goods on board the vessel or procures the goods already so delivered. The risk of loss of or damage to the goods passes when the goods are on board the vessel. The seller must contract for and pay the costs and freight necessary to bring the goods to the named port of destination.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">‘The seller also contracts for insurance cover against the buyer’s risk of loss of or damage to the goods during the carriage. The buyer should note that under CIF the seller is required to obtain insurance only on minimum cover. Should the buyer wish to have more insurance protection, it will need either to agree as much expressly with the seller or to make its own extra insurance arrangements.”</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The seller must pay the costs of bringing the goods to the specified port.They also pay for insurance.The buyer is responsible for risks when the goods are loaded onto the ship.</span></p>\r\n<p><strong>Free on Board (FoB):</strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The seller delivers the goods on board the vessel nominated by the buyer at the named port of shipment or procures the goods already so delivered. The risk of loss of or damage to the goods passes when the goods are on board the vessel, and the buyer bears all costs from that moment onwards. The seller must get the goods ready for export and load to the specified ship.The buyer and seller share the costs and risks when the goods are on board.</span></p>\r\n<p><strong>Free Carrier (FCA):</strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">The seller delivers the goods, cleared for export, to the carrier or another person nominated by the buyer at the seller’s premises or another specified place. The parties are well advised to specify as clearly as possible the point within the named place of delivery, as the risk passes to the buyer at that point. The buyer is then responsible for getting transported to the specified place of final delivery.</span></p>\r\n<h3><span style=\"font-weight: 400;\">Tier Two and Tier Three (Wholesaler and Retailer):</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Wholesalers and retailers are involved in selling and delivering the products within the country. For which the seller will be responsible to use the available commercial cargo and delivery methods available in the given country and area. </span></p>"
/// creation_time : "2020-05-15 07:19:36"
/// update_time : "2020-08-24 11:20:04"
/// sort_order : "0"
/// custom_theme : ""
/// custom_root_template : ""
/// active : true

class Shipping_policy {
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

  Shipping_policy(
      {int? id,
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
      bool? active}) {
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

  Shipping_policy.fromJson(dynamic json) {
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
