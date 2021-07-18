import 'package:export_nepal/provider/AffiliateProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class AffiliateWithdrawls extends StatefulWidget {
  const AffiliateWithdrawls({Key? key}) : super(key: key);

  @override
  _AffiliateWithdrawlsState createState() => _AffiliateWithdrawlsState();
}

class _AffiliateWithdrawlsState extends State<AffiliateWithdrawls> {
  String dropdownValue = 'One';
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
                                    "Withdrawals",
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
                              height: 100,
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
                                Row(
                                  children: [
                                    Text(
                                      "My Balance : ",
                                      style: kTextStyleSmallPrimary,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "\$60.99",
                                      style: kTextStyleBlueBold,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Divider(
                                  height: 1,
                                  color: kSecondaryTextColor,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Request Amount",
                                            style: kTextStyleSmallPrimary,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 8.0),
                                            child: TextField(
                                              style: kTextStyleSmallPrimary,
                                              decoration: new InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 10),
                                                isDense: true,
                                                focusedBorder:
                                                    OutlineInputBorder(),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          kSecondaryTextColor,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Payment Method",
                                            style: kTextStyleSmallPrimary,
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: kSecondaryTextColor),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: DropdownButton<String>(
                                              isDense: true,
                                              isExpanded: true,
                                              value: dropdownValue,
                                              icon:
                                                  const Icon(Icons.expand_more),
                                              iconSize: 18,
                                              style: const TextStyle(
                                                  color: kSecondaryTextColor),
                                              underline: Container(
                                                color: null,
                                              ),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  dropdownValue = newValue!;
                                                });
                                              },
                                              items: <String>[
                                                'One',
                                                'Two',
                                                'Free',
                                                'Four'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            padding: EdgeInsets.only(top: 10, bottom: 15,left: 15,right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "ID",
                                    style: kTextStyleSmallBlueBoldPrimary,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    "Date Requested",
                                    style: kTextStyleSmallBlueBoldPrimary,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    "Amount",
                                    style: kTextStyleSmallBlueBoldPrimary,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    "Payment Method",
                                    style: kTextStyleSmallBlueBoldPrimary,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Text(
                                    "Status",
                                    style: kTextStyleSmallBlueBoldPrimary,
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 35,
                              itemBuilder: (context, int index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  padding: EdgeInsets.only(top: 10, bottom: 15,left: 15,right: 15),
                                  decoration: BoxDecoration(
                                      color: index % 2 == 0
                                          ? Colors.white
                                          : kColorLightGrey),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "1234",
                                          style: kTextStyleSmallPrimary,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "Date",
                                          style: kTextStyleSmallPrimary,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "\$123",
                                          style: kTextStyleSmallPrimary,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "card",
                                          style: kTextStyleSmallPrimary,
                                        ),
                                        flex: 2,
                                      ),
                                      Expanded(
                                          child: Text(
                                            "Paid",
                                            style: kTextStyleSmallPrimary,
                                          ),
                                          flex: 1),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ]),
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
