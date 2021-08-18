import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SubCategoryItemSmall.dart';

class SubCategoryList extends StatelessWidget {
  final Categories _subCategories;
  final String text;

  SubCategoryList(this._subCategories, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10),
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.8,
            ),
            itemCount: _subCategories.items!.length,
            itemBuilder: (BuildContext context, int index) {
              return SubCategoryItemSmall(
                  _subCategories.items![index], text);
            },
          ),
        ),
      ),
    );
  }

}