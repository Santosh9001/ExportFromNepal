import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductCardSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(right: 8, bottom: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
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
              Text(
                "Gorkha Exim",
                style: kTextStyleSmall,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "\$ 59.99",
                style:  TextStyle(
                    fontSize: 14.0,
                    color: kColorRed,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ));
  }
}
