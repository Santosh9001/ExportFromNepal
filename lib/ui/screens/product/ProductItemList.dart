import 'package:export_nepal/model/core/products.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:flutter/material.dart';

class ProductItemList extends StatelessWidget {
  final Products _products;
  ProductItemList(this._products);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.6,
        ),
        itemCount: _products.items!.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCardSmall(_products.items![index]);
        },
      ),
    );
  }
}
