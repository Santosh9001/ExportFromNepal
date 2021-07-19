class Faq {
  String? _icon;
  String? _name;

  Faq(String? icon1, String? name1) {
    _icon = icon1;
    _name = name1;
  }

  String? get name => _name;
  String? get icon => _icon;
}
