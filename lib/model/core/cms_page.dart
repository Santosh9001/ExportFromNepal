class Cms_page {
  bool? _status;
  String? _message;
  Data? _data;

  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Cms_page({bool? status, String? message, Data? data}) {
    _status = status;
    _message = message;
    _data = data;
  }

  Cms_page.fromJson(dynamic json) {
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
  String? _pageId;
  String? _title;
  String? _identifier;
  String? _content;

  String? get pageId => _pageId;
  String? get title => _title;
  String? get identifier => _identifier;
  String? get content => _content;

  Data({String? pageId, String? title, String? identifier, String? content}) {
    _pageId = pageId;
    _title = title;
    _identifier = identifier;
    _content = content;
  }

  Data.fromJson(dynamic json) {
    _pageId = json['page_id'];
    _title = json['title'];
    _identifier = json['identifier'];
    _content = json['content'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['page_id'] = _pageId;
    map['title'] = _title;
    map['identifier'] = _identifier;
    map['content'] = _content;
    return map;
  }
}
