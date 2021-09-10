import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/model/core/cms_page.dart';
import 'package:export_nepal/model/core/contact.dart';
import 'package:export_nepal/model/core/faq.dart';
import 'package:export_nepal/model/core/manuals.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/model/core/shipping_policy.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/model/core/user_blogs.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/model/services/APICalls.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/general_repository.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_svg/svg.dart';

class GeneralProvider extends ChangeNotifier {
  GeneralRepository? _generalRepository;
  ApiResponse _aboutUsResponse = ApiResponse.loading("Loading");
  ApiResponse _affiliateResponse = ApiResponse.loading("Loading");
  ApiResponse _returnPolicyResponse = ApiResponse.loading("Loading");
  ApiResponse _shippingResponse = ApiResponse.loading("Loading");
  ApiResponse _termsOfUseResponse = ApiResponse.loading("Loading");
  ApiResponse _manualResponse = ApiResponse.loading("Loading");
  ApiResponse _contactResponse = ApiResponse.loading("Loading");
  ApiResponse _blogResponse = ApiResponse.loading("Loading");

  GeneralProvider() {
    _generalRepository = GeneralRepository();
  }

  ApiResponse get aboutUsResponse {
    return _aboutUsResponse;
  }

  ApiResponse get blogResponse {
    return _blogResponse;
  }

  ApiResponse get contactResponse {
    return _contactResponse;
  }

  ApiResponse get affiliateResponse {
    return _affiliateResponse;
  }

  ApiResponse get returnPolicyResponse {
    return _returnPolicyResponse;
  }

  ApiResponse get shippingPolicyResponse {
    return _shippingResponse;
  }

  ApiResponse get termsOfUseResponse {
    return _termsOfUseResponse;
  }

  ApiResponse get manualResponse {
    return _manualResponse;
  }

  Future<ApiResponse> invokeCmsPage(String path) async {
    try {
      if (_generalRepository != null) {
        Either<Glitch, Cms_page> response =
            await _generalRepository!.getCmsPage(path);
        if (response.isLeft) {
          _aboutUsResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _aboutUsResponse = ApiResponse.completed(response.right);
        }
      } else {
        _aboutUsResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _aboutUsResponse.status = Status.ERROR;
      _aboutUsResponse = ApiResponse.error(e.toString());
    }
    notifyListeners();
    return _aboutUsResponse;
  }

  Future<ApiResponse> invokeContact() async {
    try {
      if (_generalRepository != null) {
        Either<Glitch, Contact> response =
            await _generalRepository!.getContact();
        if (response.isLeft) {
          _contactResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _contactResponse = ApiResponse.completed(response.right);
        }
      } else {
        _contactResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _contactResponse = ApiResponse.error(e.toString());
      _contactResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _contactResponse;
  }

  Future<ApiResponse> invokeBlogs() async {
    try {
      if (_generalRepository != null) {
        Either<Glitch, User_blogs> response =
            await _generalRepository!.getBlogs();
        if (response.isLeft) {
          _blogResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _blogResponse = ApiResponse.completed(response.right);
        }
      } else {
        _blogResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _blogResponse = ApiResponse.error(e.toString());
      _blogResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _blogResponse;
  }

  Future<ApiResponse> invokeManuals() async {
    try {
      if (_generalRepository != null) {
        Either<Glitch, Manuals> response =
            await _generalRepository!.getManuals();
        if (response.isLeft) {
          _manualResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _manualResponse = ApiResponse.completed(response.right);
        }
      } else {
        _manualResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _manualResponse = ApiResponse.error(e.toString());
      _manualResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _manualResponse;
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

  manualLists(Manuals? manuals) {
    return new List<Widget>.generate(manuals!.items!.length, (int index) {
      var item = manuals.items![index].name;
      var pdf = manuals.items![index].file;
      var i = index + 1;
      return InkWell(
        onTap: () {
          PDF().fromUrl(pdf!);
          print(pdf);
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(
            "$i. $item",
            style: kTextStyleSmallBlueBoldPrimary,
          ),
        ),
      );
    });
  }
}
