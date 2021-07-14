import 'package:export_nepal/provider/EmailValidProvider.dart';
import 'package:export_nepal/provider/LoginTokenProvider.dart';
import 'package:export_nepal/ui/screens/DashboardUI.dart';
import 'package:export_nepal/ui/screens/SignupUI.dart';
import 'package:export_nepal/ui/screens/dashboard/checkout/OrerConfirmUI.dart';
import 'package:export_nepal/ui/screens/dashboard/account/MyOrderUI.dart';
import 'package:export_nepal/ui/screens/dashboard/account/MyWishListUI.dart';
import 'package:export_nepal/ui/screens/dashboard/checkout/ShippingEstimate.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/HomeMenuDialog.dart';
import 'package:export_nepal/ui/screens/product/ProductDetailsUI.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'ui/screens/LoginUI.dart';

void main() async {
  // runApp(MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
  ChangeNotifierProvider<LoginTokenProvider>(
      create: (_) => LoginTokenProvider()),
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
      },
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFFE4EAFD),
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
