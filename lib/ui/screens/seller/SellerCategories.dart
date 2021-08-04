import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/seller/SellerCategoryItem.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup1.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup2.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup3.dart';
import 'package:export_nepal/ui/screens/seller/SellerSignup4.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerCategories extends StatefulWidget {
  const SellerCategories({Key? key}) : super(key: key);

  @override
  _SellerCategoriesState createState() => _SellerCategoriesState();
}

class _SellerCategoriesState extends State<SellerCategories> {
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
                              Navigator.of(context).pop(true);
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
                              "Select Categories",
                              style: kTextStyleRegularPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,),
                      child: Text(
                        "Click on the Categories to select / deselect them",
                        style: kTextStyleSmallPrimary,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      flex: 8,
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.7,
                          crossAxisCount: 4,
                        ),
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return SellerCategoryItem(index: index);
                        },
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
                                  "Cancel",
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
                                "Confirm",
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

class SellercategoryItem {}
