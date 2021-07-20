import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  List<String> filters = ['All', 'Exporter', 'Wholesaler', 'Service'];

  int _radioGroupValue = 0;
  int get getRadioGroupValue => _radioGroupValue;

  void setRadioGroupValue(value) {
    _radioGroupValue = value;
    notifyListeners();
  }

  String selectedValue = 'All';

  setValue(value) {
    selectedValue = value;
    print(value);
    notifyListeners();
  }
}
