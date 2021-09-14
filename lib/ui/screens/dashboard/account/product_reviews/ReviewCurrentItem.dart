import 'package:export_nepal/provider/ReviewProvider.dart';
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

class ReviewCurrentItem extends StatefulWidget {
  const ReviewCurrentItem({Key? key}) : super(key: key);

  @override
  _ReviewCurrentItemState createState() => _ReviewCurrentItemState();
}

class _ReviewCurrentItemState extends State<ReviewCurrentItem> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReviewProvider>(
      create: (context) => ReviewProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Consumer<ReviewProvider>(
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
                                                left: 5.0,
                                                right: 5.0,
                                                top: 210),
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                    SizedBox(height: 20),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "USD 6.50",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Rate The Product",
                                              style: kTextStyleRegularPrimary,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          RatingBar.builder(
                                            wrapAlignment: WrapAlignment.start,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 30,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Review The Product",
                                              style: kTextStyleRegularPrimary,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.multiline,
                                              maxLines: 6,
                                              style: kTextStyleSmallPrimary,
                                              decoration: new InputDecoration(
                                                isDense: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 15,
                                                        horizontal: 10),
                                                hintText: 'Your Message',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          )
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
                                                height: 280,
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
                                                          Icons.chevron_left),
                                                      iconSize: 35,
                                                      color: Colors.white,
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
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorPrimary),
                              onPressed: () {},
                              child: Text(
                                "Add Review",
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
            ),
          ),
        );
      }),
    );
  }
}
