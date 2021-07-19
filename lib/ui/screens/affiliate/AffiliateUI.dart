import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AffiliateUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                      "Affiliate Program",
                      style: kTextStyleMediumPrimary,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/affiliation.svg",
                      height: 200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Join the Affiliate Program",
                      style: kTextStyleBlackBoldMedium,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Button(
                      text: "Join Now",
                      onPress: () {
                        Navigator.pushNamed(context, '/joinAffiliate');
                      },
                      color: kColorPrimary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
