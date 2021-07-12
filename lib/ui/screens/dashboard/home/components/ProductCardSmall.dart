import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductCardSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 10),
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
