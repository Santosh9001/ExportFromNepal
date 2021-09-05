class Countries {
  String? _id;
  String? _twoLetterAbbreviation;
  String? _threeLetterAbbreviation;
  String? _fullNameLocale;
  String? _fullNameEnglish;

  String? get id => _id;
  String? get twoLetterAbbreviation => _twoLetterAbbreviation;
  String? get threeLetterAbbreviation => _threeLetterAbbreviation;
  String? get fullNameLocale => _fullNameLocale;
  String? get fullNameEnglish => _fullNameEnglish;

  Countries({
      String? id, 
      String? twoLetterAbbreviation, 
      String? threeLetterAbbreviation, 
      String? fullNameLocale, 
      String? fullNameEnglish}){
    _id = id;
    _twoLetterAbbreviation = twoLetterAbbreviation;
    _threeLetterAbbreviation = threeLetterAbbreviation;
    _fullNameLocale = fullNameLocale;
    _fullNameEnglish = fullNameEnglish;
}

  Countries.fromJson(dynamic json) {
    _id = json['id'];
    _twoLetterAbbreviation = json['two_letter_abbreviation'];
    _threeLetterAbbreviation = json['three_letter_abbreviation'];
    _fullNameLocale = json['full_name_locale'];
    _fullNameEnglish = json['full_name_english'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['two_letter_abbreviation'] = _twoLetterAbbreviation;
    map['three_letter_abbreviation'] = _threeLetterAbbreviation;
    map['full_name_locale'] = _fullNameLocale;
    map['full_name_english'] = _fullNameEnglish;
    return map;
  }

}