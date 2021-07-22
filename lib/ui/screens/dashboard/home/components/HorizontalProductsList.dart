import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

import 'ProductCard.dart';

class HorizontalProductsList extends StatelessWidget {
  final String title;

  HorizontalProductsList(this.title);

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
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductCard(180.0, 180.0);
              }),
        )
      ],
    );
  }
}
