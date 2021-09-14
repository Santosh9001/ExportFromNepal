import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:flutter/material.dart';

class ProductItemList extends StatefulWidget {
  final Product _products;
  ProductItemList(this._products);

  @override
  _ProductItemListState createState() => _ProductItemListState(_products);
}

class _ProductItemListState extends State<ProductItemList> {
  final Product _products;
  _ProductItemListState(this._products);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.6,
        ),
        itemCount: _products.data!.items!.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCardSmall(_products.data!.items![index]);
        },
      ),
    );
  }
}
