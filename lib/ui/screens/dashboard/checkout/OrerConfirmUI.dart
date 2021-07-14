import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class OrderConfirmUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/order_confirmed.svg",
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    allowDrawingOutsideViewBox: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "ORDERED CONFIRMED",
                    style: kTextStyleLargeBlue,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Your order has been successfully place. Any confirmation " +
                        "regarding the order has been emailed to you.",
                    style: TextStyle(fontSize: 13, color: kPrimaryTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Thank you for shopping with Export From Nepal",
                    style: TextStyle(
                        fontSize: 13,
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kColorPrimary,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.normal)),
                    onPressed: () {},
                    child: Text(
                      'Go To My Account',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height:10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.normal)),
                    onPressed: () {},
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
