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

  int get currentPosition => _currentPos;

  setUpIndicator(context, step) {
    return StepProgressView(
        width: MediaQuery.of(context).size.width,
        curStep: step,
        color: kColorPrimary,
        titles: titles);
  }
}
