import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: provider.checkIfSelected(index)
                                    ? kColorPrimary
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              width: 70,
                              height: 70,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                /*child: Image.network(
                                  kDummyImage,
                                  fit: BoxFit.cover,
                                )*/
                              ),
                            ),
                            provider.checkIfSelected(index)
                                ? Padding(
                                    padding: EdgeInsets.only(top: 5, right: 5),
                                    child: SvgPicture.asset(
                                        "assets/images/tick_square.svg",
                                        height: 10,
                                        width: 10,
                                        allowDrawingOutsideViewBox: true),
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
