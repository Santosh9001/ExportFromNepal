import 'package:flutter/cupertino.dart';

class RMAProvider extends ChangeNotifier {
  int _radioGroupValue = 0;

  List<String> _statusOptions = [
    "All Status",
    "New",
    "Pending",
    "Processing",
    "Answered",
    "Approved",
    "Complete",
    "Cancelled",
    "Rejected",
    "Sent to Supplier"
  ];

  get statusOptions => _statusOptions;

  get radioGroupValue => _radioGroupValue;

  void setRadioGroupValue(int value) {
    _radioGroupValue = value;
    notifyListeners();
  }

  get currentSelectedValue => statusOptions[_radioGroupValue];
}
