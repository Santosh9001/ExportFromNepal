import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/SubCategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryUI extends StatefulWidget {
  const CategoryUI({Key? key}) : super(key: key);

  @override
  _CategoryUIState createState() => _CategoryUIState();
}

class _CategoryUIState extends State<CategoryUI> {
  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.8,
              ),
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return CategoryItemSmall();
              },
            ),
          ),
        ],
      ),
    );
  }
}
