class Notice {
  String? _data;

  String? get data => _data;

  Notice({
      String? data}){
    _data = data;
}

  Notice.fromJson(dynamic json) {
    _data = json['data'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['data'] = _data;
    return map;
  }

}