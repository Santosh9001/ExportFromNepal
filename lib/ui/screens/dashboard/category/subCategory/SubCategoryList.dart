import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'SubCategoryItemSmall.dart';

class SubCategoryList extends StatelessWidget {
  Categories? _subCategories;
  final String? text;

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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.8,
            ),
            itemCount: (_subCategories != null && _subCategories!.items != null)
                ? _subCategories!.items!.length
                : 0,
            itemBuilder: (BuildContext context, int index) {
              return SubCategoryItemSmall(_subCategories!.items![index], text!);
            },
          ),
        ),
      ),
    );
  }
}
