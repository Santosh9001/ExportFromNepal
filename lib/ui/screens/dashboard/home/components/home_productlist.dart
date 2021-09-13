import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/ui/screens/product/ProductItemList.dart';
import 'package:export_nepal/ui/screens/product/ProductProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeProductLists extends StatefulWidget {
  final String title;
  HomeProductLists(this.title);

  @override
  _HomeProductListState createState() => _HomeProductListState(title);
}

class _HomeProductListState extends State<HomeProductLists> {
  final String title;
  _HomeProductListState(this.title) {
    controller.addListener(() {
      var isEnd = controller.offset == controller.position.maxScrollExtent;
      if (isEnd && provider != null) {
        setState(() {
          if (provider!.currentPage != products!.data!.lastPage)
            invokeProductLists(provider!.currentPage);
        });
      }
    });
  }
  ScrollController controller = ScrollController(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
  );
  Product? products;
  List<Items> productLists = [];
  ApiResponse? _productResponse;
  ProductProvider? provider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ApiResponse<dynamic>>(
        builder: (context, snapshot) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "$title",
                            style: kTextStyleMediumPrimary,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter setState) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    content: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(left: 100),
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Filter",
                                                style: TextStyle(
                                                    color: kColorPrimary,
                                                    fontSize: 18),
                                              ),
                                              Icon(
                                                Icons.close,
                                                size: 20,
                                                color: kColorPrimary,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              });
                        },
                        child: SvgPicture.asset(
                          "assets/images/iconly_light_outline_filter_2.svg",
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                        child: SvgPicture.asset(
                          "assets/images/iconly_light_outline_search.svg",
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  snapshot.hasData
                      ? getWidgetValue(snapshot.data)
                      : LinearProgressIndicator()
                ],
              ),
            ),
          );
        },
        future: invokeProductLists(1),
      ),
    );
  }

  getWidgetValue(data) {
    _productResponse = data;
    if (_productResponse != null) {
      products = _productResponse!.data as Product;
      productLists.addAll(products!.data!.items as List<Items>);
      provider!.setCurrentPage(products!.data!.currentPage!);
      return Expanded(
        child: GridView.builder(
          controller: controller,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.6,
          ),
          itemCount: productLists.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCardSmall(productLists[index]);
          },
        ),
      );
    }
  }

  Future<ApiResponse<dynamic>> invokeProductLists(int page) async {
    provider = Provider.of<ProductProvider>(context, listen: false);
    await provider!.invokeHomeProducts(title, page);
    return provider!.homeProductResponse;
  }
}
