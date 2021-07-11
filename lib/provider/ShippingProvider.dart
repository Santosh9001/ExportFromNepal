import 'package:export_nepal/ui/screens/dashboard/checkout/StepProgressView.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ShippingProvider extends ChangeNotifier {
  final List<String> titles = ["Shipping", "Address", "Payment"];
  final List<String> shippings = [
    "Express (5 days) USD - 1694.16",
    "Self Arrangement USD - 0.00"
  ];

  int _currentPos = 0;

  StepProgressView? _stepProgressView;
  void setUpIndicator(context) {
    _stepProgressView = StepProgressView(
        width: MediaQuery.of(context).size.width,
        curStep: _currentPos + 1,
        color: kColorPrimary,
        titles: titles);
  }

  StepProgressView? get myStepProgressView => _stepProgressView;

  int _viewPosition = 1;

  int get myViewPosition => _viewPosition;

  bool _checkAddresses = false;

  bool get isAddressSaved => _checkAddresses;

  void setSavedAddressCheck(value) {
    this._checkAddresses = value;
  }

  

}
