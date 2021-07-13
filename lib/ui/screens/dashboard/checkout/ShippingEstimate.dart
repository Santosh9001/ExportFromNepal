import 'package:dotted_border/dotted_border.dart';
import 'package:export_nepal/provider/ShippingProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class ShippingEstimate extends StatefulWidget {
  const ShippingEstimate({Key? key}) : super(key: key);

  @override
  _ShippingEstimateState createState() => _ShippingEstimateState();
}

class _ShippingEstimateState extends State<ShippingEstimate> {
  bool value = false;
  int val = -1;
  String dropdownValue = 'One';
  String statedropDown = 'One';
  int radioGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ShippingProvider>(
      create: (context) => ShippingProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Consumer<ShippingProvider>(
              builder: (context, provider, child) {
                provider.setUpIndicator(context);
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 10, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    provider.pageController.page ==
                                            provider.pageController.initialPage
                                        ? Navigator.of(context).pop(true)
                                        : provider.switchPage(false);
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
                                    "Checkout",
                                    style: kTextStyleRegularPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: provider.myStepProgressView,
                      ),
                      Expanded(
                        flex: 8,
                        child: PageView(
                          physics: new NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          controller: provider.pageController,
                          children: [
                            CustomScrollView(
                              slivers: [
                                SliverList(
                                    delegate: SliverChildListDelegate([
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        right: 10,
                                        bottom: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Estimate Shipping and Tax",
                                          style: kTextStyleBlueBoldMedium,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Country",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(25, 0, 25, 0),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: kSecondaryTextColor),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            value: dropdownValue,
                                            icon: const Icon(Icons.expand_more),
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
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "State/Province",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(25, 0, 25, 0),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: kSecondaryTextColor),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            value: statedropDown,
                                            icon: const Icon(Icons.expand_more),
                                            iconSize: 18,
                                            style: const TextStyle(
                                                color: kSecondaryTextColor),
                                            underline: Container(
                                              color: null,
                                            ),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                statedropDown = newValue!;
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
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Zip Code",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                          child: TextField(
                                            textInputAction:
                                                TextInputAction.done,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      25, 0, 25, 0),
                                              hintText:
                                                  "Enter your state zip code.",
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Select Delivery Method",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List<Widget>.generate(
                                              provider.shippings.length,
                                              (index) {
                                            return new Row(
                                              children: [
                                                Radio(
                                                  value: index,
                                                  groupValue: radioGroupValue,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      radioGroupValue =
                                                          (value) as int;
                                                    });
                                                  },
                                                  activeColor: kColorPrimary,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    provider.shippings[index],
                                                    style:
                                                        kTextStyleMediumPrimary,
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, right: 10),
                                          child: Text(
                                            "(I will buy the shipping service separately / My logistic" +
                                                "partner will pick up the goods from the seller.",
                                            style: TextStyle(
                                              color: kPrimaryTextColor,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]))
                              ],
                            ),
                            CustomScrollView(
                              slivers: [
                                SliverList(
                                  delegate: SliverChildListDelegate(
                                    [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 10,
                                            bottom: 30),
                                        child: provider.isAddressSaved
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    provider.getBillText,
                                                    style:
                                                        kTextStyleSmallPrimary,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 10, 20, 10),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .location_on,
                                                                  color:
                                                                      kColorBlack,
                                                                  size: 14,
                                                                ),
                                                                Text(
                                                                  "Customer Name",
                                                                  style:
                                                                      kTextStyleSmallPrimary,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(height: 8),
                                                            Text(
                                                              "abc@gmail.com",
                                                              style:
                                                                  kTextStyleSmall,
                                                            ),
                                                            SizedBox(height: 8),
                                                            Text(
                                                              "440-390-3390",
                                                              style:
                                                                  kTextStyleSmall,
                                                            ),
                                                            SizedBox(height: 8),
                                                            Text(
                                                              "Address of the user goes here.",
                                                              style:
                                                                  kTextStyleSmall,
                                                            ),
                                                          ],
                                                        ),
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.edit,
                                                                color:
                                                                    kSecondaryTextColor,
                                                                size: 14,
                                                              ),
                                                              Text(
                                                                " Change",
                                                                style:
                                                                    kTextStyleSmall,
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  !provider.isShipToSameAddress
                                                      ? Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              provider
                                                                  .getShipText,
                                                              style:
                                                                  kTextStyleSmallPrimary,
                                                            ),
                                                            SizedBox(
                                                                height: 10),
                                                            Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          10,
                                                                          10,
                                                                          20,
                                                                          10),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.location_on,
                                                                            color:
                                                                                kColorBlack,
                                                                            size:
                                                                                14,
                                                                          ),
                                                                          Text(
                                                                            "Customer Name",
                                                                            style:
                                                                                kTextStyleSmallPrimary,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              8),
                                                                      Text(
                                                                        "abc@gmail.com",
                                                                        style:
                                                                            kTextStyleSmall,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              8),
                                                                      Text(
                                                                        "440-390-3390",
                                                                        style:
                                                                            kTextStyleSmall,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              8),
                                                                      Text(
                                                                        "Address of the user goes here.",
                                                                        style:
                                                                            kTextStyleSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  InkWell(
                                                                    onTap:
                                                                        () {},
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .edit,
                                                                          color:
                                                                              kSecondaryTextColor,
                                                                          size:
                                                                              14,
                                                                        ),
                                                                        Text(
                                                                          " Change",
                                                                          style:
                                                                              kTextStyleSmall,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      : Container(),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, top: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 10,
                                                          height: 10,
                                                          child: Checkbox(
                                                            value: provider
                                                                .isShipToSameAddress,
                                                            onChanged: (value) {
                                                              provider
                                                                  .setShipToSaveAddressCheck();
                                                            },
                                                            activeColor:
                                                                kColorPrimary,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 20,
                                                                  bottom: 10),
                                                          child: Text(
                                                            "Billing Address is Same as Shipping Address.",
                                                            style: TextStyle(
                                                                color:
                                                                    kColorBlack,
                                                                fontSize: 13),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 50,
                                                  ),
                                                  DottedBorder(
                                                    borderType:
                                                        BorderType.RRect,
                                                    radius: Radius.circular(10),
                                                    dashPattern: [6, 6, 6, 6],
                                                    padding: EdgeInsets.all(6),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      child: Container(
                                                        height: 80,
                                                        width: double.infinity,
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons.add,
                                                                color:
                                                                    kColorBlack,
                                                              ),
                                                              Text(
                                                                "Add New Address",
                                                                style:
                                                                    kTextStyleRegularPrimary,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Container(
                                                    height: 150,
                                                    alignment: Alignment.center,
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 20, 0, 20),
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            25, 20, 20, 20),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Icon(
                                                          Icons.location_on,
                                                          color: kColorRed,
                                                        ),
                                                        Text(
                                                          "You have not added any address",
                                                          style:
                                                              kTextStyleRedRegularPrimary,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 50,
                                                  ),
                                                  DottedBorder(
                                                    borderType:
                                                        BorderType.RRect,
                                                    radius: Radius.circular(10),
                                                    dashPattern: [6, 6, 6, 6],
                                                    padding: EdgeInsets.all(6),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      child: Container(
                                                        height: 80,
                                                        width: double.infinity,
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons.add,
                                                                color:
                                                                    kColorBlack,
                                                              ),
                                                              Text(
                                                                "Add New Address",
                                                                style:
                                                                    kTextStyleRegularPrimary,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            CustomScrollView(
                              slivers: [
                                SliverList(
                                  delegate: SliverChildListDelegate([
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                          right: 10,
                                          bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Select Your Payment Method",
                                              style: kTextStyleSmallPrimary),
                                          SizedBox(height: 10),
                                          InkWell(
                                            onTap: () {
                                              provider.selectPaymentType(1);
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 80,
                                              padding: EdgeInsets.fromLTRB(
                                                  15, 5, 15, 5),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      new SvgPicture.asset(
                                                        "assets/images/paypal.svg",
                                                        height: 40,
                                                        fit: BoxFit.fitWidth,
                                                        allowDrawingOutsideViewBox:
                                                            true,
                                                        matchTextDirection:
                                                            true,
                                                      ),
                                                      provider.myPaymentType ==
                                                              1
                                                          ? Text(
                                                              "You will be redirected to PayPay website.",
                                                              style:
                                                                  kTextStyleSmallPrimary,
                                                            )
                                                          : Text(""),
                                                    ],
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                        unselectedWidgetColor:
                                                            Colors.white),
                                                    child: Checkbox(
                                                      value:
                                                          provider.myPaymentType ==
                                                                  1
                                                              ? true
                                                              : false,
                                                      onChanged: (value) {},
                                                      activeColor: kColorGreen,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              provider.selectPaymentType(2);
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              padding: EdgeInsets.fromLTRB(
                                                  15, 5, 15, 10),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          new SvgPicture.asset(
                                                            "assets/images/bank.svg",
                                                            height: 25,
                                                            width: 25,
                                                            fit:
                                                                BoxFit.fitWidth,
                                                            allowDrawingOutsideViewBox:
                                                                true,
                                                            matchTextDirection:
                                                                true,
                                                          ),
                                                          Text(
                                                              "  Direct Bank Transfer",
                                                              style:
                                                                  kTextStyleBlueBold),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      provider.myPaymentType ==
                                                              2
                                                          ? Text(
                                                              "You will be redirected to PayPay website.",
                                                              style:
                                                                  kTextStyleSmallPrimary,
                                                            )
                                                          : Text(""),
                                                    ],
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                        unselectedWidgetColor:
                                                            Colors.white),
                                                    child: Checkbox(
                                                      value:
                                                          provider.myPaymentType ==
                                                                  2
                                                              ? true
                                                              : false,
                                                      onChanged: (value) {},
                                                      activeColor: kColorGreen,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "SubTotal : ",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      Text(
                                        "USD 25.0",
                                        style: kTextStyleSmallBlueBoldPrimary,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Text(
                                        "Tax : ",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      Text(
                                        "USD 0",
                                        style: kTextStyleSmallBlueBoldPrimary,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Text(
                                        "Total Weight Package : ",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      Text(
                                        "4.5 Kgs",
                                        style: kTextStyleSmallBlueBoldPrimary,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Text(
                                        "Discount : ",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      Text(
                                        "USD 25.0",
                                        style: kTextStyleSmallBlueBoldPrimary,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Text(
                                        "Shipping : ",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      Text(
                                        "USD 25.0",
                                        style: kTextStyleSmallBlueBoldPrimary,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Text(
                                        "Order Total : ",
                                        style: kTextStyleSmallPrimary,
                                      ),
                                      Text(
                                        "USD 25.0",
                                        style: kTextStyleSmallBlueBoldPrimary,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15, bottom: 25),
                                decoration: BoxDecoration(
                                  color: kColorPrimary,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          provider.switchPage(true);
                                        },
                                        child: Text(
                                          "Continue",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(AntDesign.arrowright,
                                          color: Colors.white, size: 20),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]);
              },
            ),
          ),
        );
      }),
    );
  }
}
