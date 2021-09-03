class Affiliate_groups {
  Data? _data;

  Data? get data => _data;

  Affiliate_groups({
      Data? data}){
    _data = data;
}

  Affiliate_groups.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

class Data {
  String? _one;
  String? _two;

  String? get one => _one;
  String? get two => _two;

  Data({
      String? one,
      String? two}){
    _one = one;
    _two = two;
}

  Data.fromJson(dynamic json) {
    _one = json['1'];
    _two = json['2'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['1'] = _one;
    map['2'] = _two;
    return map;
  }

}