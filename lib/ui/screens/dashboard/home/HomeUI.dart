import 'package:export_nepal/ui/screens/dashboard/home/components/HomeMenuDialog.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'components/CollectionGrid.dart';
import 'components/HorizontalProductsList.dart';
import 'components/ProductCard.dart';
import 'components/ProductCardSmall.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kColorPrimary),
        title: Padding(
          padding : EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: new Image.asset(
                "assets/images/efn_logo.png",
                height: 30,
                width: 100,
              ),),
              Expanded(
                flex: 2,
                child: 
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                "assets/images/iconly_light_outline_search.svg",
                allowDrawingOutsideViewBox: true,
                height: 20,
              ),
              ),)
            ],
          ),
        ),
        backgroundColor: Color(0xFFE4EAFD),
      ),
      drawer: Drawer(
        child: HomeMenuDialog(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: ImageSlideshow(
                            width: double.infinity,
                            height: 100,
                            initialPage: 0,
                            indicatorColor: Colors.blue,
                            indicatorBackgroundColor: Colors.grey,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  "https://www.campaignmonitor.com/wp-content/uploads/2010/12/background_d.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0),
                              // 10% of the width, so there are ten blinds.
                              colors: <Color>[
                                Color(0xffDC5061),
                                Color(0xff475C9A)
                              ], // red to yellow
                            ),
                          ),
                          margin: EdgeInsets.only(top: 16),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "NOTICE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(kDummyNotice,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center),
                                Text(
                                  "Stay Home Stay Safe!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: double.infinity,
                          height: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                              child: HorizontalProductsList("New Products")),
                          width: double.infinity,
                          height: 300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                            child: Text(
                              "Advertisement",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          width: double.infinity,
                          height: 80,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                              child: HorizontalProductsList(
                                  "Best Selling Products")),
                          width: double.infinity,
                          height: 300,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: CollectionGrid(),
                        height: 270,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                              child: HorizontalProductsList("Most Viewed")),
                          width: double.infinity,
                          height: 300,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                        child: Text(
                          "Just for You",
                          style: kTextStyleBlueBoldMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.65,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/details');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ProductCardSmall(),
                        ),
                      );
                    },
                    childCount: 6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
