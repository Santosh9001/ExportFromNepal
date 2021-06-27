import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final width;
  final height;

  ProductCard(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(right: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: this.width,
                height: this.height,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.network(
                    kDummyImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
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
        ));
  }
}
