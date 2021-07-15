import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/model/core/shipping_policy.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/model/services/APICalls.dart';
import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier {
  bool loading = false;
  Aboutus? aboutUs;
  Terms_of_use? termsOfUse;
  Shipping_policy? shippingPolicy;
  Return_policy? returnPolicy;

  String _termsOfUse = '';
  String _shippingPolicy = '';
  String _returnPolicy = '';
  String _aboutUs = '';

  String get getTermsOfUse => _termsOfUse;
  String get getAboutUs => _aboutUs;
  String get getShippingPolicy => _shippingPolicy;
  String get getReturninPolicy => _returnPolicy;

  void invokeTermsOfUse() async {
    var api = APICalls();
    loading = true;
    termsOfUse = await api.termsOfUse();
    _termsOfUse = termsOfUse!.content!;
    loading = false;

    notifyListeners();
  }

  void invokeAboutUs() async {
    print("about us");
    var api = APICalls();
    loading = true;
    aboutUs = await api.aboutUs();
    _aboutUs = aboutUs!.content!;
    loading = false;

    notifyListeners();
  }

  void invokeShippingPolicy() async {
    var api = APICalls();
    loading = true;
    shippingPolicy = await api.shippingPolicy();
    _shippingPolicy = shippingPolicy!.content!;
    loading = false;

    notifyListeners();
  }

  void invokeReturnPolicy() async {
    var api = APICalls();
    loading = true;
    returnPolicy = await api.returnPolicy();
    _returnPolicy = returnPolicy!.content!;
    loading = false;

    notifyListeners();
  }
}
