import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/ui/screens/product/ProductDetailsUI.dart';
import 'package:export_nepal/ui/screens/product/ProductList.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class InnerCategoryItem extends StatelessWidget {
  final Items item;
  InnerCategoryItem(this.item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductList(item.name!,item.id!)));
      },
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name!,
                style: TextStyle(color: kColorPrimary, fontSize: 13),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.chevron_right_outlined,
                        size: 30,
                        color: kColorPrimary,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
