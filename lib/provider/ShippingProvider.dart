import 'package:export_nepal/ui/screens/dashboard/checkout/StepProgressView.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ShippingProvider extends ChangeNotifier {
  final List<String> _titles = ["Shipping", "Address", "Payment"];
  final List<String> shippings = [
    "Express (5 days) USD - 1694.16",
    "Self Arrangement USD - 0.00"
  ];

  final PageController pageController = PageController(initialPage: 0);

  void switchPage(check) {
    if (check) {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      _viewPosition++;
      updateCurStep(true);
    } else {
      pageController.previousPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      _viewPosition--;
      updateCurStep(false);
    }
    notifyListeners();
  }

  int _viewPosition = 1;

  int get myViewPosition => _viewPosition;

  bool _checkAddresses = true;
  bool _checkShipping = false;
  bool _shipToSame = true;

  int _paymentType = 0;

  bool get isAddressSaved => _checkAddresses;

  bool get isShippingSaved => _checkShipping;

  bool get isShipToSameAddress => _shipToSame;

  int get myPaymentType => _paymentType;

  void selectPaymentType(value) {
    _paymentType = value;
    notifyListeners();
  }

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

  String get getBtnText => myViewPosition == 3 ? "Place Order" : "Continue";

  void submitCheckout(context) {
    Navigator.pushNamed(context, '/orderConfirm');
  }

  final Color _inactiveColor = Colors.white;
  final Color _inactiveLineColor = kSecondaryTextColor;
  final double lineWidth = 1.0;
  final Color _activeColor = kColorPrimary;
  int _curStep = 1;

  void updateCurStep(check) {
    if (check) {
      if (_curStep <= 4) {
        _curStep += 2;
      }
    } else {
      if (_curStep >= 2) {
        _curStep -= 2;
      }
    }
  }

  List<Widget> iconViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, icon) {
      var circleColor =
          (i == 0 || _curStep > i + 1) ? _activeColor : _inactiveColor;
      var lineColor = _curStep > i + 1 ? _activeColor : _inactiveLineColor;
      var iconColor =
          (i == 0 || _curStep > i + 1) ? _activeColor : _inactiveColor;

      list.add(
        Container(
          width: 30.0,
          height: 30.0,
          padding: EdgeInsets.all(0),
          decoration: new BoxDecoration(
            /* color: circleColor,*/
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(22.0)),
            border: new Border.all(
              color: circleColor,
              width: 2.0,
            ),
          ),
          child: Icon(
            Icons.circle,
            color: iconColor,
            size: 18.0,
          ),
        ),
      );

      //line between icons
      if (i != _titles.length - 1) {
        list.add(Expanded(
            child: Container(
          height: lineWidth,
          color: lineColor,
        )));
      }
    });

    return list;
  }

  List<Widget> titleViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, text) {
      list.add(Text(text, style: TextStyle(color: kPrimaryTextColor)));
    });
    return list;
  }
}
