import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/SubCategoryUI.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/innerCategory/InnerCategoryUI.dart';
import 'package:export_nepal/ui/screens/product/ProductList.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItemSmall extends StatelessWidget {
  final Items items;

  CategoryItemSmall(this.items);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: InkWell(
              onTap: () {
                if (int.parse(items.childrenCount!) != 0)
                  Navigator.pushNamed(context, '/subCategory');
                else
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductList('',items.id!)));
              },
              child: Container(
                color: kCategoryBlue,
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    items.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            items.name!,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 8.0,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
