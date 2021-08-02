import 'package:export_nepal/provider/AffiliateProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class AffiliateLinks extends StatefulWidget {
  const AffiliateLinks({Key? key}) : super(key: key);

  @override
  _AffiliateLinksState createState() => _AffiliateLinksState();
}

class _AffiliateLinksState extends State<AffiliateLinks> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AffiliateProvider>(
        create: (context) => AffiliateProvider(),
        child: Builder(
          builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: Consumer<AffiliateProvider>(
                  builder: (context, provider, child) {
                    return Padding(
                      padding: EdgeInsets.all(0),
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
                                    "Links",
                                    style: kTextStyleMediumPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              "assets/images/affiliate-links.svg",
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Create Your Own Personal Link.",
                                  style: kTextStyleRegularPrimary,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  height: 1,
                                  color: kSecondaryTextColor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Please fill in one of the links from our store such as : product URL, category URL, or other page's URL into the text below : ",
                                  style: kTextStyleSmallPrimary,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      focusedBorder: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kSecondaryTextColor,
                                            width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: kColorPrimary),
                                  onPressed: () {},
                                  child: Text(
                                    "Get Link",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Get a unique affiliate link : ",
                                  style: kTextStyleSmallPrimary,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                GestureDetector(
                                    child: Text("Click here",
                                        style: TextStyle(color: Colors.blue)),
                                    onTap: () {
                                      // do what you need to do when "Click here" gets clicked
                                    }),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Register Link : ",
                                  style: kTextStyleSmallPrimary,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                GestureDetector(
                                    child: Text("Click here",
                                        style: TextStyle(color: Colors.blue)),
                                    onTap: () {
                                      // do what you need to do when "Click here" gets clicked
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ));
  }
}
