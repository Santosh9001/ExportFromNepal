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

  final PageController pageController = PageController(initialPage: 0);

  void switchPage(check) {
    if (check) {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    } else {
      pageController.previousPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      
    }
    notifyListeners();
  }

  StepProgressView? get myStepProgressView => _stepProgressView;

  int _viewPosition = 1;

  int get myViewPosition => _viewPosition;

  bool _checkAddresses = true;
  bool _checkShipping = false;
  bool _shipToSame = true;

  bool get isAddressSaved => _checkAddresses;

  bool get isShippingSaved => _checkShipping;

  bool get isShipToSameAddress => _shipToSame;

  void setSavedAddressCheck(value) {
    this._checkAddresses = value;
    notifyListeners();
  }

  void setSaveShippingCheck(value) {
    this._checkShipping = value;
    notifyListeners();
  }

  void setShipToSaveAddressCheck() {
    this._shipToSame = !_shipToSame;
    notifyListeners();
  }

  String get getBillText =>
      this._shipToSame ? "Billed & Shipped To : " : "Billed To :";

  String get getShipText => "Shipped To : ";
}
