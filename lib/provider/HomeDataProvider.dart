import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/model/services/APICalls.dart';
import 'package:flutter/cupertino.dart';

class HomeDataProvider extends ChangeNotifier {
  bool loading = false;
  Aboutus? aboutUs;
  Terms_of_use? termsOfUse;
  List<String> menuList = [
    "About Us",
    "Contact Us",
    "Blog",
    "Affiliate Program",
    "Terms of Use",
    "Shipping Policy",
    "Return Policy",
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
        invokeTermsOfUse();
        break;
      case "Shipping Policy":
        break;
      case "Return Policy":
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

  void invokeTermsOfUse() async {
    print("Terms of Use");
    var api = APICalls();
    loading = true;
    termsOfUse = await api.termsOfUse();
    print(termsOfUse.toString());
    loading = false;

    notifyListeners();
  }
}
