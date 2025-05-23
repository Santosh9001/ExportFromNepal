import 'package:connectivity/connectivity.dart';
import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/model/core/home_content.dart';
import 'package:export_nepal/model/core/notice.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/dashboard_provider.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/HomeMenuDialog.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'components/CollectionGrid.dart';
import 'components/HorizontalProductsList.dart';
import 'components/ProductCardSmall.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  DashboardProvider? _dashboardProvider;
  ApiResponse? _newProductResponse,
      _bestSellingProductResponse,
      _justForYouResponse,
      _homeContentResponse,
      _mostViewedProductResponse;
  Product? _newProduct, _bestSellingProduct, _mostViewedProduct, _justForYou;
  Home_content? _home_content;

  bool hasInternet = false, isChecking = true;
  @override
  void initState() {
    super.initState();
    check();
  }

  void reloadServerData() {
    setState(() {});
  }

  check() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      print("******* Mobile is ON ******");
      setState(() {
        isChecking = false;
        hasInternet = true;
        //navigate to another screen.....
      });
    } else if (connectivityResult == ConnectivityResult.wifi) {
      print("******* Wifi is ON ******");
      setState(() {
        isChecking = false;
        hasInternet = true;
        //navigate to another screen.....
      });
    } else {
      setState(() {
        isChecking = false;
        hasInternet = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _dashboardProvider = Provider.of<DashboardProvider>(context, listen: true);
    _newProductResponse = _dashboardProvider!.newProductResponse;
    _mostViewedProductResponse = _dashboardProvider!.mostViewedProductResponse;
    _justForYouResponse = _dashboardProvider!.justForYourResponse;
    _homeContentResponse = _dashboardProvider!.homeContentResponse;
    _bestSellingProductResponse =
        _dashboardProvider!.bestSellingProductResponse;

    if (_homeContentResponse!.data != null) {
      _home_content = _homeContentResponse!.data as Home_content;
    }

    if (_newProductResponse!.data != null) {
      _newProduct = _newProductResponse!.data as Product;
    }

    if (_bestSellingProductResponse!.data != null) {
      _bestSellingProduct = _bestSellingProductResponse!.data as Product;
    }

    if (_mostViewedProductResponse!.data != null) {
      _mostViewedProduct = _mostViewedProductResponse!.data as Product;
    }

    if (_justForYouResponse!.data != null) {
      _justForYou = _justForYouResponse!.data as Product;
    }

    return Container(
      child: isChecking
          ? Center(
              child: CircularProgressIndicator(),
            )
          : !hasInternet
              ? Container(
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/images/no_wifi.svg",
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    allowDrawingOutsideViewBox: true,
                  )),
                )
              : Scaffold(
                  appBar: AppBar(
                    iconTheme: IconThemeData(color: kColorPrimary),
                    title: Padding(
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 9,
                            child: new Image.asset(
                              "assets/images/efn_logo.png",
                              height: 30,
                              width: 100,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/searchUI');
                              },
                              child: SvgPicture.asset(
                                "assets/images/iconly_light_outline_search.svg",
                                allowDrawingOutsideViewBox: true,
                                height: 20,
                              ),
                            ),
                          )
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Container(
                                      child: ImageSlideshow(
                                        width: double.infinity,
                                        height: 100,
                                        initialPage: 0,
                                        indicatorColor: Colors.blue,
                                        indicatorBackgroundColor: Colors.grey,
                                        children: _homeContentResponse!
                                                    .status !=
                                                Status.LOADING
                                            ? (_homeContentResponse!.status ==
                                                        Status.ERROR &&
                                                    _home_content == null
                                                ? ServerErrorWidget(
                                                    _homeContentResponse!
                                                        .message!,
                                                    onReload: reloadServerData)
                                                : _dashboardProvider!
                                                    .getClipRect(_home_content!
                                                        .data!.bannerslider))
                                            : [
                                                Center(
                                                    child:
                                                        CircularProgressIndicator())
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "NOTICE",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            _homeContentResponse!.status !=
                                                    Status.LOADING
                                                ? (_homeContentResponse!
                                                                .status ==
                                                            Status.ERROR &&
                                                        _home_content == null
                                                    ? ServerErrorWidget(
                                                        _homeContentResponse!
                                                            .message!,
                                                        onReload:
                                                            reloadServerData)
                                                    : Text(
                                                        "${_home_content!.data!.notice!.data}",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 14,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center))
                                                : CircularProgressIndicator(),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Center(
                                        // Error in future not handling
                                        child: _newProductResponse!.status !=
                                                Status.LOADING
                                            ? (_newProductResponse!.status ==
                                                        Status.ERROR &&
                                                    _newProduct == null
                                                ? ServerErrorWidget(
                                                    _newProductResponse!
                                                        .message!,
                                                    onReload: reloadServerData)
                                                : HorizontalProductsList(
                                                    "New Products",
                                                    _newProduct))
                                            : CircularProgressIndicator(),
                                      ),
                                      width: double.infinity,
                                      height: 300,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Center(
                                        child: _homeContentResponse!.status !=
                                                Status.LOADING
                                            ? (_homeContentResponse!.status ==
                                                        Status.ERROR &&
                                                    _home_content == null
                                                ? ServerErrorWidget(
                                                    _homeContentResponse!
                                                        .message!,
                                                    onReload: reloadServerData)
                                                : Image.network(
                                                    "${_home_content!.data!.advertisement!.image}",
                                                    fit: BoxFit.cover,
                                                  ))
                                            : Text(
                                                "Advertisement",
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                      ),
                                      width: double.infinity,
                                      height: 80,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Center(
                                        // Error in future not handling
                                        child: _bestSellingProductResponse!
                                                    .status !=
                                                Status.LOADING
                                            ? (_bestSellingProductResponse!
                                                            .status ==
                                                        Status.ERROR &&
                                                    _bestSellingProduct == null
                                                ? ServerErrorWidget(
                                                    _bestSellingProductResponse!
                                                        .message!,
                                                    onReload: reloadServerData)
                                                : HorizontalProductsList(
                                                    "Best Selling Products",
                                                    _bestSellingProduct))
                                            : CircularProgressIndicator(),
                                      ),
                                      width: double.infinity,
                                      height: 300,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: _homeContentResponse!.status !=
                                            Status.LOADING
                                        ? (_homeContentResponse!.status ==
                                                    Status.ERROR &&
                                                _home_content == null
                                            ? ServerErrorWidget(
                                                _homeContentResponse!.message!,
                                                onReload: reloadServerData)
                                            : CollectionGrid(_home_content!
                                                .data!.collection))
                                        : CircularProgressIndicator(),
                                    height: 270,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Center(
                                        // Error in future not handling
                                        child: _mostViewedProductResponse!
                                                    .status !=
                                                Status.LOADING
                                            ? (_mostViewedProductResponse!
                                                            .status ==
                                                        Status.ERROR &&
                                                    _mostViewedProduct == null
                                                ? ServerErrorWidget(
                                                    _mostViewedProductResponse!
                                                        .message!,
                                                    onReload: reloadServerData)
                                                : HorizontalProductsList(
                                                    "Most Viewed",
                                                    _mostViewedProduct))
                                            : CircularProgressIndicator(),
                                      ),
                                      width: double.infinity,
                                      height: 300,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8, bottom: 8),
                                    child: Text(
                                      "Just for You",
                                      style: kTextStyleBlueBoldMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SliverGrid(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 0.60,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      print(
                                          _justForYou!.data!.items![index].sku);
                                      Navigator.pushNamed(
                                          context, '/details', arguments: {
                                        'exampleArgument':
                                            _justForYou!.data!.items![index].id
                                      });
                                    },
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: ProductCardSmall(
                                            _justForYou!.data!.items![index])),
                                  );
                                },
                                childCount:
                                    _justForYou?.data!.items!.length ?? 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
