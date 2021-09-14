import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductCardSmall extends StatelessWidget {
  final Items items;

  ProductCardSmall(this.items);
  @override
  Widget build(BuildContext context) {
    var name = items.name;
    var price = items.finalPrice;
    var reseller = items.sellerName;
    var image = items.image;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details', arguments: {
          'exampleArgument': items.id
        });
      },
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "$name",
                          style: kTextStyleSmallPrimary,
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "$reseller",
                            style: kTextStyleSmall,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\$ $price",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: kColorRed,
                              fontWeight: FontWeight.bold),
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
                width: double.infinity,
                height: 85,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "$image",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
