import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerCategoryItem extends StatefulWidget {
  final int index;
  SellerCategoryItem({Key? key, required this.index}) : super(key: key);

  @override
  _SellerCategoryItemState createState() => _SellerCategoryItemState(index);
}

class _SellerCategoryItemState extends State<SellerCategoryItem> {
  final int index;

  _SellerCategoryItemState(this.index);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellerProvider(),
      child: Builder(
        builder: (context) {
          return Container(
            child: Consumer<SellerProvider>(
              builder: (context, provider, child) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      child: InkWell(
                        onTap: () {
                          provider.categoryTapped(index);
                        },
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: provider.checkIfSelected(index)
                                  ? kColorPrimary
                                  : Colors.white,
                              width: 70,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                /*child: Image.network(
                                  kDummyImage,
                                  fit: BoxFit.cover,
                                )*/
                              ),
                            ),
                            provider.checkIfSelected(index)
                                ? Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 10),
                                    child: SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: kColorPink,
                                        value: true,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  )
                                : Text(""),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Art and Craft",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: kPrimaryTextColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
