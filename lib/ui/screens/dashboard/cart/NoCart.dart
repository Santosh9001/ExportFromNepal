import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      "My Cart",
                      style: kTextStyleMediumPrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SvgPicture.asset(
                "assets/images/empty_cart.svg",
                height: 220,
                allowDrawingOutsideViewBox: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "YOUR CART IS EMPTY AT THE MOMENT !",
                style: kTextStyleRegularBlue,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Please make sure you have added some products in the cart and check back again",
                  style: kTextStyleSmallPrimary,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: kColorPrimary),
                onPressed: () {},
                child: Text(
                  "Go Back To Shopping",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
