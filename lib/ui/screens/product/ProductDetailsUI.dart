import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCard.dart';
import 'package:export_nepal/ui/screens/product/ProductProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

class ProductDetailsUI extends StatefulWidget {
  const ProductDetailsUI({Key? key}) : super(key: key);

  @override
  _ProductDetailsUIState createState() => _ProductDetailsUIState();
}

class _ProductDetailsUIState extends State<ProductDetailsUI> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Consumer<ProductProvider>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 9,
                      child: CustomScrollView(
                        slivers: [
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                Stack(
                                  children: [
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 5.0, right: 5.0,top: 230),
                                            padding: EdgeInsets.only(
                                                left: 5.0,
                                                right: 5.0,
                                                top: 90,
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Handmade Energy Healing Metal Yoga Meditation Singing Bowl | Singing "
                                                  "Bowl",
                                                  style:
                                                      kTextStyleBlueBoldMedium,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    RatingBar.builder(
                                                      wrapAlignment:
                                                          WrapAlignment.start,
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 15,
                                                      itemPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 1.0),
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.verified,
                                                      size: 15,
                                                      color:
                                                          kSecondaryTextColor,
                                                    ),
                                                    Text(
                                                      "  Artisan Market Nepal",
                                                      style: TextStyle(
                                                          color:
                                                              kSecondaryTextColor,
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 8.0,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "USD 6.50",
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
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
                                                            SizedBox(
                                                              width: 10,
                                                              height: 10,
                                                              child: Checkbox(
                                                                  value: true,
                                                                  onChanged:
                                                                      null),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 8),
                                                              child: Text(
                                                                "In Stock",
                                                                style: TextStyle(
                                                                    color:
                                                                        kSecondaryTextColor),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              width: 10,
                                                              height: 10,
                                                              child: Checkbox(
                                                                  value: true,
                                                                  onChanged:
                                                                      null),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 8),
                                                              child: Text(
                                                                "In wholesale",
                                                                style: TextStyle(
                                                                    color:
                                                                        kSecondaryTextColor),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10.0),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Available Colors",
                                                          style:
                                                              kTextStyleSmall,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: provider
                                                              .createColors(),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Quantity",
                                                          style:
                                                              kTextStyleSmall,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {
                                                                provider
                                                                    .setQuantity(
                                                                        1);
                                                              },
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    color:
                                                                        kColorPrimary),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    size: 10.0,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    color:
                                                                        kCategoryBlue),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .fromLTRB(
                                                                          15,
                                                                          8,
                                                                          15,
                                                                          8),
                                                                  child: Text(
                                                                    provider
                                                                        .quantity
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (provider
                                                                          .quantity >=
                                                                      2)
                                                                    provider
                                                                        .setQuantity(
                                                                            -1);
                                                                });
                                                              },
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    color:
                                                                        kColorPrimary),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .remove,
                                                                    size: 10.0,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10.0),
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Available Sizes",
                                                        style: kTextStyleSmall,
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Wrap(
                                                        runSpacing: 5,
                                                        children: provider
                                                            .createSizes(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                const Divider(
                                                  color: kSecondaryTextColor,
                                                  height: 1,
                                                  thickness: 1,
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Shipping term :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "FOB",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Unit of measure :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "Pcs",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Package weight :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "0.05kg",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Package Volume (LxBxH) :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "25x20x5",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Min Order Quantity :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "2",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Max Order Qunatity :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "100",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Available Stock :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "100",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Supply Ability :",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryTextColor),
                                                      ),
                                                      Text(
                                                        "100",
                                                        style: TextStyle(
                                                            color:
                                                                kColorPrimary),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 20, 10, 30),
                                            margin: EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            decoration: BoxDecoration(
                                              color: kColorPink,
                                              border: Border.all(
                                                color: kColorPink,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Lakhey Trade Suppliers",
                                                      style: TextStyle(
                                                          color: kColorPrimary,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Icon(
                                                        Icons.verified,
                                                        size: 20,
                                                        color: kColorPrimary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  "Lalitpur,Bagmati,Nepal,44600",
                                                  style:
                                                      kTextStyleRegularPrimary,
                                                ),
                                                SizedBox(height: 20),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.black,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      30,
                                                                  vertical: 15),
                                                          textStyle: TextStyle(
                                                              fontSize: 30,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Message The Supplier',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            margin: EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Description",
                                                  style:
                                                      kTextStyleBlackBoldMedium,
                                                ),
                                                SizedBox(
                                                  height: 8.0,
                                                ),
                                                Text(
                                                  "Description about the product goes here.",
                                                  style: kTextStyleSmallPrimary,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 10),
                                            child: Text(
                                              "Reviews",
                                              style: kTextStyleLargeBlue,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            margin: EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 10),
                                                          width: 25,
                                                          height: 25,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    'https://googleflutter.com/sample_image.jpg'),
                                                                fit: BoxFit
                                                                    .fill),
                                                          ),
                                                        ),
                                                        Text(
                                                          "Andre Young",
                                                          style:
                                                              kTextStyleBlackBoldMedium,
                                                        )
                                                      ],
                                                    ),
                                                    RatingBar.builder(
                                                      wrapAlignment:
                                                          WrapAlignment.start,
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 15,
                                                      itemPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 1.0),
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Description about the rating goes here",
                                                    style:
                                                        kTextStyleSmallPrimary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Text(
                                                    "See All Reviews ",
                                                    style:
                                                        kTextStyleRedBoldMedium,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.chevron_right,
                                                  color: kColorRed,
                                                )
                                              ],
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Text(
                                                    "Like this product ?",
                                                    style: TextStyle(
                                                        color:
                                                            kPrimaryTextColor,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Text(
                                                    " Write your own review here.",
                                                    style: TextStyle(
                                                        color: kColorPrimary,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "You may also like",
                                                  style: TextStyle(
                                                    color: kColorPrimary,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Text(
                                                        "Shop More ",
                                                        style:
                                                            kTextStyleRedBoldMedium,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.chevron_right,
                                                      color: kColorRed,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Container(
                                            height: 280,
                                            child: ListView.builder(
                                                itemCount: 4,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, index) {
                                                  return ProductCard(
                                                      180.0, 180.0);
                                                }),
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, right: 15.0, top: 10),
                                        child: Container(
                                          child: Stack(
                                            children: [
                                              ImageSlideshow(
                                                width: double.infinity,
                                                height: 300,
                                                initialPage: 0,
                                                indicatorColor: Colors.blue,
                                                indicatorBackgroundColor:
                                                    Colors.grey,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      "https://www.campaignmonitor.com/wp-content/uploads/2010/12/background_d.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOVU3xeaCk1CgdaPgancYulm2-vQdr4w7mzumRB5eXr9tWkOECoUCWgbg9F_39USGkDA&usqp=CAU",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],

                                                /// Called whenever the page in the center of the viewport changes.
                                                onPageChanged: (value) {
                                                  print('Page changed: $value');
                                                },

                                                /// Auto scroll interval.
                                                /// Do not auto scroll with null or 0.
                                                autoPlayInterval: 3000,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5, right: 5, left: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      },
                                                      icon: Icon(
                                                          Icons.arrow_back),
                                                      iconSize: 25,
                                                      color: Colors.white,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 5),
                                                            child: IconButton(
                                                              onPressed:
                                                                  () async {
                                                                Share.share(
                                                                  "Current File",
                                                                  subject:
                                                                      "This is test",
                                                                );
                                                              },
                                                              icon: Icon(
                                                                  Icons.share),
                                                              iconSize: 25,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .favorite_border_outlined),
                                                            iconSize: 25,
                                                            color: Colors.white,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, left: 40, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                          "assets/images/iconly_light_bag.svg",
                                          height: 25,
                                        )),
                                  ),
                                  Text(
                                    "Cart (2)",
                                    style: TextStyle(
                                        color: kSecondaryTextColor,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Expanded(
                                flex: 6,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: kColorPrimary,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Request Queue",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                          Container(
                                            width: 1,
                                            height: 20,
                                            color: Colors.white,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Add to Cart",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
