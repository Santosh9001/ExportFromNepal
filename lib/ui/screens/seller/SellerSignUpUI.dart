import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup1.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup2.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup3.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup4.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerSignUpUI extends StatefulWidget {
  const SellerSignUpUI({Key? key}) : super(key: key);

  @override
  _SellerSignUpState createState() => _SellerSignUpState();
}

class _SellerSignUpState extends State<SellerSignUpUI> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SellerProvider>(
      create: (context) => SellerProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(child: Consumer<SellerProvider>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              provider.pageController.page ==
                                      provider.pageController.initialPage
                                  ? Navigator.of(context).pop(true)
                                  : provider.switchPage(false);
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Sign Up As A Seller",
                              style: kTextStyleRegularPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: provider.iconViews(),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: provider.titleViews(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: PageView(
                        physics: new NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        controller: provider.pageController,
                        children: [
                          SellerSignup1(),
                          SellerSignup2(),
                          SellerSignup3(),
                          SellerSignup4()
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kColorRed),
                                onPressed: () {
                                  if (provider.myViewPosition == 1)
                                    Navigator.of(context).pop(true);
                                  else
                                    provider.switchPage(false);
                                },
                                child: Text(
                                  "Back",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorPrimary),
                              onPressed: () {
                                if (provider.myViewPosition == 4) {
                                } else
                                  provider.switchPage(true);
                              },
                              child: Text(
                                provider.getBtnText,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            )),
          );
        },
      ),
    );
  }
}
