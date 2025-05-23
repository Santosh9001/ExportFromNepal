import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/provider/InnerCategoryProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/innerCategory/InnerCategoryItems.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InnerCategoryUI extends StatefulWidget {
  final CategoryItems items;
  final String category;
  InnerCategoryUI(this.items, this.category);

  @override
  _InnerCategoryUIState createState() => _InnerCategoryUIState(items, category);
}

class _InnerCategoryUIState extends State<InnerCategoryUI>
    with SingleTickerProviderStateMixin {
  final CategoryItems items;
  final String category;
  _InnerCategoryUIState(this.items, this.category);

  InnerCategoryProvider? provider;
  Categories? _subCategories;
  ApiResponse? _subCategoryResponse;
  String defaultValue = "Loading....";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                  color: Colors.white,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          size: 35,
                          color: kColorPrimary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items.name!,
                              style: TextStyle(
                                  color: kPrimaryTextColor, fontSize: 20),
                            ),
                            Text(
                              "Categories > $category > " + items.name!,
                              style: TextStyle(
                                  color: kSecondaryTextColor, fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                snapshot.connectionState == ConnectionState.done
                    ? (snapshot.hasError
                        ? Center(
                            child: Text('${snapshot.error} occured',
                                style: kTextStyleSmallPrimary),
                          )
                        : getWidgetValue(snapshot.data))
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ],
            ),
          ),
        );
      },
      future: invokeInnerCategories(),
    );
  }

  getWidgetValue(data) {
    _subCategoryResponse = data;
    if (_subCategoryResponse != null) {
      _subCategories = _subCategoryResponse!.data as Categories;
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: ListView.separated(
            itemCount: _subCategories != null
                ? _subCategories!.data!.categoryItems!.length
                : 0,
            itemBuilder: (BuildContext context, int index) {
              return _subCategories != null
                  ? InnerCategoryItem(
                      _subCategories!.data!.categoryItems![index], category)
                  : Text(
                      "$defaultValue",
                      style: kTextStyleSmallPrimary,
                    );
            },
            separatorBuilder: (BuildContext context, int index) =>
                new Divider(color: kSecondaryTextColor, height: 2),
          ),
        ),
        //padding: EdgeInsets.all(15),
      );
    }
  }

  Future<ApiResponse<dynamic>> invokeInnerCategories() async {
    provider = Provider.of<InnerCategoryProvider>(context, listen: false);
    await provider!.invokeSubcategory(items.id!);
    return provider!.subCategoryResponse;
  }
}
