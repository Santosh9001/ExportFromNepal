import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/innerCategory/InnerCategoryItems.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  _InnerCategoryUIState(this.items,this.category);

  @override
  Widget build(BuildContext context) {
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
                          "Categories > $category > "+items.name!,
                          style: TextStyle(
                              color: kSecondaryTextColor, fontSize: 11),
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
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return InnerCategoryItem();
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
