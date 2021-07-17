import 'package:flutter/material.dart';

class AffiliateProvider extends ChangeNotifier {
  String _affiliateDropdown = 'Select Affiliate Program';

  String get getAffiliateDropdown => _affiliateDropdown;

  final List<String> options = ["Non Profit", "Promotion"];

  void setAffiliateSelected(value) {
    _affiliateDropdown = options[value];
    notifyListeners();
  }
}
