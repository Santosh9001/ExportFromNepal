import 'package:flutter/cupertino.dart';

class HomeDataProvider extends ChangeNotifier {
  bool loading = false;

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

  void fetchDataAndNavigate(title, context) {
    switch (title) {
      case "About Us":
        Navigator.pushNamed(context, '/aboutUs');
        break;
      case "Contact Us":
        break;
      case "Affiliate Program":
        break;
      case "Terms of Use":
        Navigator.pushNamed(context, '/termsOfUse');
        break;
      case "Shipping Policy":
        Navigator.pushNamed(context, '/shippingPolicy');
        break;
      case "Return Policy":
        Navigator.pushNamed(context, '/returnPolicy');
        break;
      case "FAQs":
        break;
      case "Manual":
        break;
      case "Blog":
        Navigator.pushNamed(context, '/blogs');
        break;
    }
  }
}
