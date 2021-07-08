import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final width;
  final height;

  ProductCard(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: this.height - 80),
              width: this.width,
              height: this.height,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet,",
                        style: kTextStyleSmallPrimary,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Text(
                          "Gorkha Exim Pvt Ltd",
                          style: kTextStyleSmall,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "\$ 59.99",
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
                  kDummyImage,
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
