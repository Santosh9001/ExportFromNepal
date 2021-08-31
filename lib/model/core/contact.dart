class Contact {
  List<Contact_information>? _contactInformation;
  List<String>? _categories;
  List<Country>? _country;

  List<Contact_information>? get contactInformation => _contactInformation;
  List<String>? get categories => _categories;
  List<Country>? get country => _country;

  Contact({
      List<Contact_information>? contactInformation, 
      List<String>? categories, 
      List<Country>? country}){
    _contactInformation = contactInformation;
    _categories = categories;
    _country = country;
}

  Contact.fromJson(dynamic json) {
    if (json['contact_information'] != null) {
      _contactInformation = [];
      json['contact_information'].forEach((v) {
        _contactInformation?.add(Contact_information.fromJson(v));
      });
    }
    _categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    if (json['country'] != null) {
      _country = [];
      json['country'].forEach((v) {
        _country?.add(Country.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_contactInformation != null) {
      map['contact_information'] = _contactInformation?.map((v) => v.toJson()).toList();
    }
    map['categories'] = _categories;
    if (_country != null) {
      map['country'] = _country?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Country {
  String? _countryId;
  String? _countryName;

  String? get countryId => _countryId;
  String? get countryName => _countryName;

  Country({
      String? countryId, 
      String? countryName}){
    _countryId = countryId;
    _countryName = countryName;
}

  Country.fromJson(dynamic json) {
    _countryId = json['country_id'];
    _countryName = json['country_name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['country_id'] = _countryId;
    map['country_name'] = _countryName;
    return map;
  }

}

class Contact_information {
  String? _identifier;
  String? _name;
  String? _phone;
  String? _email;
  String? _address;

  String? get identifier => _identifier;
  String? get name => _name;
  String? get phone => _phone;
  String? get email => _email;
  String? get address => _address;

  Contact_information({
      String? identifier, 
      String? name, 
      String? phone, 
      String? email, 
      String? address}){
    _identifier = identifier;
    _name = name;
    _phone = phone;
    _email = email;
    _address = address;
}

  Contact_information.fromJson(dynamic json) {
    _identifier = json['identifier'];
    _name = json['name'];
    _phone = json['phone'];
    _email = json['email'];
    _address = json['address'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['identifier'] = _identifier;
    map['name'] = _name;
    map['phone'] = _phone;
    map['email'] = _email;
    map['address'] = _address;
    return map;
  }

}