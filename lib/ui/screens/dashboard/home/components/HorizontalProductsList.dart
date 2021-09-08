import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

import 'ProductCard.dart';

class HorizontalProductsList extends StatelessWidget {
  final String title;
  Product? product;
  HorizontalProductsList(this.title, this.product);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              this.title,
              style: kTextStyleBlueBoldMedium,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/productLists',
                    arguments: {'name': title});
              },
              child: Text(
                "Shop More",
                style: kTextStyleRedBoldMedium,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: this.product!.data != null ? this.product!.data!.items!.length : 0,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductCard(180.0, 180.0,
                    this.product!.data != null ? this.product!.data!.items![index] : null);
              }),
        )
      ],
    );
  }
}
