class Logged_user {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Logged_user({bool? status, String? message, Data? data}) {
    _status = status;
    _message = message;
    _data = data;
  }

  Logged_user.fromJson(dynamic json) {
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
  User? _user;
  String? _token;

  User? get user => _user;
  String? get token => _token;

  Data({User? user, String? token}) {
    _user = user;
    _token = token;
  }

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }
}

class User {
  int? _id;
  int? _groupId;
  String? _defaultBilling;
  String? _defaultShipping;
  String? _createdAt;
  String? _updatedAt;
  String? _createdIn;
  String? _email;
  String? _firstname;
  String? _lastname;
  int? _gender;
  int? _storeId;
  String? _taxvat;
  int? _websiteId;
  List<Addresses>? _addresses;
  int? _disableAutoGroupChange;
  String? _wkSupplierCompanyName;
  String? _wkSupplierCompanyTagline;
  String? _wkSupplierRegisteredIn;
  String? _wkSupplierTeamSize;
  String? _wkSupplierCertification;
  String? _wkSupplierRole;
  String? _wkIsVerifiedSupplier;
  String? _wkSupplierResponseTime;
  String? _wkSupplierResponseTimeUnit;
  String? _wkIsPremiumSupplier;
  String? _authnetcimProfileVersion;
  String? _verifiedSupplierType;

  int? get id => _id;
  int? get groupId => _groupId;
  String? get defaultBilling => _defaultBilling;
  String? get defaultShipping => _defaultShipping;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get createdIn => _createdIn;
  String? get email => _email;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  int? get gender => _gender;
  int? get storeId => _storeId;
  String? get taxvat => _taxvat;
  int? get websiteId => _websiteId;
  List<Addresses>? get addresses => _addresses;
  int? get disableAutoGroupChange => _disableAutoGroupChange;
  String? get wkSupplierCompanyName => _wkSupplierCompanyName;
  String? get wkSupplierCompanyTagline => _wkSupplierCompanyTagline;
  String? get wkSupplierRegisteredIn => _wkSupplierRegisteredIn;
  String? get wkSupplierTeamSize => _wkSupplierTeamSize;
  String? get wkSupplierCertification => _wkSupplierCertification;
  String? get wkSupplierRole => _wkSupplierRole;
  String? get wkIsVerifiedSupplier => _wkIsVerifiedSupplier;
  String? get wkSupplierResponseTime => _wkSupplierResponseTime;
  String? get wkSupplierResponseTimeUnit => _wkSupplierResponseTimeUnit;
  String? get wkIsPremiumSupplier => _wkIsPremiumSupplier;
  String? get authnetcimProfileVersion => _authnetcimProfileVersion;
  String? get verifiedSupplierType => _verifiedSupplierType;

  User(
      {int? id,
      int? groupId,
      String? defaultBilling,
      String? defaultShipping,
      String? createdAt,
      String? updatedAt,
      String? createdIn,
      String? email,
      String? firstname,
      String? lastname,
      int? gender,
      int? storeId,
      String? taxvat,
      int? websiteId,
      List<Addresses>? addresses,
      int? disableAutoGroupChange,
      String? wkSupplierCompanyName,
      String? wkSupplierCompanyTagline,
      String? wkSupplierRegisteredIn,
      String? wkSupplierTeamSize,
      String? wkSupplierCertification,
      String? wkSupplierRole,
      String? wkIsVerifiedSupplier,
      String? wkSupplierResponseTime,
      String? wkSupplierResponseTimeUnit,
      String? wkIsPremiumSupplier,
      String? authnetcimProfileVersion,
      String? verifiedSupplierType}) {
    _id = id;
    _groupId = groupId;
    _defaultBilling = defaultBilling;
    _defaultShipping = defaultShipping;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdIn = createdIn;
    _email = email;
    _firstname = firstname;
    _lastname = lastname;
    _gender = gender;
    _storeId = storeId;
    _taxvat = taxvat;
    _websiteId = websiteId;
    _addresses = addresses;
    _disableAutoGroupChange = disableAutoGroupChange;
    _wkSupplierCompanyName = wkSupplierCompanyName;
    _wkSupplierCompanyTagline = wkSupplierCompanyTagline;
    _wkSupplierRegisteredIn = wkSupplierRegisteredIn;
    _wkSupplierTeamSize = wkSupplierTeamSize;
    _wkSupplierCertification = wkSupplierCertification;
    _wkSupplierRole = wkSupplierRole;
    _wkIsVerifiedSupplier = wkIsVerifiedSupplier;
    _wkSupplierResponseTime = wkSupplierResponseTime;
    _wkSupplierResponseTimeUnit = wkSupplierResponseTimeUnit;
    _wkIsPremiumSupplier = wkIsPremiumSupplier;
    _authnetcimProfileVersion = authnetcimProfileVersion;
    _verifiedSupplierType = verifiedSupplierType;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _groupId = json['group_id'];
    _defaultBilling = json['default_billing'];
    _defaultShipping = json['default_shipping'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _createdIn = json['created_in'];
    _email = json['email'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _gender = json['gender'];
    _storeId = json['store_id'];
    _taxvat = json['taxvat'];
    _websiteId = json['website_id'];
    if (json['addresses'] != null) {
      _addresses = [];
      json['addresses'].forEach((v) {
        _addresses?.add(Addresses.fromJson(v));
      });
    }
    _disableAutoGroupChange = json['disable_auto_group_change'];
    _wkSupplierCompanyName = json['wk_supplier_company_name'];
    _wkSupplierCompanyTagline = json['wk_supplier_company_tagline'];
    _wkSupplierRegisteredIn = json['wk_supplier_registered_in'];
    _wkSupplierTeamSize = json['wk_supplier_team_size'];
    _wkSupplierCertification = json['wk_supplier_certification'];
    _wkSupplierRole = json['wk_supplier_role'];
    _wkIsVerifiedSupplier = json['wk_is_verified_supplier'];
    _wkSupplierResponseTime = json['wk_supplier_response_time'];
    _wkSupplierResponseTimeUnit = json['wk_supplier_response_time_unit'];
    _wkIsPremiumSupplier = json['wk_is_premium_supplier'];
    _authnetcimProfileVersion = json['authnetcim_profile_version'];
    _verifiedSupplierType = json['verified_supplier_type'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['group_id'] = _groupId;
    map['default_billing'] = _defaultBilling;
    map['default_shipping'] = _defaultShipping;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['created_in'] = _createdIn;
    map['email'] = _email;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['gender'] = _gender;
    map['store_id'] = _storeId;
    map['taxvat'] = _taxvat;
    map['website_id'] = _websiteId;
    if (_addresses != null) {
      map['addresses'] = _addresses?.map((v) => v.toJson()).toList();
    }
    map['disable_auto_group_change'] = _disableAutoGroupChange;
    map['wk_supplier_company_name'] = _wkSupplierCompanyName;
    map['wk_supplier_company_tagline'] = _wkSupplierCompanyTagline;
    map['wk_supplier_registered_in'] = _wkSupplierRegisteredIn;
    map['wk_supplier_team_size'] = _wkSupplierTeamSize;
    map['wk_supplier_certification'] = _wkSupplierCertification;
    map['wk_supplier_role'] = _wkSupplierRole;
    map['wk_is_verified_supplier'] = _wkIsVerifiedSupplier;
    map['wk_supplier_response_time'] = _wkSupplierResponseTime;
    map['wk_supplier_response_time_unit'] = _wkSupplierResponseTimeUnit;
    map['wk_is_premium_supplier'] = _wkIsPremiumSupplier;
    map['authnetcim_profile_version'] = _authnetcimProfileVersion;
    map['verified_supplier_type'] = _verifiedSupplierType;
    return map;
  }
}

class Addresses {
  int? _id;
  int? _customerId;
  Region? _region;
  int? _regionId;
  String? _countryId;
  List<String>? _street;
  String? _company;
  String? _telephone;
  String? _postcode;
  String? _city;
  String? _firstname;
  String? _lastname;
  bool? _defaultShipping;
  bool? _defaultBilling;

  int? get id => _id;
  int? get customerId => _customerId;
  Region? get region => _region;
  int? get regionId => _regionId;
  String? get countryId => _countryId;
  List<String>? get street => _street;
  String? get company => _company;
  String? get telephone => _telephone;
  String? get postcode => _postcode;
  String? get city => _city;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  bool? get defaultShipping => _defaultShipping;
  bool? get defaultBilling => _defaultBilling;

  Addresses(
      {int? id,
      int? customerId,
      Region? region,
      int? regionId,
      String? countryId,
      List<String>? street,
      String? company,
      String? telephone,
      String? postcode,
      String? city,
      String? firstname,
      String? lastname,
      bool? defaultShipping,
      bool? defaultBilling}) {
    _id = id;
    _customerId = customerId;
    _region = region;
    _regionId = regionId;
    _countryId = countryId;
    _street = street;
    _company = company;
    _telephone = telephone;
    _postcode = postcode;
    _city = city;
    _firstname = firstname;
    _lastname = lastname;
    _defaultShipping = defaultShipping;
    _defaultBilling = defaultBilling;
  }

  Addresses.fromJson(dynamic json) {
    _id = json['id'];
    _customerId = json['customer_id'];
    _region = json['region'] != null ? Region.fromJson(json['region']) : null;
    _regionId = json['region_id'];
    _countryId = json['country_id'];
    _street = json['street'] != null ? json['street'].cast<String>() : [];
    _company = json['company'];
    _telephone = json['telephone'];
    _postcode = json['postcode'];
    _city = json['city'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _defaultShipping = json['default_shipping'];
    _defaultBilling = json['default_billing'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['customer_id'] = _customerId;
    if (_region != null) {
      map['region'] = _region?.toJson();
    }
    map['region_id'] = _regionId;
    map['country_id'] = _countryId;
    map['street'] = _street;
    map['company'] = _company;
    map['telephone'] = _telephone;
    map['postcode'] = _postcode;
    map['city'] = _city;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['default_shipping'] = _defaultShipping;
    map['default_billing'] = _defaultBilling;
    return map;
  }
}

class Region {
  String? _regionCode;
  String? _region;
  int? _regionId;

  String? get regionCode => _regionCode;
  String? get region => _region;
  int? get regionId => _regionId;

  Region({String? regionCode, String? region, int? regionId}) {
    _regionCode = regionCode;
    _region = region;
    _regionId = regionId;
  }

  Region.fromJson(dynamic json) {
    _regionCode = json['region_code'];
    _region = json['region'];
    _regionId = json['region_id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['region_code'] = _regionCode;
    map['region'] = _region;
    map['region_id'] = _regionId;
    return map;
  }
}
