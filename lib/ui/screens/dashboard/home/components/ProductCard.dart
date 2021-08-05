import 'package:export_nepal/model/core/Product/models/items.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final width;
  final height;
  Items? item;

  ProductCard(this.height, this.width, this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: this.height - 80, bottom: 10),
              width: this.width,
              height: this.height,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        this.item != null
                            ? this.item!.name!
                            : "Lorem ipsum dolor sit amet,",
                        style: kTextStyleSmallPrimary,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Text(
                          this.item != null
                              ? this.item!.sellerName!
                              : "Lorem ipsum dolor sit amet,",
                          style: kTextStyleSmall,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        this.item != null
                            ? '\$ ${this.item!.price!}'
                            : "\$ 59.99",
                        style: kTextStyleRedBoldLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: this.width,
              height: this.height,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  this.item != null ? this.item!.image! : kDummyImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
