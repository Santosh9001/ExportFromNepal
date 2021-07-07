import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/services/APICalls.dart';
import 'package:flutter/cupertino.dart';

class HomeDataProvider extends ChangeNotifier {
  bool loading = false;
  Aboutus? aboutUs;
  List<String> menuList = [
    "About Us",
    "Contact Us",
    "Blog",
    "Affiliate Program",
    "Terms of Use",
    "Shipping & Return Policy",
    "FAQs",
    "Manual"
  ];

  void fetchDataAndNavigate(title) {
    switch (title) {
      case "About Us":
        invokeAboutUs();
        break;
      case "Contact Us":
        break;
      case "Affiliate Program":
        break;
      case "Terms of Use":
        break;
      case "Shipping & Return Policy":
        break;
      case "FAQs":
        break;
      case "Manual":
        break;
    }
  }

  void invokeAboutUs() async {
    print("about us");
    var api = APICalls();
    loading = true;
    aboutUs = await api.aboutUs();
    print(aboutUs.toString());
    loading = false;

    notifyListeners();
  }
}
