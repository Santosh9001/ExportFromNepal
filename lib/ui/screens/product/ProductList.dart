import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/ui/screens/product/ProductItemList.dart';
import 'package:export_nepal/ui/screens/product/ProductProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class ProductList extends StatefulWidget {
  final String title;
  final String id;
  ProductList(this.title, this.id);

  @override
  _ProductListState createState() => _ProductListState(title, id);
}

class _ProductListState extends State<ProductList> {
  final String title;
  final String id;
  _ProductListState(this.title, this.id);

  ProductProvider? provider;
  Product? _products;
  ApiResponse? _productResponse;
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
                  snapshot.connectionState == ConnectionState.done
                      ? (snapshot.hasError
                          ? Center(
                              child: Text('${snapshot.error} occured',
                                  style: kTextStyleSmallPrimary),
                            )
                          : getWidgetValue(snapshot.data))
                      : LinearProgressIndicator()
                ],
              ),
            ),
          );
        },
        future: invokeProductLists(),
      ),
    );
  }

  getWidgetValue(data) {
    _productResponse = data;
    if (_productResponse != null) {
      _products = _productResponse!.data as Product;
      return ProductItemList(_products!);
    }
  }

  Future<ApiResponse<dynamic>> invokeProductLists() async {
    provider = Provider.of<ProductProvider>(context, listen: false);
    await provider!.invokeproductsByCategory(id);
    return provider!.productResponse;
  }
}
