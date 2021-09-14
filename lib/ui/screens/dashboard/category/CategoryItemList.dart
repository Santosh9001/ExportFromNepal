import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';

import 'CategoryItemSmall.dart';

class CategoryItemList extends StatelessWidget {
  final Categories _categories;
  String defaultValue = "Loading....";

  CategoryItemList(this._categories);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
        ),
        itemCount: _categories.data!.categoryItems!.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItemSmall(_categories.data!.categoryItems![index]);
        },
      ),
    );
  }
}
