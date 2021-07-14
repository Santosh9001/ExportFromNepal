import 'package:export_nepal/ui/screens/dashboard/account/components/WishListCard.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class MyWishListUI extends StatefulWidget {
  const MyWishListUI({Key? key}) : super(key: key);

  @override
  _MyWishListUIState createState() => _MyWishListUIState();
}

class _MyWishListUIState extends State<MyWishListUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kColorBackground,
          elevation: 0,
          title: new Text(
            "My Wish List",
            style: kTextStyleLargeBlue,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              color: kColorPrimary,
              size: 30,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 16, left: 8, right: 8),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 0.65,
            children: List.generate(10, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/details');
                },
                child: WishListCard(),
              );
            }),
          ),
        ),
      ),
    );
  }
}
