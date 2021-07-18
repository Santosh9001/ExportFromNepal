import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AffiliateDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
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
                      "Affiliate Program",
                      style: kTextStyleMediumPrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: SvgPicture.asset(
                "assets/images/affiliation.svg",
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              "Affiliate Group",
                              style: kTextStyleSmallPrimary,
                            ),
                            Icon(
                              Icons.campaign_rounded,
                              size: 50,
                              color: kColorPrimary,
                            ),
                            Text(
                              "Promotion",
                              style: kTextStyleLargeBlue,
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(
                            "Commission",
                            style: kTextStyleSmallPrimary,
                          ),
                          Icon(
                            Icons.money,
                            size: 50,
                            color: kColorPrimary,
                          ),
                          Text(
                            "15%",
                            style: kTextStyleLargeBlue,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/affiliateLinks');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.money,
                              size: 50,
                              color: kColorPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Links",
                      style: kTextStyleSmallPrimary,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/affiliateTransactions');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.money,
                              size: 50,
                              color: kColorPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Transactions",
                      style: kTextStyleSmallPrimary,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/affiliateWithdrawls');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.money,
                              size: 50,
                              color: kColorPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Withdrawl",
                      style: kTextStyleSmallPrimary,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.money,
                              size: 50,
                              color: kColorPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Settings",
                      style: kTextStyleSmallPrimary,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
