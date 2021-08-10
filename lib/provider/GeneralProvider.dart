import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/model/core/faq.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/model/core/shipping_policy.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/model/services/APICalls.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/general_repository.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GeneralProvider extends ChangeNotifier {
  bool loading = false;
  Aboutus? aboutUs;
  Terms_of_use? termsOfUse;
  Shipping_policy? shippingPolicy;
  Return_policy? returnPolicy;
  Affiliate_program? affiliatePrograms;

  String _termsOfUse = '';
  String _shippingPolicy = '';
  String _returnPolicy = '';
  String _aboutUs = '';
  String _affiliateProgram = '';

  String get getTermsOfUse => _termsOfUse;
  String get getAboutUs => _aboutUs;
  String get getShippingPolicy => _shippingPolicy;
  String get getReturninPolicy => _returnPolicy;
  String get getAffiiateProgram => _affiliateProgram;

  GeneralRepository? _generalRepository;
  ApiResponse _aboutUsResponse = ApiResponse.loading("Loading");

  GeneralProvider() {
    _generalRepository = GeneralRepository();
    invokeAboutUs();
  }

  ApiResponse get aboutUsResponse {
    return _aboutUsResponse;
  }

  Future<void> invokeAboutUs() async {
    try {
      if (_generalRepository != null) {
        Either<Glitch, Aboutus> response =
            await _generalRepository!.getAboutUs();
        if (response.isLeft) {
          _aboutUsResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _aboutUsResponse = ApiResponse.completed(response.right);
        }
      } else {
        _aboutUsResponse = ApiResponse.error("Internal Error");
      }
      notifyListeners();
    } catch (e) {
      _aboutUsResponse = ApiResponse.error(e.toString());
      _aboutUsResponse.status = Status.ERROR;
    }
  }

  void invokeTermsOfUse() async {
    var api = APICalls();
    loading = true;
    termsOfUse = await api.termsOfUse();
    _termsOfUse = termsOfUse!.content!;
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

  void invokeAffiliatePrograms() async {
    var api = APICalls();
    loading = true;
    affiliatePrograms = await api.affiliatePrograms();
    _affiliateProgram = affiliatePrograms!.content!;
    loading = false;

    notifyListeners();
  }

  List<String> icons = [
    'assets/images/faq-general.svg',
    'assets/images/faq-supplier.svg',
    'assets/images/faq-account.svg',
    'assets/images/faq-product.svg',
    'assets/images/faq-order.svg',
    'assets/images/faq-contact.svg'
  ];

  List<String> names = [
    'General',
    'Supplier',
    'Account',
    'Product',
    'Order',
    'Contact'
  ];
  late List<Faq> faqLists;
  void getFaqCategories() {
    faqLists = [];
    for (int i = 0; i < names.length; i++) {
      var faq = Faq(icons[i], names[i]);
      faqLists.add(faq);
    }
  }

  int _selectedIndex = 0;
  String _categoryName = 'General';
  int _selectedItem = 0;

  int get getSelectedIndex => _selectedIndex;
  String get getSelectedCategory => _categoryName;
  int get getSelectedItem => _selectedItem;

  void setSelectedItemIndex(index) {
    _selectedItem = index;
    notifyListeners();
  }

  void setSelectedIndex(index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void setSelectedCategoryname(name) {
    _categoryName = name;
    notifyListeners();
  }

  faqCategoryItems() {
    return new List<Widget>.generate(5, (int index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setSelectedItemIndex(index);
            },
            child: Text(
              "This is just a loreium ipsium",
              style: kTextStyleBlackBold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          getSelectedItem == index
              ? Text(
                  "This is just a loreium ipsium description",
                  style: kTextStyleSmallPrimary,
                )
              : Container(),
          getSelectedItem == index
              ? SizedBox(
                  height: 8,
                )
              : Container(),
          Container(
            height: 2,
            color: kColorPrimary,
            width: 50,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      );
    });
  }

  faqCategories() {
    return new List<Widget>.generate(faqLists.length, (int index) {
      return Column(
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: InkWell(
              onTap: () {
                setSelectedItemIndex(0);
                setSelectedIndex(index);
                setSelectedCategoryname(faqLists[index].name);
              },
              child: Container(
                padding: EdgeInsets.all(5),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color:
                      getSelectedIndex == index ? kColorPrimary : Colors.white,
                ),
                child: SvgPicture.asset(
                  faqLists[index].icon!,
                  color:
                      getSelectedIndex == index ? Colors.white : kColorPrimary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            faqLists[index].name!,
            style: TextStyle(
                fontSize: 10.0,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.normal),
          ),
        ],
      );
    });
  }
}
