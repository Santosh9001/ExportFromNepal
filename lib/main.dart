import 'package:export_nepal/provider/dashboard_provider.dart';
import 'package:export_nepal/provider/registration_provider.dart';
import 'package:export_nepal/provider/login_provider.dart';
import 'package:export_nepal/ui/screens/DashboardUI.dart';
import 'package:export_nepal/ui/screens/SignupUI.dart';
import 'package:export_nepal/ui/screens/affiliate/AffiliateDashBoard.dart';
import 'package:export_nepal/ui/screens/affiliate/AffiliateLinks.dart';
import 'package:export_nepal/ui/screens/affiliate/AffiliateSettings.dart';
import 'package:export_nepal/ui/screens/affiliate/AffiliateTransactions.dart';
import 'package:export_nepal/ui/screens/affiliate/AffiliateUI.dart';
import 'package:export_nepal/ui/screens/affiliate/AffiliateWithdrawls.dart';
import 'package:export_nepal/ui/screens/affiliate/JoinAffiliate.dart';
import 'package:export_nepal/ui/screens/dashboard/account/AccountInformation.dart';
import 'package:export_nepal/ui/screens/dashboard/account/AddressBookUI.dart';
import 'package:export_nepal/ui/screens/dashboard/account/AddressDetailsUI.dart';
import 'package:export_nepal/ui/screens/dashboard/account/NewsLetterSubscription.dart';
import 'package:export_nepal/ui/screens/dashboard/account/RequestedQuotes.dart';
import 'package:export_nepal/ui/screens/dashboard/account/product_reviews/ProductReviews.dart';
import 'package:export_nepal/ui/screens/dashboard/account/product_reviews/ReviewCurrentItem.dart';
import 'package:export_nepal/ui/screens/dashboard/account/product_reviews/ReviewingItemsList.dart';
import 'package:export_nepal/ui/screens/dashboard/checkout/OrderConfirmUI.dart';
import 'package:export_nepal/ui/screens/dashboard/account/MyOrderUI.dart';
import 'package:export_nepal/ui/screens/dashboard/account/MyWishListUI.dart';
import 'package:export_nepal/ui/screens/dashboard/checkout/ShippingEstimate.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/HomeMenuDialog.dart';
import 'package:export_nepal/ui/screens/general/AboutUs.dart';
import 'package:export_nepal/ui/screens/general/AffiliateProgram.dart';
import 'package:export_nepal/ui/screens/general/Blogs.dart';
import 'package:export_nepal/ui/screens/general/ContactUs.dart';
import 'package:export_nepal/ui/screens/general/FAQ.dart';
import 'package:export_nepal/ui/screens/general/Manuals.dart';
import 'package:export_nepal/ui/screens/general/ReturnPolicy.dart';
import 'package:export_nepal/ui/screens/general/ShippingPolicy.dart';
import 'package:export_nepal/ui/screens/general/TermsOfUse.dart';
import 'package:export_nepal/ui/screens/product/ProductDetailsUI.dart';
import 'package:export_nepal/ui/screens/product/ProductList.dart';
import 'package:export_nepal/ui/screens/search/SearchUI.dart';
import 'package:export_nepal/ui/screens/seller/SellerCategories.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignUpUI.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/preference_utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'ui/screens/LoginUI.dart';

void main() async {
  // runApp(MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  PreferenceUtils.init();
  runApp(
    MultiProvider(
      providers: providers,
      child: MainApp(),
    ),
  );
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<RegistrationProvider>(
      create: (_) => RegistrationProvider()),
  ChangeNotifierProvider<DashboardProvider>(create: (_) => DashboardProvider()),
  ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
];

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginUI(),
        '/dashboard': (context) => Dashboard(),
        '/details': (context) => ProductDetailsUI(),
        '/register': (context) => SignUpUI(),
        '/homeDialog': (context) => HomeMenuDialog(),
        '/myOrder': (context) => MyOrderUI(),
        '/shippingEstimate': (context) => ShippingEstimate(),
        '/orderConfirm': (context) => OrderConfirmUI(),
        '/wishList': (context) => MyWishListUI(),
        '/termsOfUse': (context) => TermsOfUse(),
        '/returnPolicy': (context) => ReturnPolicy(),
        '/shippingPolicy': (context) => ShippingPolicy(),
        '/aboutUs': (context) => AboutUs(),
        '/addressBook': (context) => AddressBook(),
        '/addressDetails': (context) => AddressDetailUI(),
        '/blogs': (context) => Blogs(),
        '/manuals': (context) => Manuals(),
        '/affiliateProgram': (context) => AffiliateUI(),
        '/joinAffiliate': (context) => JoinAffiliate(),
        '/affiliateDashboard': (context) => AffiliateDashBoard(),
        '/affiliateLinks': (context) => AffiliateLinks(),
        '/affiliateTransactions': (context) => AffiliateTransactions(),
        '/affiliateWithdrawls': (context) => AffiliateWithdrawls(),
        '/affiliationSettings': (context) => AffiliateSettings(),
        '/contactUs': (context) => ContactUs(),
        '/faq': (context) => FAQ(),
        '/searchUI': (context) => SearchUI(),
        '/productLists': (context) => ProductList(),
        '/sellerLogin': (context) => SellerSignUpUI(),
        '/accountInformation': (context) => AccountInformation(),
        '/sellerCategories': (context) => SellerCategories(),
        '/affiliate': (context) => AffiliateProgram(),
        '/productReviews': (context) => ProductReviews(),
        '/reviewingItemLists': (context) => ReviewingItemsList(),
        '/reviewCurrentItem': (context) => ReviewCurrentItem(),
        '/requestedQuotes': (context) => RequestedQuotes(),
        '/newsletterSubs': (context) => NewsLetterSubscription()
      },
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: kColorBackground,
          accentColor: Color(0xFFE4EAFD),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.white,
          ))),
    );
  }
}
