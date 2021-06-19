/// id : 742
/// group_id : 1
/// created_at : "2021-06-07 10:32:34"
/// updated_at : "2021-06-07 10:32:34"
/// created_in : "Export From Nepal"
/// email : "itsmerajshrestha@zenithub.com"
/// firstname : "Raj"
/// lastname : "Shrestha"
/// store_id : 1
/// website_id : 1
/// disable_auto_group_change : 0

class Register {
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

  Register({
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
      int? disableAutoGroupChange}){
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
}

  Register.fromJson(dynamic json) {
    _id = json["id"];
    _groupId = json["group_id"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
    _createdIn = json["created_in"];
    _email = json["email"];
    _firstname = json["firstname"];
    _lastname = json["lastname"];
    _storeId = json["store_id"];
    _websiteId = json["website_id"];
    _disableAutoGroupChange = json["disable_auto_group_change"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["group_id"] = _groupId;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    map["created_in"] = _createdIn;
    map["email"] = _email;
    map["firstname"] = _firstname;
    map["lastname"] = _lastname;
    map["store_id"] = _storeId;
    map["website_id"] = _websiteId;
    map["disable_auto_group_change"] = _disableAutoGroupChange;
    return map;
  }

}