import 'package:connectivity/connectivity.dart';
import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemList.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:export_nepal/utils/internet_check.dart';
import 'package:export_nepal/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CategoryUI extends StatefulWidget {
  const CategoryUI({Key? key}) : super(key: key);

  @override
  _CategoryUIState createState() => _CategoryUIState();
}

class _CategoryUIState extends State<CategoryUI> {
  CategoryProvider? provider;
  Categories? _categories;
  ApiResponse? _categoryResponse;

  bool hasInternet = false, isChecking = true;

  @override
  void initState() {
    super.initState();
    check();
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
    if (provider != null) {
      _categoryResponse = provider!.categoryResponse;
      if (_categoryResponse != null && _categoryResponse!.data != null) {
        _categories = _categoryResponse!.data! as Categories;
      }
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
                    ),
                  ),
                )
              : FutureBuilder(
                  builder: (context, snapshot) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                "Categories",
                                style: kTextStyleLargeBlue,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          snapshot.connectionState == ConnectionState.done
                              ? (snapshot.hasError
                                  ? Center(
                                      child: Text('${snapshot.error} occured',
                                          style: kTextStyleSmallPrimary),
                                    )
                                  : getWidgetValue(snapshot.data))
                              : LinearProgressIndicator(),
                        ],
                      ),
                    );
                  },
                  future: invokeCategories(),
                ),
    );
  }

  getWidgetValue(data) {
    if (data != null) {
      _categoryResponse = data;
      if (_categoryResponse != null) {
        _categories = _categoryResponse!.data as Categories;
        return CategoryItemList(_categories!);
      }
    }
  }

  Future<ApiResponse<dynamic>> invokeCategories() async {
    provider = Provider.of<CategoryProvider>(context, listen: false);
    await provider!.invokeCategories();
    return provider!.categoryResponse;
  }
}
