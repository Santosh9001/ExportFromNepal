import 'package:export_nepal/provider/RMAProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/account/components/RMAStatusDialog.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RMADashboard extends StatefulWidget {
  const RMADashboard({Key? key}) : super(key: key);

  @override
  _RMAState createState() => _RMAState();
}

class _RMAState extends State<RMADashboard> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RMAProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(child: Consumer<RMAProvider>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                      child: Row(
                        children: [
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
                              "RMA",
                              style: kTextStyleMediumPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 10, right: 10),
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "RMA ID",
                                        style: kTextStyleBlackBold,
                                      )),
                                ),
                                Expanded(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Order #",
                                        style: kTextStyleBlackBold,
                                      )),
                                ),
                                Expanded(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Resolution",
                                        style: kTextStyleBlackBold,
                                      )),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: kTextStyleSmallPrimary,
                                    decoration: new InputDecoration(
                                      hintText: "RMA ID",
                                      fillColor: kColorBackground,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 3),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: kTextStyleSmallPrimary,
                                    decoration: new InputDecoration(
                                      hintText: "Order #",
                                      fillColor: kColorBackground,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 3),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: kTextStyleSmallPrimary,
                                    decoration: new InputDecoration(
                                      fillColor: kColorBackground,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 3),
                                    ),
                                  ),
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Quote's Status",
                                        style: kTextStyleBlackBold,
                                      )),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Date",
                                        style: kTextStyleBlackBold,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                                      decoration: BoxDecoration(
                                          color: kColorBackground,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            provider.currentSelectedValue,
                                            style: kTextStyleSmallPrimary,
                                          ),
                                          Icon(
                                            Icons.expand_more,
                                            size: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor: Colors.transparent,
                                              content: RMAStatusDialog(),                                                                                            
                                            );
                                          });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: kTextStyleSmallPrimary,
                                    decoration: new InputDecoration(
                                      hintText: "From",
                                      fillColor: kColorBackground,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 3),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: kTextStyleSmallPrimary,
                                    decoration: new InputDecoration(
                                      hintText: "To",
                                      fillColor: kColorBackground,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 3),
                                    ),
                                  ),
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: kColorPrimary),
                                    onPressed: () {},
                                    child: Text(
                                      "Apply Filter",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("RMA ID",
                                  style: kTextStyleSmallBlueBoldPrimary,
                                  textAlign: TextAlign.center),
                              flex: 1,
                            ),
                            Expanded(
                              child: Text("Order No.",
                                  style: kTextStyleSmallBlueBoldPrimary,
                                  textAlign: TextAlign.center),
                              flex: 2,
                            ),
                            Expanded(
                              child: Text("Resolution",
                                  style: kTextStyleSmallBlueBoldPrimary,
                                  textAlign: TextAlign.center),
                              flex: 2,
                            ),
                            Expanded(
                              child: Text("Quote's Status",
                                  style: kTextStyleSmallBlueBoldPrimary,
                                  textAlign: TextAlign.center),
                              flex: 2,
                            ),
                            Expanded(
                              child: Text("Date",
                                  style: kTextStyleSmallBlueBoldPrimary,
                                  textAlign: TextAlign.end),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 5,
                        child: Container(
                          child: ListView.builder(
                            itemCount: 35,
                            itemBuilder: (context, int index) {
                              return Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 0, right: 0),
                                decoration: BoxDecoration(
                                    color: index % 2 == 0
                                        ? kColorBackground
                                        : kColorGrey),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Text("1234",
                                          style: kTextStyleSmallPrimary,
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text("Date",
                                          style: kTextStyleSmallPrimary,
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text("\$123",
                                          style: kTextStyleSmallPrimary,
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      child: Text("card",
                                          style: kTextStyleSmallPrimary,
                                          textAlign: TextAlign.center),
                                      flex: 2,
                                    ),
                                    Expanded(
                                        child: Text("Paid",
                                            style: kTextStyleSmallPrimary,
                                            textAlign: TextAlign.end),
                                        flex: 1),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorPrimary),
                              onPressed: () {},
                              child: Text(
                                "Request A New RMA",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            )),
          );
        },
      ),
    );
  }
}
