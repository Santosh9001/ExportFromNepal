import 'package:flutter/material.dart';

class AffiliateProvider extends ChangeNotifier {
  String _affiliateDropdown = 'Select Affiliate Program';

  String get getAffiliateDropdown => _affiliateDropdown;
}
