import 'package:export_nepal/provider/AffiliateProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class JoinAffiliate extends StatefulWidget {
  const JoinAffiliate({Key? key}) : super(key: key);

  @override
  _JoinAffiliateState createState() => _JoinAffiliateState();
}

class _JoinAffiliateState extends State<JoinAffiliate> {
  int radioGroupValue = 0;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AffiliateProvider>(
      create: (context) => AffiliateProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
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
                                  "Affiliate Program",
                                  style: kTextStyleMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
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
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Colors.white),
                                  padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Name : ",
                                            style: kTextStyleSmallPrimary,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("My Name",
                                              style: kTextStyleBlackBold)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Email : ",
                                            style: kTextStyleSmallPrimary,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("My Email",
                                              style: kTextStyleBlackBold)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Select the Affilifate program type :",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 15, 0),
                                        width: double.infinity,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: kColorLightGrey,
                                            border: Border.all(
                                                color: kColorLightGrey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return StatefulBuilder(
                                                  builder: (context,
                                                      StateSetter setState) {
                                                    return AlertDialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.white,
                                                      content: Container(
                                                        height: 120,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          ),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: List<
                                                                  Widget>.generate(
                                                              provider.options
                                                                  .length,
                                                              (index) {
                                                            return new Column(
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Radio(
                                                                      value:
                                                                          index,
                                                                      groupValue:
                                                                          radioGroupValue,
                                                                      onChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          radioGroupValue =
                                                                              (value) as int;
                                                                          Navigator.of(context)
                                                                              .pop(true);
                                                                          provider
                                                                              .setAffiliateSelected(value);
                                                                        });
                                                                      },
                                                                      activeColor:
                                                                          kColorPrimary,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        provider
                                                                            .options[index],
                                                                        style:
                                                                            kTextStyleMediumPrimary,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Divider(
                                                                    height: 1,
                                                                    color: Colors
                                                                        .black),
                                                              ],
                                                            );
                                                          }),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                provider.getAffiliateDropdown,
                                                style: kTextStyleSmallPrimary,
                                              ),
                                              Icon(
                                                Icons.expand_more,
                                                color: Colors.black,
                                                size: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.white,
                            alignment: Alignment.topRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: kColorRed),
                                    onPressed: () {},
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
                                    onPressed: () {},
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
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
      ),
    );
  }
}
