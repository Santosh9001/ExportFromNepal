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
  final Items items;
  final String category;
  InnerCategoryUI(this.items, this.category);

  @override
  _InnerCategoryUIState createState() => _InnerCategoryUIState(items, category);
}

class _InnerCategoryUIState extends State<InnerCategoryUI>
    with SingleTickerProviderStateMixin {
  final Items items;
  final String category;
  _InnerCategoryUIState(this.items, this.category);

  InnerCategoryProvider? provider;
  Categories? _subCategories;
  ApiResponse? _subCategoryResponse;
  String defaultValue = "Loading....";

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<InnerCategoryProvider>(context, listen: true);
    if (provider != null) {
      provider!.invokeSubcategory(items.id!);
      _subCategoryResponse = provider!.subCategoryResponse;
      if (_subCategoryResponse!.data != null) {
        _subCategories = _subCategoryResponse!.data as Categories;
      }
    }
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
                          style:
                              TextStyle(color: kPrimaryTextColor, fontSize: 20),
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: ListView.separated(
                  itemCount: _subCategories != null
                      ? _subCategories!.items!.length
                      : 0,
                  itemBuilder: (BuildContext context, int index) {
                    return _subCategories != null
                        ? InnerCategoryItem(
                            _subCategories!.items![index],
                          )
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
            ),
          ],
        ),
      ),
    );
  }
}
