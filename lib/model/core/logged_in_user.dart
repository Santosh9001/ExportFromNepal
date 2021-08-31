class Logged_in_user {
  int? _id;
  int? _groupId;
  String? _createdAt;
  String? _updatedAt;
  String? _createdIn;
  String? _email;
  String? _firstname;
  String? _lastname;
  int? _storeId;
  int? _websiteId;
  int? _disableAutoGroupChange;
  Extension_attributes? _extensionAttributes;
  List<Custom_attributes>? _customAttributes;

  int? get id => _id;
  int? get groupId => _groupId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdIn => _createdIn;
  String? get email => _email;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  int? get storeId => _storeId;
  int? get websiteId => _websiteId;
  int? get disableAutoGroupChange => _disableAutoGroupChange;
  Extension_attributes? get extensionAttributes => _extensionAttributes;
  List<Custom_attributes>? get customAttributes => _customAttributes;

  Logged_in_user({
      int? id, 
      int? groupId, 
      String? createdAt, 
      String? updatedAt, 
      String? createdIn, 
      String? email, 
      String? firstname, 
      String? lastname, 
      int? storeId, 
      int? websiteId, 
      int? disableAutoGroupChange, 
      Extension_attributes? extensionAttributes, 
      List<Custom_attributes>? customAttributes}){
    _id = id;
    _groupId = groupId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdIn = createdIn;
    _email = email;
    _firstname = firstname;
    _lastname = lastname;
    _storeId = storeId;
    _websiteId = websiteId;
    _disableAutoGroupChange = disableAutoGroupChange;
    _extensionAttributes = extensionAttributes;
    _customAttributes = customAttributes;
}

  Logged_in_user.fromJson(dynamic json) {
    _id = json['id'];
    _groupId = json['group_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _createdIn = json['created_in'];
    _email = json['email'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _storeId = json['store_id'];
    _websiteId = json['website_id'];
    _disableAutoGroupChange = json['disable_auto_group_change'];
    _extensionAttributes = json['extension_attributes'] != null ? Extension_attributes.fromJson(json['extensionAttributes']) : null;
    if (json['custom_attributes'] != null) {
      _customAttributes = [];
      json['custom_attributes'].forEach((v) {
        _customAttributes?.add(Custom_attributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['group_id'] = _groupId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['created_in'] = _createdIn;
    map['email'] = _email;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['store_id'] = _storeId;
    map['website_id'] = _websiteId;
    map['disable_auto_group_change'] = _disableAutoGroupChange;
    if (_extensionAttributes != null) {
      map['extension_attributes'] = _extensionAttributes?.toJson();
    }
    if (_customAttributes != null) {
      map['custom_attributes'] = _customAttributes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Custom_attributes {
  String? _attributeCode;
  String? _value;

  String? get attributeCode => _attributeCode;
  String? get value => _value;

  Custom_attributes({
      String? attributeCode, 
      String? value}){
    _attributeCode = attributeCode;
    _value = value;
}

  Custom_attributes.fromJson(dynamic json) {
    _attributeCode = json['attribute_code'];
    _value = json['value'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['attribute_code'] = _attributeCode;
    map['value'] = _value;
    return map;
  }

}

class Extension_attributes {
  bool? _isSubscribed;

  bool? get isSubscribed => _isSubscribed;

  Extension_attributes({
      bool? isSubscribed}){
    _isSubscribed = isSubscribed;
}

  Extension_attributes.fromJson(dynamic json) {
    _isSubscribed = json['is_subscribed'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['is_subscribed'] = _isSubscribed;
    return map;
  }

}