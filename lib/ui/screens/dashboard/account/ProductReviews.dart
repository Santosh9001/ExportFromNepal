import 'package:export_nepal/provider/ReviewProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/account/components/ReviewsItem.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/innerCategory/InnerCategoryItems.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class ProductReviews extends StatefulWidget {
  const ProductReviews({Key? key}) : super(key: key);

  @override
  _ProductReviewState createState() => _ProductReviewState();
}

class _ProductReviewState extends State<ProductReviews> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReviewProvider>(
      create: (context) => ReviewProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(child: Consumer<ReviewProvider>(
            builder: (context, provider, child) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                            "Product Reviews",
                            style: kTextStyleMediumPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
                      child: TextField(
                        style: kTextStyleRegularPrimary,
                        textInputAction: TextInputAction.none,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: "Search Product Reviews",
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/images/iconly_light_outline_search.svg",
                                  allowDrawingOutsideViewBox: true,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) {
                            return ReviewsItem();
                          },
                        ),
                      ),
                      //padding: EdgeInsets.all(15),
                    ),
                  ],
                ),
              );
            },
          )),
        );
      }),
    );
  }
}
